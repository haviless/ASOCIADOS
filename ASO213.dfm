object FGenSobres: TFGenSobres
  Left = 657
  Top = 204
  BorderStyle = bsDialog
  Caption = 'Generaci'#243'n e impresi'#243'n de sobres'
  ClientHeight = 293
  ClientWidth = 411
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grbImprime: TGroupBox
    Left = 9
    Top = 110
    Width = 393
    Height = 173
    Caption = 'Secuencia / Imprime  '
    Enabled = False
    TabOrder = 1
    object Label5: TLabel
      Left = 233
      Top = 114
      Width = 55
      Height = 13
      Caption = 'Corr.Inicial :'
    end
    object Label6: TLabel
      Left = 235
      Top = 146
      Width = 50
      Height = 13
      Caption = 'Corr.Final :'
    end
    object Label4: TLabel
      Left = 234
      Top = 80
      Width = 57
      Height = 13
      Caption = 'Secuencia :'
    end
    object dbeFinal: TwwDBEdit
      Left = 291
      Top = 142
      Width = 50
      Height = 21
      Enabled = False
      Picture.PictureMask = '#####'
      Picture.AutoFill = False
      TabOrder = 1
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      UsePictureMask = False
      WantReturns = False
      WordWrap = False
    end
    object dbeInicial: TwwDBEdit
      Left = 291
      Top = 108
      Width = 50
      Height = 21
      Enabled = False
      Picture.PictureMask = '#####'
      Picture.AutoFill = False
      TabOrder = 0
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      UsePictureMask = False
      WantReturns = False
      WordWrap = False
    end
    object sbtnIprime: TfcShapeBtn
      Left = 348
      Top = 124
      Width = 40
      Height = 33
      Hint = 'Imprimir'
      Color = clBtnFace
      DitherColor = clWhite
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnIprimeClick
    end
    object spbtnArriva: TfcShapeBtn
      Left = 347
      Top = 83
      Width = 41
      Height = 33
      Hint = 'Arriba'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        333333777777777F33333330B00000003333337F7777777F3333333000000000
        333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
        333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
        03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
        03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
        3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
        333333333377F7F33333333333330F03333333333337F7F33333333333330B03
        3333333333373733333333333333303333333333333373333333}
      NumGlyphs = 2
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 3
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = spbtnArrivaClick
    end
    object grbFiltra: TGroupBox
      Left = 232
      Top = 0
      Width = 161
      Height = 68
      Enabled = False
      TabOrder = 4
      object Label3: TLabel
        Left = 8
        Top = 13
        Width = 39
        Height = 13
        Caption = 'Oficina :'
      end
      object dblOficina2: TwwDBLookupCombo
        Left = 52
        Top = 10
        Width = 39
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'OFDESID'#9'3'#9'OFDESID'#9'F'
          'OFDESNOM'#9'30'#9'OFDESNOM'#9'F')
        LookupTable = DM1.cdsOficina
        LookupField = 'OFDESID'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblOficina2Change
        OnExit = dblOficina2Exit
      end
      object edtOficina1: TEdit
        Left = 52
        Top = 40
        Width = 106
        Height = 21
        Enabled = False
        TabOrder = 1
      end
    end
    object edtSecuen: TEdit
      Left = 291
      Top = 77
      Width = 50
      Height = 21
      Enabled = False
      TabOrder = 5
      OnExit = edtSecuenExit
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 347
      Top = 10
      Width = 40
      Height = 28
      Hint = 'Seleccionar'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 6
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object dbgSecuencia: TDBGrid
      Left = 8
      Top = 16
      Width = 220
      Height = 145
      DataSource = DM1.dsDbgCPass
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawDataCell = DBGrid1DrawDataCell
      OnDblClick = DBGrid1DblClick
    end
  end
  object grbGenera: TGroupBox
    Left = 8
    Top = 9
    Width = 394
    Height = 97
    Caption = 'Generaci'#243'n de Sobres  '
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 39
      Height = 13
      Caption = 'Oficina :'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 145
      Height = 13
      Caption = 'Cantidad de sobres a generar :'
    end
    object dblOficina: TwwDBLookupCombo
      Left = 75
      Top = 26
      Width = 39
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'OFDESID'#9'3'#9'OFDESID'#9'F'
        'OFDESNOM'#9'30'#9'OFDESNOM'#9'F')
      LookupTable = DM1.cdsOficina
      LookupField = 'OFDESID'
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblOficinaChange
      OnExit = dblOficinaExit
    end
    object edtOficina: TEdit
      Left = 129
      Top = 26
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object sbtnGenera: TfcShapeBtn
      Left = 319
      Top = 16
      Width = 39
      Height = 30
      Hint = 'Generar'
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
        77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
        FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
        07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
        77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
        0733333773FF33F773333333707EE707333333333773F7733333333333700733
        3333333333377333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnGeneraClick
    end
    object sbtnAbajo: TfcShapeBtn
      Left = 319
      Top = 56
      Width = 39
      Height = 30
      Hint = 'Abajo'
      Color = clBtnFace
      DitherColor = clWhite
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
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 3
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnAbajoClick
    end
    object dbeNumSobres: TSpinEdit
      Left = 194
      Top = 62
      Width = 57
      Height = 23
      EditorEnabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxValue = 20
      MinValue = 5
      ParentFont = False
      TabOrder = 4
      Value = 5
    end
  end
  object ppBDE1: TppBDEPipeline
    DataSource = DM1.dsPass3
    UserName = 'BDE1'
    Left = 273
    Top = 33
  end
  object pprSobre: TppReport
    AutoStop = False
    DataPipeline = ppBDE1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 105918
    PrinterSetup.mmPaperWidth = 150071
    PrinterSetup.PaperSize = 256
    Template.FileName = 'D:\campana_ora\cliente\sobre.rtm'
    Template.Format = ftASCII
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 273
    Top = 65
    Version = '7.02'
    mmColumnWidth = 137371
    DataPipelineName = 'ppBDE1'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 105156
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ID_PASSWOR'
        DataPipeline = ppBDE1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 9790
        mmLeft = 42333
        mmTop = 10583
        mmWidth = 44979
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PASSWORD'
        DataPipeline = ppBDE1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDE1'
        mmHeight = 9790
        mmLeft = 42333
        mmTop = 40746
        mmWidth = 44979
        BandType = 4
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
