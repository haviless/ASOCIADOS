object fCronoPag: TfCronoPag
  Left = 137
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cronograma De Pagos'
  ClientHeight = 526
  ClientWidth = 794
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gBPagos: TGroupBox
    Left = 3
    Top = 147
    Width = 788
    Height = 377
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    object dtgPagos: TwwDBGrid
      Left = 6
      Top = 15
      Width = 778
      Height = 290
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'CRECUOTA'#9'6'#9'N'#176' Cuota'#9#9
        'CREFVEN'#9'10'#9'Fec.Vencimto'#9#9
        'CREMTO'#9'12'#9'Cuota a Pagar'#9#9
        'CRECAPITAL'#9'11'#9'Amortizaci'#243'n'#9#9
        'CREMTOINT'#9'11'#9'Interes'#9#9
        'CREMTOFLAT'#9'11'#9'Gastos / Flat'#9#9
        'MONCOBDESGRAV'#9'11'#9'Fdo.Prot /Desgrav'#9#9
        'CREMTOCOB'#9'12'#9'Cuota Pagada'#9#9
        'CREESTADO'#9'22'#9'Estado'#9'F'#9
        'FLAGVAR'#9'1'#9'Marcar'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCuotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dtgPagosDrawDataCell
    end
    object BitSalir: TBitBtn
      Left = 693
      Top = 339
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 1
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
    object GroupBox2: TGroupBox
      Left = 523
      Top = 330
      Width = 155
      Height = 42
      TabOrder = 2
      object BitPrint: TBitBtn
        Left = 70
        Top = 10
        Width = 80
        Height = 27
        Cursor = crHandPoint
        Hint = 'Imprimir'
        Caption = 'Imprimir'
        TabOrder = 0
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
      object ChkFoto: TCheckBox
        Left = 3
        Top = 16
        Width = 65
        Height = 17
        Caption = 'Con Foto'
        TabOrder = 1
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = -3
    Width = 787
    Height = 149
    Color = 13165023
    ParentColor = False
    TabOrder = 1
    object lblEstado: TLabel
      Left = 411
      Top = 113
      Width = 275
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'AMPLIACION/REDUCCION'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 8
      Top = 11
      Width = 773
      Height = 95
      BevelOuter = bvNone
      Color = 13165023
      Enabled = False
      TabOrder = 0
      object TLabel
        Left = 102
        Top = 14
        Width = 28
        Height = 13
        Caption = 'Use  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 566
        Top = 20
        Width = 77
        Height = 13
        Caption = 'Desembolso :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TLabel
        Left = 567
        Top = 5
        Width = 54
        Height = 13
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 32
        Width = 36
        Height = 13
        Caption = 'Codigo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 6
        Top = 48
        Width = 59
        Height = 13
        Caption = 'Modular      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 202
        Top = 44
        Width = 57
        Height = 13
        Caption = 'Nombres    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 79
        Width = 59
        Height = 13
        Caption = 'F.Otorgado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 202
        Top = 79
        Width = 57
        Height = 13
        Caption = 'N'#176'  Prest.   :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 447
        Top = 79
        Width = 30
        Height = 13
        Caption = 'Tipo  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EdtDesUse: TEdit
        Left = 144
        Top = 7
        Width = 402
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtFecDes: TEdit
        Left = 653
        Top = 8
        Width = 112
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtCodMod: TEdit
        Left = 71
        Top = 41
        Width = 112
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdtNomGen: TEdit
        Left = 268
        Top = 39
        Width = 497
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtFecPre: TEdit
        Left = 71
        Top = 68
        Width = 112
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdtCreDid: TEdit
        Left = 268
        Top = 68
        Width = 167
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdtDesTip: TEdit
        Left = 481
        Top = 68
        Width = 285
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
    object Panel2: TPanel
      Left = 9
      Top = 113
      Width = 402
      Height = 33
      BevelOuter = bvNone
      Color = 13165023
      Enabled = False
      TabOrder = 1
      object TLabel
        Left = 6
        Top = 14
        Width = 57
        Height = 13
        Caption = 'Monto        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 198
        Top = 13
        Width = 59
        Height = 13
        Caption = 'Nro.Cuotas :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 319
        Top = 14
        Width = 30
        Height = 13
        Caption = 'Mon. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EdtMonto: TEdit
        Left = 69
        Top = 3
        Width = 112
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtNumCuo: TEdit
        Left = 268
        Top = 3
        Width = 38
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtMoneda: TEdit
        Left = 355
        Top = 2
        Width = 42
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object ppDBEstCta: TppDBPipeline
    DataSource = DM1.dsAsoX
    UserName = 'DBPipEstCta'
    Left = 718
    Top = 352
  end
  object DbOfides: TppDBPipeline
    DataSource = DM1.dsProvin
    UserName = 'DbOfides'
    Left = 40
    Top = 448
  end
  object RepOfides: TppReport
    AutoStop = False
    DataPipeline = DbOfides
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 72
    Top = 448
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbOfides'
    object ppHeaderBand29: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43921
      mmPrintPosition = 0
      object lblPerEnc: TppLabel
        UserName = 'lblPerEnc'
        AutoSize = False
        Caption = 'DETALLE HISTORICO DE ENCUESTAS A NIVEL NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel599: TppLabel
        UserName = 'Label599'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel600: TppLabel
        UserName = 'Label600'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 42714
        BandType = 0
      end
      object ppLabel601: TppLabel
        UserName = 'Label5701'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel602: TppLabel
        UserName = 'Label1'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel603: TppLabel
        UserName = 'Label603'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable56: TppSystemVariable
        UserName = 'SystemVariable56'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable57: TppSystemVariable
        UserName = 'SystemVariable57'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable58: TppSystemVariable
        UserName = 'SystemVariable58'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel604: TppLabel
        UserName = 'Label604'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel605: TppLabel
        UserName = 'Label605'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel606: TppLabel
        UserName = 'Label606'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppDBText251: TppDBText
        UserName = 'DBText251'
        DataField = 'ASOCODMOD'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 33602
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText252: TppDBText
        UserName = 'DBText252'
        DataField = 'ASOAPENOM'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 37571
        mmWidth = 86519
        BandType = 0
      end
      object lblUse: TppLabel
        UserName = 'lblUse'
        AutoSize = False
        Caption = 'lblUse'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 25400
        mmWidth = 130175
        BandType = 0
      end
      object lblProc: TppLabel
        UserName = 'lblUse3'
        AutoSize = False
        Caption = 'lblProc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 29633
        mmWidth = 130175
        BandType = 0
      end
      object lblTipAso: TppLabel
        UserName = 'lblUse4'
        AutoSize = False
        Caption = 'lblTipAso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 105040
        mmTop = 33602
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3260
        mmLeft = 3704
        mmTop = 25400
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'Procesado En'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3703
        mmTop = 29633
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label601'
        AutoSize = False
        Caption = 'Cod.Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3703
        mmTop = 33602
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Caption = 'Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3703
        mmTop = 37572
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Caption = 'Tipo De Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 76465
        mmTop = 33602
        mmWidth = 23283
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 1058
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197909
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 25929
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 29898
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 33602
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 37571
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 100542
        mmTop = 33602
        mmWidth = 3440
        BandType = 0
      end
    end
    object ppDetailBand31: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 43127
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 31750
        mmLeft = 0
        mmTop = 10583
        mmWidth = 198438
        BandType = 4
      end
      object ppDBText253: TppDBText
        UserName = 'DBText253'
        DataField = 'DESCRIPCION01'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 8202
        mmTop = 17463
        mmWidth = 89429
        BandType = 4
      end
      object ppDBText254: TppDBText
        UserName = 'DBText254'
        DataField = 'DESCRIPCION02'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 8731
        mmTop = 27517
        mmWidth = 89694
        BandType = 4
      end
      object ppDBText255: TppDBText
        UserName = 'DBText255'
        DataField = 'DESCRIPCION03'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 8996
        mmTop = 37042
        mmWidth = 99219
        BandType = 4
      end
      object ppDBText257: TppDBText
        UserName = 'DBText257'
        DataField = 'OTMET'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3683
        mmLeft = 110861
        mmTop = 17463
        mmWidth = 85461
        BandType = 4
      end
      object ppDBText258: TppDBText
        UserName = 'DBText258'
        DataField = 'OTJUS'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3683
        mmLeft = 110861
        mmTop = 27252
        mmWidth = 85725
        BandType = 4
      end
      object ppDBText259: TppDBText
        UserName = 'DBText259'
        DataField = 'OTOSOL'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 110861
        mmTop = 37042
        mmWidth = 85725
        BandType = 4
      end
      object ppLabel590: TppLabel
        UserName = 'Label590'
        Caption = #191'Por Que Medio Se Entero?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 12700
        mmWidth = 35729
        BandType = 4
      end
      object ppLabel591: TppLabel
        UserName = 'Label5901'
        Caption = #191'Cual Es La Justificaci'#243'n De Deudor?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 22490
        mmWidth = 47964
        BandType = 4
      end
      object ppLabel592: TppLabel
        UserName = 'Label5902'
        Caption = #191'Cual Es La Situaci'#243'n?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 32015
        mmWidth = 29676
        BandType = 4
      end
      object ppLabel593: TppLabel
        UserName = 'Label5903'
        AutoSize = False
        Caption = 'Encuestado Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText256: TppDBText
        UserName = 'DBText256'
        DataField = 'USUARIO'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 0
        mmTop = 5027
        mmWidth = 47890
        BandType = 4
      end
      object ppDBText249: TppDBText
        UserName = 'DBText249'
        DataField = 'HREG'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 55298
        mmTop = 5027
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText250: TppDBText
        UserName = 'DBText250'
        DataField = 'OFDESNOM'
        DataPipeline = DbOfides
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 109538
        mmTop = 5027
        mmWidth = 49477
        BandType = 4
      end
      object ppLabel594: TppLabel
        UserName = 'Label594'
        AutoSize = False
        Caption = 'Fecha y Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 55298
        mmTop = 529
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel595: TppLabel
        UserName = 'Label595'
        AutoSize = False
        Caption = 'Encuestado En'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 109273
        mmTop = 529
        mmWidth = 28046
        BandType = 4
      end
    end
    object ppFooterBand24: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand29: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 265
        mmWidth = 198438
        BandType = 7
      end
      object ppLabel610: TppLabel
        UserName = 'Label610'
        Caption = 'N'#176' De Encuestas Realizadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 57415
        mmTop = 1588
        mmWidth = 43656
        BandType = 7
      end
      object ppLabel613: TppLabel
        UserName = 'Label613'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 105304
        mmTop = 1588
        mmWidth = 3440
        BandType = 7
      end
      object ppDBCalc217: TppDBCalc
        UserName = 'DBCalc217'
        DataField = 'ASOID'
        DataPipeline = DbOfides
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbOfides'
        mmHeight = 3260
        mmLeft = 112713
        mmTop = 1588
        mmWidth = 27781
        BandType = 7
      end
    end
  end
  object ppREstCta: TppReport
    AutoStop = False
    DataPipeline = ppDBEstCta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\EstCta1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 654
    Top = 351
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstCta'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 67733
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 4498
        mmWidth = 19262
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 57944
        mmWidth = 201348
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 45932
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 0
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 4498
        mmWidth = 11853
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 0
        mmWidth = 14817
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'CRONOGRAMA DE PAGOS N'#176': 182008230000172    al: 15/06/2009'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 11906
        mmWidth = 168805
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 24077
        mmWidth = 25400
        BandType = 0
      end
      object ppLblCodMod: TppLabel
        UserName = 'LblCodMod'
        AutoSize = False
        Caption = '1033404695'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32279
        mmTop = 24077
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Tipo De Credito '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 32279
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Se'#241'or(a)           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 36513
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'N'#176' Credito         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 40746
        mmWidth = 26194
        BandType = 0
      end
      object pplblTipCre: TppLabel
        UserName = 'LblCodMod1'
        AutoSize = False
        Caption = '23-CONSUMO(ORDINARIO)    [NORMAL]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 32279
        mmWidth = 123296
        BandType = 0
      end
      object pplblNomGen: TppLabel
        UserName = 'lblNomGen'
        AutoSize = False
        Caption = 'PORTOCARRERO GRANDEZ JOSE HERIBERTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 36513
        mmWidth = 73554
        BandType = 0
      end
      object pplblNumPre: TppLabel
        UserName = 'lblNomGen1'
        AutoSize = False
        Caption = '182008230000172'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 40746
        mmWidth = 41540
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Fecha         '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 28046
        mmWidth = 23813
        BandType = 0
      end
      object pplblFecPre: TppLabel
        UserName = 'LblCodMod2'
        AutoSize = False
        Caption = '31/03/2008'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32279
        mmTop = 28046
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Use   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 56886
        mmTop = 27781
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'Monto (S/.)  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 39952
        mmWidth = 16404
        BandType = 0
      end
      object pplblUse: TppLabel
        UserName = 'lblUse'
        Caption = '0I - DRE AMAZONAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 74083
        mmTop = 27781
        mmWidth = 27601
        BandType = 0
      end
      object pplblMonto: TppLabel
        UserName = 'lblUse1'
        Caption = '3,700.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 122502
        mmTop = 39952
        mmWidth = 11007
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'Nro Cuotas     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 43921
        mmWidth = 25665
        BandType = 0
      end
      object pplblNumCuo: TppLabel
        UserName = 'lblNumCuo'
        AutoSize = False
        Caption = '48'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'Situaci'#243'n Actual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 50800
        mmWidth = 25929
        BandType = 0
      end
      object pplblTipCli: TppLabel
        UserName = 'lblUse2'
        AutoSize = False
        Caption = 'CE - CESANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122238
        mmTop = 50800
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 28046
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 32279
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 36513
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 40746
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 24077
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 50800
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 39952
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 71438
        mmTop = 27781
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 43921
        mmWidth = 1323
        BandType = 0
      end
      object ppShpImg: TppShape
        UserName = 'ShpImg'
        Visible = False
        mmHeight = 28046
        mmLeft = 170921
        mmTop = 19844
        mmWidth = 30163
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Visible = False
        mmHeight = 24871
        mmLeft = 171715
        mmTop = 21431
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 45244
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'Gastos/Flat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 49477
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 45244
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 49477
        mmWidth = 1323
        BandType = 0
      end
      object ppLblInt: TppLabel
        UserName = 'LblInt'
        AutoSize = False
        Caption = '1.85'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 45244
        mmWidth = 16933
        BandType = 0
      end
      object ppLblFlat: TppLabel
        UserName = 'LblFlat'
        AutoSize = False
        Caption = '4.36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 49477
        mmWidth = 16933
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 67204
        mmWidth = 201348
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 4498
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 0
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 53711
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 53446
        mmWidth = 1323
        BandType = 0
      end
      object ppLblCuenta: TppLabel
        UserName = 'LblFlat1'
        AutoSize = False
        Caption = '4261308873 - [A]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 32015
        mmTop = 53446
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'O.Otorg.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 56886
        mmTop = 24077
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 71438
        mmTop = 24077
        mmWidth = 1323
        BandType = 0
      end
      object ppLblOriOto: TppLabel
        UserName = 'LblCodMod3'
        AutoSize = False
        Caption = '18 -  AMAZONAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 74348
        mmTop = 23813
        mmWidth = 80433
        BandType = 0
      end
      object pplblRotulo: TppLabel
        UserName = 'lblRotulo'
        AutoSize = False
        Caption = 'Desembolsado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 54240
        mmWidth = 25135
        BandType = 0
      end
      object pplblRot02: TppLabel
        UserName = 'lblRot02'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 54240
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTipDes: TppLabel
        UserName = 'LblTipDes'
        AutoSize = False
        Caption = '16-CHE.GER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122238
        mmTop = 54240
        mmWidth = 38365
        BandType = 0
      end
      object ppLblEstado: TppLabel
        UserName = 'LblTitulo1'
        AutoSize = False
        Caption = 'CANCELADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 99748
        mmTop = 16933
        mmWidth = 55298
        BandType = 0
      end
      object ppLblCuotas: TppLabel
        UserName = 'LblCuotas'
        AutoSize = False
        Caption = '( (0)-Cuotas Por Pagar )'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 43921
        mmWidth = 37306
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Caption = '(EN NUEVOS SOLES)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 49477
        mmTop = 16933
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 59002
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Cuo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 62706
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 10319
        mmTop = 59002
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Vencimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 10319
        mmTop = 62706
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 58738
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'a Pagar (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 62706
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Amort.(S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 55827
        mmTop = 62971
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Interes (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 74613
        mmTop = 62971
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Gastos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 59002
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = '+ Flat (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 62706
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 58738
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Pagada (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 127794
        mmTop = 62442
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 168011
        mmTop = 62442
        mmWidth = 16934
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Excesos (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 147638
        mmTop = 62706
        mmWidth = 18255
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 49742
        mmTop = 49477
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label202'
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 49742
        mmTop = 45244
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        AutoSize = False
        Caption = 'Situaci'#243'n Otorgamiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 47361
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 47361
        mmWidth = 1323
        BandType = 0
      end
      object pplblTipCliOtorg: TppLabel
        UserName = 'lblTipCliOtorg'
        AutoSize = False
        Caption = 'DO - ASOCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122238
        mmTop = 47361
        mmWidth = 30163
        BandType = 0
      end
      object ppLblDesg: TppLabel
        UserName = 'LblFlat2'
        AutoSize = False
        Caption = '0.190'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 72761
        mmTop = 49477
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 49477
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        AutoSize = False
        Caption = 'Fon.Desg.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 56356
        mmTop = 49213
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 70908
        mmTop = 49477
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Caption = 'Fondo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 59267
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Caption = 'Desg, (S/.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 93663
        mmTop = 62971
        mmWidth = 14817
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CRECUOTA'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CREFVEN'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 11113
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'CREMTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 39889
        mmTop = 0
        mmWidth = 12234
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'AMORT'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 62706
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'INTER'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 83344
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'GASTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 115094
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 126619
        mmTop = 0
        mmWidth = 18373
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREESTADO'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 168011
        mmTop = 0
        mmWidth = 31222
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'CREMTOEXC'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 147902
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'REPRO'
        DataPipeline = ppDBEstCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 28310
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'FONDES'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3260
        mmLeft = 96573
        mmTop = 0
        mmWidth = 11811
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 106098
        mmTop = 21696
        mmWidth = 46302
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 201348
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'TOTALES  : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 10053
        mmTop = 794
        mmWidth = 16171
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'CREMTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 794
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'AMORT'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 59796
        mmTop = 794
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'INTER'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 81227
        mmTop = 794
        mmWidth = 10583
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        AutoSize = True
        DataField = 'GASTO'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 794
        mmWidth = 9260
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 128588
        mmTop = 794
        mmWidth = 16404
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 5027
        mmWidth = 201348
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 10319
        mmWidth = 201348
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'SALDO DE DEUDA TOTAL           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 6085
        mmWidth = 43857
        BandType = 7
      end
      object lblSalTot: TppLabel
        UserName = 'lblSalTot'
        AutoSize = False
        Caption = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 110861
        mmTop = 5821
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'SALDO DE CUOTAS VENCIDAS   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 11113
        mmWidth = 44704
        BandType = 7
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        Caption = 'SALDO DE CUOTAS PENDIENTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 18785
        mmWidth = 45932
        BandType = 7
      end
      object ppLblCuoVen: TppLabel
        UserName = 'lblSalTot1'
        AutoSize = False
        Caption = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111390
        mmTop = 10848
        mmWidth = 20638
        BandType = 7
      end
      object pplblCuoPen: TppLabel
        UserName = 'lblSalTot2'
        AutoSize = False
        Caption = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111125
        mmTop = 17992
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'MONTO A  PAGAR               '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 22754
        mmWidth = 36830
        BandType = 7
      end
      object pplblMonPag: TppLabel
        UserName = 'lblMonPag'
        AutoSize = False
        Caption = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111125
        mmTop = 22754
        mmWidth = 20902
        BandType = 7
      end
      object ppLNota1: TppLabel
        UserName = 'LNota1'
        AutoSize = False
        Caption = 
          '- EN PROCESO DE COBRANZA, SIGNIFICA QUE LA CUOTA SERA DESCONTADA' +
          '  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 30163
        mmTop = 26458
        mmWidth = 139171
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 43921
        mmWidth = 201348
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 18785
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 22754
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 14817
        mmWidth = 1323
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 6085
        mmWidth = 1323
        BandType = 7
      end
      object ppLblUser: TppLabel
        UserName = 'LblUser'
        AutoSize = False
        Caption = 'Impreso por   : Jorge Carbonel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 44979
        mmWidth = 89165
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        AutoSize = True
        DataField = 'CREMTOEXC'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 153194
        mmTop = 794
        mmWidth = 12700
        BandType = 7
      end
      object ppLblApro: TppLabel
        UserName = 'LblUser1'
        AutoSize = False
        Caption = 'Otorgado por  : Mary Cruz Vasquez'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 7144
        mmTop = 44979
        mmWidth = 89165
        BandType = 7
      end
      object ppLNota2: TppLabel
        UserName = 'LNota2'
        AutoSize = False
        Caption = 'POR "PLANILLA DE HABERES"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 34131
        mmTop = 30692
        mmWidth = 120386
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = 
          'EN CASO NO FUERA ASI DEBERA SER CANCELADA DIRECTAMENTE POR EL DO' +
          'CENTE.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 34131
        mmTop = 34925
        mmWidth = 156898
        BandType = 7
      end
      object lblVen: TppLabel
        UserName = 'lblVen'
        AutoSize = False
        Caption = '(0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 10848
        mmWidth = 11906
        BandType = 7
      end
      object lblPen: TppLabel
        UserName = 'lblVen1'
        AutoSize = False
        Caption = '(0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 17727
        mmWidth = 11906
        BandType = 7
      end
      object lblTot: TppLabel
        UserName = 'lblTot'
        AutoSize = False
        Caption = '(0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        AutoSize = False
        Caption = 'NOTA : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 12965
        mmTop = 26458
        mmWidth = 13758
        BandType = 7
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 22490
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 18785
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 14817
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 6085
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 
          '- (D) : CUOTAS DIFERIDAS, AL SER PAGADAS SE APLICARA LOS INTERES' +
          'ES RESPECTIVOS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 30163
        mmTop = 39423
        mmWidth = 156898
        BandType = 7
      end
      object ppLabel57: TppLabel
        UserName = 'Label302'
        Caption = 'SALDO DE CUOTAS DIFERIDAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 37835
        mmTop = 15081
        mmWidth = 42926
        BandType = 7
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Caption = 'S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 96309
        mmTop = 11113
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 103188
        mmTop = 11113
        mmWidth = 1323
        BandType = 7
      end
      object ppLblCuoDif: TppLabel
        UserName = 'LblCuoDif'
        AutoSize = False
        Caption = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 111390
        mmTop = 14288
        mmWidth = 20638
        BandType = 7
      end
      object lblDif: TppLabel
        UserName = 'lblVen2'
        AutoSize = False
        Caption = '(0)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 134673
        mmTop = 14288
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        AutoSize = True
        DataField = 'FONDES'
        DataPipeline = ppDBEstCta
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstCta'
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 794
        mmWidth = 11113
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 691
    Top = 411
  end
end
