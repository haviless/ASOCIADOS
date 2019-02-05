object fAutDesONP: TfAutDesONP
  Left = 232
  Top = 62
  Width = 963
  Height = 603
  Caption = 'Autorizaci'#243'n de Descuento ONP'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  DesignSize = (
    947
    565)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSalir: TBitBtn
    Left = 853
    Top = 532
    Width = 91
    Height = 27
    Cursor = crHandPoint
    Hint = 'Salir'
    Anchors = [akRight, akBottom]
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnSalirClick
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
    Spacing = 1
  end
  object gbAutDesONP: TGroupBox
    Left = 0
    Top = 0
    Width = 947
    Height = 525
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      947
      525)
    object Label1: TLabel
      Left = 748
      Top = 16
      Width = 79
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Buscar por DNI '
    end
    object dtgAutONP: TwwDBGrid
      Left = 5
      Top = 39
      Width = 931
      Height = 473
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASODNI'#9'10'#9'D.N.I.'
        'ASOTIPID'#9'4'#9'Tipo~Asociado'
        'ASOAPENOMDNI'#9'50'#9'Apellidos y Nombres(D.N.I.)'#9'F'
        'CODPENSION'#9'8'#9'C'#243'digo~Pensi'#243'n'
        'NUMAUTONP'#9'3'#9'N'#250'mero~Autorizaci'#243'n'
        'FECAUTONP'#9'10'#9'Fecha Autorizaci'#243'n'
        'USENOM'#9'40'#9'Ugel'
        'DPTODES'#9'15'#9'Departamento'
        'USUAUTONP'#9'15'#9'Usuario Aut. ONP'
        'OFDESNOM'#9'15'#9'Origen de Operaciones')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DM1.dsAutDesONP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgAutONPDblClick
      object dtgAutONPIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 30
        Height = 32
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
        OnClick = dtgAutONPIButtonClick
      end
    end
    object edtBuscar: TEdit
      Left = 834
      Top = 11
      Width = 101
      Height = 24
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      OnChange = edtBuscarChange
      OnKeyPress = edtBuscarKeyPress
    end
    object pnlActDesONP: TPanel
      Left = 288
      Top = 112
      Width = 393
      Height = 297
      Color = 14342874
      TabOrder = 2
      Visible = False
      object Shape1: TShape
        Left = 8
        Top = 35
        Width = 377
        Height = 30
      end
      object Label2: TLabel
        Left = 208
        Top = 44
        Width = 79
        Height = 13
        AutoSize = False
        Caption = 'Buscar por DNI '
        Color = clWhite
        ParentColor = False
      end
      object Shape2: TShape
        Left = 8
        Top = 69
        Width = 377
        Height = 185
        Brush.Color = clBtnFace
        Pen.Width = 2
      end
      object Shape3: TShape
        Left = 8
        Top = 6
        Width = 377
        Height = 24
        Pen.Width = 3
      end
      object Label3: TLabel
        Left = 25
        Top = 12
        Width = 345
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Registro del N'#250'mero de Autorizaci'#243'n ONP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 115
        Width = 33
        Height = 13
        AutoSize = False
        Caption = 'DNI :'
        Color = clBtnFace
        ParentColor = False
      end
      object Label5: TLabel
        Left = 144
        Top = 115
        Width = 101
        Height = 13
        AutoSize = False
        Caption = 'C'#243'digo de Pensi'#243'n :'
        Color = clBtnFace
        ParentColor = False
      end
      object Label6: TLabel
        Left = 82
        Top = 137
        Width = 101
        Height = 13
        AutoSize = False
        Caption = 'Apellidos y Nombres  '
        Color = clBtnFace
        ParentColor = False
      end
      object lblDNI: TLabel
        Left = 49
        Top = 115
        Width = 71
        Height = 13
        AutoSize = False
        Caption = '10113588'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblCodPension: TLabel
        Left = 256
        Top = 115
        Width = 71
        Height = 13
        AutoSize = False
        Caption = '10113588'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblApeNombres: TLabel
        Left = 82
        Top = 155
        Width = 295
        Height = 13
        AutoSize = False
        Caption = '10113588'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 138
        Width = 45
        Height = 13
        AutoSize = False
        Caption = 'Tip.Aso'
        Color = clBtnFace
        ParentColor = False
      end
      object lblTipAso: TLabel
        Left = 21
        Top = 156
        Width = 26
        Height = 13
        AutoSize = False
        Caption = 'DO'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape4: TShape
        Left = 205
        Top = 77
        Width = 99
        Height = 26
        Pen.Width = 2
      end
      object Label9: TLabel
        Left = 16
        Top = 80
        Width = 182
        Height = 13
        AutoSize = False
        Caption = 'N'#250'mero de Autorizaci'#243'n :  '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblNumAut: TLabel
        Left = 210
        Top = 80
        Width = 85
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Caption = '10113588'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 180
        Width = 45
        Height = 13
        AutoSize = False
        Caption = 'Ugel'
        Color = clBtnFace
        ParentColor = False
      end
      object Label10: TLabel
        Left = 16
        Top = 215
        Width = 79
        Height = 13
        AutoSize = False
        Caption = 'Departamento'
        Color = clBtnFace
        ParentColor = False
      end
      object lblUgel: TLabel
        Left = 16
        Top = 197
        Width = 296
        Height = 13
        AutoSize = False
        Caption = '10113588'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblDepartamento: TLabel
        Left = 16
        Top = 235
        Width = 296
        Height = 13
        AutoSize = False
        Caption = '10113588'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object edtDNI: TEdit
        Left = 296
        Top = 39
        Width = 76
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtDNIKeyPress
      end
      object BtnExit: TBitBtn
        Left = 309
        Top = 262
        Width = 76
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salir'
        Caption = '&Salir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnExitClick
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
        Spacing = 1
      end
      object BtnGrabar: TBitBtn
        Left = 220
        Top = 262
        Width = 76
        Height = 25
        Cursor = crHandPoint
        Hint = 'Grabar Cambios'
        Caption = '&Grabar'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnGrabarClick
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
        Spacing = 1
      end
    end
    object dtgData: TDBGrid
      Left = 80
      Top = 168
      Width = 113
      Height = 120
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
  object BtnImprimir: TBitBtn
    Left = 758
    Top = 533
    Width = 91
    Height = 27
    Cursor = crHandPoint
    Hint = 'Salir'
    Anchors = [akRight, akBottom]
    Caption = ' &Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnImprimirClick
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
    Spacing = 1
  end
  object btnExportar: TBitBtn
    Left = 662
    Top = 533
    Width = 91
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Exportar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnExportarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
    Spacing = 10
  end
  object ppCartaONP: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 1270
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 3810
    PrinterSetup.mmMarginTop = 254
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 152
    Top = 441
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand10: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand10: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 279401
      mmPrintPosition = 0
      object ppShape154: TppShape
        UserName = 'Shape154'
        mmHeight = 7144
        mmLeft = 49477
        mmTop = 36777
        mmWidth = 63236
        BandType = 4
      end
      object ppMemo9: TppMemo
        UserName = 'Memo3'
        Caption = 
          'HOJA RESUMEN'#13#10#13#10'Apellidos y Nombres  :'#13#10#13#10'D.N.I.'#9#9'    :'#13#10'N'#176' de C' +
          'r'#233'dito'#9'    :'#13#10'Fecha'#9#9'    :'#13#10'Monto Otorgado (S/.) :'#13#10'Plazo (meses' +
          ')'#9'    :'#13#10'Tipo de Cr'#233'dito'#9'    :'#13#10'Forma de Desembolso  :'#13#10'Tasa Efe' +
          'ctiva Anual  :'#13#10'Tasa de Gastos Admin.:'#13#10#13#10'-'#9'El desembolso en efe' +
          'ctivo deber'#225' cobrarse el  d'#237'a de la aprobaci'#243'n del cr'#233'dito. En c' +
          'aso contrario se proceder'#225' a su anulaci'#243'n.'#13#10'-'#9'El desembolso en c' +
          'heque de gerencia, cuenta de ahorros o giro bancario se efectuar' +
          #225' en las entidades autorizadas y en los plazos determinados por ' +
          'Derrama.'#13#10'-'#9'El cr'#233'dito otorgado generar'#225' un inter'#233's compensatori' +
          'o anual y, por '#250'nica vez, una comisi'#243'n por gastos administrativo' +
          's sobre el monto otorgado, distribuida entre las cuotas del cr'#233'd' +
          'ito.'#13#10'-'#9'El docente autoriza a Derrama a efectuar la cobranza de ' +
          'las cuotas fijadas en el calendario de pagos mediante descuento ' +
          'por planilla '#250'nica de remuneraciones.'#13#10'-'#9'En caso de no efectuars' +
          'e el cobro respectivo, el docente deber'#225' pagar la(s) cuota(s) ve' +
          'ncida(s) en las cajas de Derrama ubicadas en la Sede Central y e' +
          'n las oficinas a nivel nacional o a trav'#233's del Banco de Cr'#233'dito ' +
          '(Cuenta Recaudadora N'#186' 193-1405628-0-61,  indicando el N'#186' de DNI' +
          ' del titular).'#13#10'-'#9'En caso contrario, a partir de 2 cuotas vencid' +
          'as Derrama podr'#225' dar por vencidos todos los plazos y proceder al' +
          ' cobro del '#237'ntegro de lo adeudado, pudiendo disponer el llenado ' +
          'y la ejecuci'#243'n del pagar'#233' incompleto suscrito y entregado por el' +
          ' docente al momento de la firma del contrato de cr'#233'dito.'#13#10'-'#9'El d' +
          'ocente podr'#225' efectuar pagos anticipados de las cuotas del cr'#233'dit' +
          'o, los que se aplicar'#225'n primero a las '#250'ltimas cuotas en forma as' +
          'cendente, y/o podr'#225' solicitar la cancelaci'#243'n del saldo total ade' +
          'udado. En ambos casos se excluir'#225'n los intereses, pagando solame' +
          'nte el capital m'#225's el total de gastos administrativos.'#13#10'-'#9'En cas' +
          'o de desistimiento del cr'#233'dito, el docente deber'#225' comunicarlo po' +
          'r escrito a  Derrama en un plazo m'#225'ximo de 24 horas desde la fec' +
          'ha de aprobaci'#243'n del cr'#233'dito. Toda devoluci'#243'n luego de ocurrido ' +
          'el desembolso se considerar'#225' como pago anticipado, el que inclui' +
          'r'#225' el total de gastos administrativos.'#13#10'-'#9'Al pagar puntualmente ' +
          'sus cuotas estar'#225' cuidando su historial crediticio para el otorg' +
          'amiento de futuros cr'#233'ditos.'#13#10#13#10'Declaro conocer los t'#233'rminos y c' +
          'ondiciones del contrato y la hoja resumen arriba indicados.'#13#10#13#10#13 +
          #10#13#10#13#10' ____________________________'#13#10' Firma'#13#10' D.N.I.  ___________' +
          '_'#13#10
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Yo,                                                             ' +
            '                               en mi calidad de pensionista bajo' +
            ' el r'#233'gimen del Decreto Ley No. 19990 identificado con DNI No.  ' +
            '................  beneficiario  de   DERRAMA MAGISTERIAL,   auto' +
            'rizo   a  la  Oficina  de  Normalizaci'#243'n  Previsional-ONP  a  qu' +
            'e  realice descuentos sobre el  monto  de  mi  pensi'#243'n   habitua' +
            'l,  de  acuerdo  a  los  requerimientos  que efect'#250'a  DERRAMA MA' +
            'GISTERIAL y dentro de los l'#237'mites se'#241'alados por Ley.'
          ''
          
            'As'#237'  mismo,   acepto   que  cualquier  solicitud,  reclamo  o  i' +
            'nformaci'#243'n  sobre  mis descuentos los solicitar'#233' directamente a ' +
            'DERRAMA MAGISTERIAL y no a ONP.'
          ''
          ''
          'Atentamente;')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 96044
        mmLeft = 16933
        mmTop = 66146
        mmWidth = 164307
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel255: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'CARTA DE AUTORIZACION DE DESCUENTO A TRAV'#201'S DE ONP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 3440
        mmTop = 15610
        mmWidth = 194205
        BandType = 4
      end
      object lblAsoOnp: TppLabel
        UserName = 'lblNomGen'
        AutoSize = False
        Caption = 'A'#209'I ELIAS EUGENIO ENRIQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 25665
        mmTop = 66675
        mmWidth = 93134
        BandType = 4
      end
      object lblDniOnp: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = '08037809'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 70644
        mmWidth = 16669
        BandType = 4
      end
      object ppLabel280: TppLabel
        UserName = 'Label501'
        AutoSize = False
        Caption = 'FIRMA Y HUELLA DIGITAL______________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 23813
        mmTop = 187061
        mmWidth = 111125
        BandType = 4
      end
      object ppLabel273: TppLabel
        UserName = 'lblNumCre1'
        AutoSize = False
        Caption = 'N'#250'mero de Autorizaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 52652
        mmTop = 39158
        mmWidth = 55827
        BandType = 4
      end
      object ppLabel279: TppLabel
        UserName = 'Label279'
        AutoSize = False
        Caption = 'SEG'#218'N CONVENIO '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4826
        mmLeft = 3440
        mmTop = 21431
        mmWidth = 194205
        BandType = 4
      end
      object ppShape155: TppShape
        UserName = 'Shape155'
        mmHeight = 7144
        mmLeft = 49477
        mmTop = 43656
        mmWidth = 63236
        BandType = 4
      end
      object ppShape156: TppShape
        UserName = 'Shape156'
        mmHeight = 7144
        mmLeft = 49477
        mmTop = 50536
        mmWidth = 63236
        BandType = 4
      end
      object ppShape157: TppShape
        UserName = 'Shape157'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 36777
        mmWidth = 63236
        BandType = 4
      end
      object ppShape158: TppShape
        UserName = 'Shape158'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 43656
        mmWidth = 63236
        BandType = 4
      end
      object ppShape159: TppShape
        UserName = 'Shape159'
        mmHeight = 7144
        mmLeft = 112448
        mmTop = 50536
        mmWidth = 63236
        BandType = 4
      end
      object ppLabel286: TppLabel
        UserName = 'Label286'
        AutoSize = False
        Caption = 'Fecha de Autorizaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 45508
        mmWidth = 55827
        BandType = 4
      end
      object ppLabel287: TppLabel
        UserName = 'Label287'
        AutoSize = False
        Caption = 'C'#243'digo de Pensionista :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 51858
        mmWidth = 55827
        BandType = 4
      end
      object ppShape160: TppShape
        UserName = 'Shape160'
        mmHeight = 29898
        mmLeft = 137848
        mmTop = 164307
        mmWidth = 27252
        BandType = 4
      end
      object lblNumCarOnp: TppLabel
        UserName = 'lblNumCarOnp'
        AutoSize = False
        Caption = '000017'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 38894
        mmWidth = 55827
        BandType = 4
      end
      object lblFecCarOnp: TppLabel
        UserName = 'lblFecCarOnp'
        AutoSize = False
        Caption = '18/07/2013'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 45773
        mmWidth = 55827
        BandType = 4
      end
      object lblCodPenOnp: TppLabel
        UserName = 'lblCodPenOnp'
        AutoSize = False
        Caption = 'C463919'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115359
        mmTop = 51858
        mmWidth = 55827
        BandType = 4
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
