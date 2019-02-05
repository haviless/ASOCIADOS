object fMstCre: TfMstCre
  Left = 190
  Top = 221
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Evaluaci'#243'n del Cliente'
  ClientHeight = 170
  ClientWidth = 677
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = -1
    Width = 669
    Height = 170
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 554
      Top = 120
      Width = 103
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 0
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
    object pnlDatos: TPanel
      Left = 8
      Top = 13
      Width = 409
      Height = 73
      TabOrder = 1
      object TLabel
        Left = 6
        Top = 5
        Width = 40
        Height = 15
        Caption = 'Ingreso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 6
        Top = 20
        Width = 65
        Height = 15
        Caption = 'Neto Planilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 114
        Top = 6
        Width = 29
        Height = 15
        Caption = 'Otros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 114
        Top = 20
        Width = 58
        Height = 15
        Caption = 'Descuentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 228
        Top = 29
        Width = 40
        Height = 15
        Caption = 'Ingreso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 228
        Top = 44
        Width = 63
        Height = 15
        Caption = 'Para Calculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeIngPla: TwwDBEdit
        Left = 5
        Top = 37
        Width = 102
        Height = 27
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeIngPlaExit
        OnKeyPress = dbeIngPlaKeyPress
      end
      object dbeDesNac: TwwDBEdit
        Left = 113
        Top = 37
        Width = 104
        Height = 27
        BorderStyle = bsNone
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeDesNacExit
        OnKeyPress = dbeDesNacKeyPress
      end
      object GroupBox4: TGroupBox
        Left = 295
        Top = 22
        Width = 110
        Height = 42
        Enabled = False
        TabOrder = 2
        object dbeMonCal: TwwDBEdit
          Left = 5
          Top = 12
          Width = 100
          Height = 27
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object Panel1: TPanel
      Left = 424
      Top = 42
      Width = 197
      Height = 42
      TabOrder = 2
      object TLabel
        Left = 4
        Top = 21
        Width = 88
        Height = 15
        Caption = 'Disponible (42%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 4
        Top = 6
        Width = 53
        Height = 15
        Caption = 'Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 98
        Top = 1
        Width = 95
        Height = 38
        Enabled = False
        TabOrder = 0
        object dbeMonDisp: TwwDBEdit
          Left = 4
          Top = 9
          Width = 87
          Height = 27
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          UnboundAlignment = taRightJustify
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object bitGrabar: TBitBtn
      Left = 628
      Top = 56
      Width = 33
      Height = 27
      TabOrder = 3
      OnClick = bitGrabarClick
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
    object Panel2: TPanel
      Left = 297
      Top = 101
      Width = 243
      Height = 61
      TabOrder = 4
      object rdbPcal: TRadioButton
        Left = 3
        Top = 22
        Width = 124
        Height = 17
        Caption = 'PRE-CALIFICADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object rdbRech: TRadioButton
        Left = 4
        Top = 41
        Width = 124
        Height = 17
        Caption = 'RECHAZADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object BtnImprime: TBitBtn
        Left = 132
        Top = 19
        Width = 103
        Height = 27
        Cursor = crHandPoint
        Hint = 'Imprimir'
        Caption = '&Imprimir'
        TabOrder = 2
        OnClick = BtnImprimeClick
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
      object rdbNoeval: TRadioButton
        Left = 3
        Top = 3
        Width = 124
        Height = 17
        Caption = 'NO EVALUADO'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
    end
  end
  object ppBDEPInfCre: TppBDEPipeline
    DataSource = DM1.dsAso
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'BDEPInfCre'
    Left = 599
    Top = 8
  end
  object ppInfCre: TppReport
    AutoStop = False
    DataPipeline = ppBDEPInfCre
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\KIKO.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 56
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 481
    Top = 36
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPInfCre'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 114036
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Style = bsClear
        Pen.Width = 2
        mmHeight = 19844
        mmLeft = 10320
        mmTop = 82550
        mmWidth = 174625
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Style = bsClear
        Pen.Width = 2
        mmHeight = 59531
        mmLeft = 10320
        mmTop = 22225
        mmWidth = 174625
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 11642
        mmLeft = 153459
        mmTop = 55033
        mmWidth = 30163
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 27517
        mmLeft = 153459
        mmTop = 27781
        mmWidth = 30163
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 24871
        mmLeft = 154252
        mmTop = 28840
        mmWidth = 28575
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 10054
        mmLeft = 154252
        mmTop = 55827
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'EVALUACION DEL CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 8202
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Datos de Identificaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15080
        mmTop = 23283
        mmWidth = 38523
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'DNI. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 27517
        mmWidth = 7239
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = '1.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 23283
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Nombres y Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 35454
        mmWidth = 31496
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'N'#186' Cuenta BN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 43392
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Resoluci'#243'n y Fecha de Nombramiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 47361
        mmWidth = 57785
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 35454
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 43127
        mmWidth = 1058
        BandType = 0
      end
      object ppDBASODNI: TppDBText
        UserName = 'DBASODNI'
        DataField = 'ASODNI'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 75141
        mmTop = 27517
        mmWidth = 19050
        BandType = 0
      end
      object ppDBASOAPENOM: TppDBText
        UserName = 'DBASOAPENOM'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 75141
        mmTop = 35454
        mmWidth = 77523
        BandType = 0
      end
      object ppDBASORESNOM: TppDBText
        UserName = 'DBASORESNOM'
        DataField = 'ASORESNOM'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 47361
        mmWidth = 21430
        BandType = 0
      end
      object ppDBASOFRESNOM: TppDBText
        UserName = 'DBASOFRESNOM'
        DataField = 'ASOFRESNOM'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 100013
        mmTop = 47361
        mmWidth = 20638
        BandType = 0
      end
      object ppDBASORESCESE: TppDBText
        UserName = 'DBASORESCESE'
        DataField = 'ASORESCESE'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 51329
        mmWidth = 21430
        BandType = 0
      end
      object ppDBASOFRESCESE: TppDBText
        UserName = 'DBASOFRESCESE'
        DataField = 'ASOFRESCESE'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 100013
        mmTop = 51329
        mmWidth = 20638
        BandType = 0
      end
      object lblAsotipdes: TppLabel
        UserName = 'lblAsotipdes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 104775
        mmTop = 27517
        mmWidth = 47890
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = '2.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 83608
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 15080
        mmTop = 83608
        mmWidth = 13166
        BandType = 0
      end
      object lblDes_1: TppLabel
        UserName = 'lblDes_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 88636
        mmWidth = 19315
        BandType = 0
      end
      object lblmonto_1: TppLabel
        UserName = 'lblmonto_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 45508
        mmTop = 88636
        mmWidth = 14023
        BandType = 0
      end
      object lblFor_1: TppLabel
        UserName = 'lblFor_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 60854
        mmTop = 88636
        mmWidth = 10583
        BandType = 0
      end
      object lblDes_2: TppLabel
        UserName = 'lblDes_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 92869
        mmWidth = 19315
        BandType = 0
      end
      object lblmonto_2: TppLabel
        UserName = 'lblmonto_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 45508
        mmTop = 92869
        mmWidth = 14023
        BandType = 0
      end
      object lblFor_2: TppLabel
        UserName = 'lblFor_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 60854
        mmTop = 92869
        mmWidth = 10583
        BandType = 0
      end
      object lblDes_3: TppLabel
        UserName = 'lblDes_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 83608
        mmTop = 88636
        mmWidth = 19315
        BandType = 0
      end
      object lblmonto_3: TppLabel
        UserName = 'lblmonto_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 88636
        mmWidth = 14023
        BandType = 0
      end
      object lblFor_3: TppLabel
        UserName = 'lblFor_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 119592
        mmTop = 88636
        mmWidth = 10583
        BandType = 0
      end
      object lblDes_4: TppLabel
        UserName = 'lblDes_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 83608
        mmTop = 92869
        mmWidth = 19315
        BandType = 0
      end
      object lblmonto_4: TppLabel
        UserName = 'Label22'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 92869
        mmWidth = 14023
        BandType = 0
      end
      object lblFor_4: TppLabel
        UserName = 'Label301'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 119592
        mmTop = 92869
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label23'
        Caption = 'Mes :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15080
        mmTop = 88636
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label24'
        Caption = 'Mes :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15080
        mmTop = 92869
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label25'
        Caption = 'Mes :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 88636
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label26'
        Caption = 'Mes :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 92869
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label201'
        Caption = '3.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 11113
        mmTop = 105040
        mmWidth = 2667
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Cr'#233'ditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 105040
        mmWidth = 12912
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label101'
        Caption = 'Codigo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15080
        mmTop = 31485
        mmWidth = 24342
        BandType = 0
      end
      object ppDBASOCODMOD: TppDBText
        UserName = 'DBASOCODMOD'
        DataField = 'ASOCODMOD'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 75141
        mmTop = 31485
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Unidad de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 55298
        mmWidth = 24088
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Unidad de Gestion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 15080
        mmTop = 59267
        mmWidth = 28152
        BandType = 0
      end
      object lblUPago: TppLabel
        UserName = 'lblUPago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 75142
        mmTop = 55298
        mmWidth = 77523
        BandType = 0
      end
      object lblUse: TppLabel
        UserName = 'lblUse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 75142
        mmTop = 59267
        mmWidth = 77523
        BandType = 0
      end
      object lblAsoncta: TppLabel
        UserName = 'lblAsoncta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 75142
        mmTop = 43127
        mmWidth = 25135
        BandType = 0
      end
      object lblRegPen: TppLabel
        UserName = 'lblRegPen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 47361
        mmWidth = 22489
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73289
        mmTop = 27517
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73289
        mmTop = 31485
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 47361
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 59267
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Resoluci'#243'n y fecha de Cese:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15080
        mmTop = 51329
        mmWidth = 43127
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 51329
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 55298
        mmWidth = 1058
        BandType = 0
      end
      object lbl0201: TppLabel
        UserName = 'lbl0201'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3683
        mmLeft = 15080
        mmTop = 97367
        mmWidth = 168529
        BandType = 0
      end
      object ppSRInfCre: TppSubReport
        UserName = 'SRInfCre'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppBDEPCre'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 109538
        mmWidth = 197379
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppBDEPCre
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDEPCre'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 19315
            mmPrintPosition = 0
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'CREFOTORG'
              DataPipeline = ppBDEPCre
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 162454
              mmTop = 0
              mmWidth = 16670
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText101'
              DataField = 'CRENUMCUO'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 46038
              mmTop = 3704
              mmWidth = 20109
              BandType = 4
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = 'Tipo de Credito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3387
              mmLeft = 15080
              mmTop = 0
              mmWidth = 20786
              BandType = 4
            end
            object ppLabel26: TppLabel
              UserName = 'Label1'
              Caption = 'Fecha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 139171
              mmTop = 0
              mmWidth = 8202
              BandType = 4
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              Caption = 'N'#186' Cuotas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 15080
              mmTop = 3703
              mmWidth = 13494
              BandType = 4
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'Fecha Inicio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 15080
              mmTop = 7408
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'CREFINIPAG'
              DataPipeline = ppBDEPCre
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 46038
              mmTop = 7673
              mmWidth = 20109
              BandType = 4
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'Fecha Final'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 87048
              mmTop = 7408
              mmWidth = 15621
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'CREFFINPAG'
              DataPipeline = ppBDEPCre
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 121974
              mmTop = 7408
              mmWidth = 16139
              BandType = 4
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              Caption = 'Saldo vencido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 15080
              mmTop = 11113
              mmWidth = 20902
              BandType = 4
            end
            object ppLabel31: TppLabel
              UserName = 'Label302'
              Caption = 'Saldo Pendiente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 15080
              mmTop = 14817
              mmWidth = 23813
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'DEUVEN'
              DataPipeline = ppBDEPCre
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 46038
              mmTop = 11377
              mmWidth = 20109
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'DEUPEN'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 46038
              mmTop = 15081
              mmWidth = 20109
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'DEUDATOT'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 121974
              mmTop = 3704
              mmWidth = 16139
              BandType = 4
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = 'N'#186' Cuotas Pendientes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 87048
              mmTop = 14817
              mmWidth = 32544
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'CUOPEN'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 121974
              mmTop = 14817
              mmWidth = 16139
              BandType = 4
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = 'Deuda Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 87048
              mmTop = 3703
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'TIPCREDES'
              DataPipeline = ppBDEPCre
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3387
              mmLeft = 41011
              mmTop = 0
              mmWidth = 44715
              BandType = 4
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 39159
              mmTop = 0
              mmWidth = 974
              BandType = 4
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44186
              mmTop = 7673
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel54: TppLabel
              UserName = 'Label54'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44186
              mmTop = 11377
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 120121
              mmTop = 3704
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel56: TppLabel
              UserName = 'Label56'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44186
              mmTop = 15081
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel57: TppLabel
              UserName = 'Label57'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 159543
              mmTop = 0
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel58: TppLabel
              UserName = 'Label58'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 120121
              mmTop = 7408
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel59: TppLabel
              UserName = 'Label59'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 120121
              mmTop = 14817
              mmWidth = 1058
              BandType = 4
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
              Caption = 'N'#186' Cuotas Vencidas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 87048
              mmTop = 11113
              mmWidth = 26723
              BandType = 4
            end
            object ppLabel61: TppLabel
              UserName = 'Label61'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 120121
              mmTop = 11113
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              DataField = 'CUOVEN'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 121974
              mmTop = 11113
              mmWidth = 16139
              BandType = 4
            end
            object ppLabel62: TppLabel
              UserName = 'Label62'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 44186
              mmTop = 3704
              mmWidth = 1058
              BandType = 4
            end
            object pplblsindeuda: TppLabel
              UserName = 'lblsindeuda'
              Caption = 'SIN DEUDA PENDIENTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              mmHeight = 4233
              mmLeft = 15080
              mmTop = 0
              mmWidth = 40217
              BandType = 4
            end
            object ppLabel104: TppLabel
              UserName = 'Label104'
              Caption = 'Monto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 87048
              mmTop = 0
              mmWidth = 10054
              BandType = 4
            end
            object ppLabel105: TppLabel
              UserName = 'Label105'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 120121
              mmTop = 0
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'CREMTOOTOR'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 121974
              mmTop = 0
              mmWidth = 16139
              BandType = 4
            end
            object ppLabel106: TppLabel
              UserName = 'Label106'
              Caption = 'Monto Cuota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 139172
              mmTop = 3703
              mmWidth = 19050
              BandType = 4
            end
            object ppLabel107: TppLabel
              UserName = 'Label107'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 159543
              mmTop = 3703
              mmWidth = 1058
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              DataField = 'CREMTO'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3175
              mmLeft = 162454
              mmTop = 3703
              mmWidth = 16670
              BandType = 4
            end
            object ppShape11: TppShape
              UserName = 'Shape11'
              Brush.Style = bsClear
              mmHeight = 20638
              mmLeft = 10320
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppShape12: TppShape
              UserName = 'Shape12'
              Brush.Style = bsClear
              mmHeight = 21431
              mmLeft = 184415
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 15080
              mmTop = 18785
              mmWidth = 164307
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 28575
            mmPrintPosition = 0
            object ppLabel45: TppLabel
              UserName = 'Label45'
              Caption = '4.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 11113
              mmTop = 6615
              mmWidth = 2667
              BandType = 7
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              Caption = 'Calificaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3810
              mmLeft = 15080
              mmTop = 6615
              mmWidth = 17907
              BandType = 7
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              Caption = 'Derrama Magisterial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 19315
              mmTop = 10848
              mmWidth = 30427
              BandType = 7
            end
            object lblRecCre: TppLabel
              UserName = 'lblRecCre'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3810
              mmLeft = 65617
              mmTop = 10848
              mmWidth = 10330
              BandType = 7
            end
            object lblInfRecCre: TppLabel
              UserName = 'lblInfRecCre'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3810
              mmLeft = 79375
              mmTop = 10848
              mmWidth = 64558
              BandType = 7
            end
            object lblMonRecCre: TppLabel
              UserName = 'lblRecCre1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              mmHeight = 3810
              mmLeft = 79375
              mmTop = 10848
              mmWidth = 18246
              BandType = 7
            end
            object lbl0301: TppLabel
              UserName = 'lbl0301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 15081
              mmTop = 0
              mmWidth = 101600
              BandType = 7
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Central de Riesgo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 19314
              mmTop = 15080
              mmWidth = 26988
              BandType = 7
            end
            object lblCalGen: TppLabel
              UserName = 'lblCalGen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3683
              mmLeft = 65617
              mmTop = 15080
              mmWidth = 10330
              BandType = 7
            end
            object ppLabel16: TppLabel
              UserName = 'Label102'
              Caption = 'Deuda por entidad:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 19314
              mmTop = 19315
              mmWidth = 28998
              BandType = 7
            end
            object sbDeuFin: TppSubReport
              UserName = 'sbDeuFin'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppBDEPDeuFin'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 23548
              mmWidth = 197379
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = ppBDEPDeuFin
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 297127
                PrinterSetup.mmPaperWidth = 210079
                PrinterSetup.PaperSize = 9
                Version = '7.02'
                mmColumnWidth = 0
                DataPipelineName = 'ppBDEPDeuFin'
                object ppDetailBand3: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3440
                  mmPrintPosition = 0
                  object ppDBText1: TppDBText
                    UserName = 'DBText1'
                    DataField = 'ENTIDAD'
                    DataPipeline = ppBDEPDeuFin
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'ppBDEPDeuFin'
                    mmHeight = 3439
                    mmLeft = 19314
                    mmTop = 0
                    mmWidth = 50006
                    BandType = 4
                  end
                  object ppDBText2: TppDBText
                    UserName = 'DBText2'
                    DataField = 'MONTO'
                    DataPipeline = ppBDEPDeuFin
                    DisplayFormat = '###,###.#0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppBDEPDeuFin'
                    mmHeight = 3439
                    mmLeft = 84402
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppShape7: TppShape
                    UserName = 'Shape7'
                    Brush.Style = bsClear
                    mmHeight = 3439
                    mmLeft = 10320
                    mmTop = 0
                    mmWidth = 265
                    BandType = 4
                  end
                  object ppShape24: TppShape
                    UserName = 'Shape24'
                    Brush.Style = bsClear
                    mmHeight = 3439
                    mmLeft = 184415
                    mmTop = 0
                    mmWidth = 265
                    BandType = 4
                  end
                end
                object ppSummaryBand2: TppSummaryBand
                  PrintHeight = phDynamic
                  mmBottomOffset = 0
                  mmHeight = 23019
                  mmPrintPosition = 0
                  object ppLabel17: TppLabel
                    UserName = 'Label17'
                    Caption = 'SBS'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 19314
                    mmTop = 795
                    mmWidth = 6519
                    BandType = 7
                  end
                  object ppLabel70: TppLabel
                    UserName = 'Label70'
                    Caption = 'NOR'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 53181
                    mmTop = 795
                    mmWidth = 7028
                    BandType = 7
                  end
                  object ppLabel71: TppLabel
                    UserName = 'Label701'
                    Caption = 'CPP'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 70908
                    mmTop = 795
                    mmWidth = 6520
                    BandType = 7
                  end
                  object ppLabel72: TppLabel
                    UserName = 'Label72'
                    Caption = 'DEF'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 88636
                    mmTop = 795
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppLabel73: TppLabel
                    UserName = 'Label73'
                    Caption = 'DUD'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 106627
                    mmTop = 795
                    mmWidth = 6858
                    BandType = 7
                  end
                  object ppLabel74: TppLabel
                    UserName = 'Label74'
                    Caption = 'PER'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 124354
                    mmTop = 795
                    mmWidth = 6520
                    BandType = 7
                  end
                  object ppLabel75: TppLabel
                    UserName = 'Label75'
                    Caption = 'MES ACTUAL'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 19314
                    mmTop = 5027
                    mmWidth = 20193
                    BandType = 7
                  end
                  object ppLabel76: TppLabel
                    UserName = 'Label76'
                    Caption = 'MES ANTERIOR'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 19314
                    mmTop = 13495
                    mmWidth = 24077
                    BandType = 7
                  end
                  object ppLabel77: TppLabel
                    UserName = 'Label77'
                    Caption = 'MES ANTERIOR - 1'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3810
                    mmLeft = 19314
                    mmTop = 9261
                    mmWidth = 28660
                    BandType = 7
                  end
                  object ppDBText4: TppDBText
                    UserName = 'DBText4'
                    DataField = 'CALNORULTMES'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 53181
                    mmTop = 5027
                    mmWidth = 7028
                    BandType = 7
                  end
                  object ppDBText5: TppDBText
                    UserName = 'DBText5'
                    DataField = 'CALCPPULTMES'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 70908
                    mmTop = 5027
                    mmWidth = 6520
                    BandType = 7
                  end
                  object ppDBText6: TppDBText
                    UserName = 'DBText6'
                    DataField = 'CALDEFULTMES'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 88636
                    mmTop = 5027
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppDBText7: TppDBText
                    UserName = 'DBText7'
                    DataField = 'CALDUDULTMES'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 106627
                    mmTop = 5027
                    mmWidth = 6858
                    BandType = 7
                  end
                  object ppDBText8: TppDBText
                    UserName = 'DBText8'
                    DataField = 'CALPERULTMES'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 124354
                    mmTop = 5027
                    mmWidth = 6520
                    BandType = 7
                  end
                  object ppDBText18: TppDBText
                    UserName = 'DBText18'
                    DataField = 'CALNORULTMESANT'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 53181
                    mmTop = 9261
                    mmWidth = 7144
                    BandType = 7
                  end
                  object ppDBText19: TppDBText
                    UserName = 'DBText19'
                    DataField = 'CALCPPULTMESANT'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 70908
                    mmTop = 9261
                    mmWidth = 6615
                    BandType = 7
                  end
                  object ppDBText20: TppDBText
                    UserName = 'DBText20'
                    DataField = 'CALDEFULTMESANT'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 88636
                    mmTop = 9261
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppDBText21: TppDBText
                    UserName = 'DBText21'
                    DataField = 'CALDUDULTMESANT'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 106627
                    mmTop = 9261
                    mmWidth = 6879
                    BandType = 7
                  end
                  object ppDBText22: TppDBText
                    UserName = 'DBText22'
                    DataField = 'CALPERULTMESANT'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 124354
                    mmTop = 9261
                    mmWidth = 6615
                    BandType = 7
                  end
                  object ppDBText23: TppDBText
                    UserName = 'DBText23'
                    DataField = 'CALNORULTMESANT1'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 53181
                    mmTop = 13495
                    mmWidth = 7144
                    BandType = 7
                  end
                  object ppDBText24: TppDBText
                    UserName = 'DBText24'
                    DataField = 'CALCPPULTMESANT1'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 70908
                    mmTop = 13495
                    mmWidth = 6615
                    BandType = 7
                  end
                  object ppDBText25: TppDBText
                    UserName = 'DBText201'
                    DataField = 'CALDEFULTMESANT1'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 88636
                    mmTop = 13495
                    mmWidth = 6350
                    BandType = 7
                  end
                  object ppDBText26: TppDBText
                    UserName = 'DBText26'
                    DataField = 'CALDUDULTMESANT1'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 106627
                    mmTop = 13495
                    mmWidth = 6879
                    BandType = 7
                  end
                  object ppDBText27: TppDBText
                    UserName = 'DBText27'
                    DataField = 'CALPERULTMESANT1'
                    DataPipeline = ppBDEPSBS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    ParentDataPipeline = False
                    Transparent = True
                    DataPipelineName = 'ppBDEPSBS'
                    mmHeight = 3810
                    mmLeft = 124354
                    mmTop = 13495
                    mmWidth = 6615
                    BandType = 7
                  end
                  object SRMensaje: TppSubReport
                    UserName = 'SRMensaje'
                    ExpandAll = False
                    NewPrintJob = False
                    OutlineSettings.CreateNode = True
                    TraverseAllData = False
                    DataPipelineName = 'ppBDEPMensajes'
                    mmHeight = 5027
                    mmLeft = 0
                    mmTop = 17992
                    mmWidth = 197379
                    BandType = 7
                    mmBottomOffset = 0
                    mmOverFlowOffset = 0
                    mmStopPosition = 0
                    object SRMensajes: TppChildReport
                      AutoStop = False
                      DataPipeline = ppBDEPMensajes
                      PrinterSetup.BinName = 'Default'
                      PrinterSetup.DocumentName = 'Report'
                      PrinterSetup.PaperName = 'A4'
                      PrinterSetup.PrinterName = 'Default'
                      PrinterSetup.mmMarginBottom = 6350
                      PrinterSetup.mmMarginLeft = 6350
                      PrinterSetup.mmMarginRight = 6350
                      PrinterSetup.mmMarginTop = 6350
                      PrinterSetup.mmPaperHeight = 297127
                      PrinterSetup.mmPaperWidth = 210079
                      PrinterSetup.PaperSize = 9
                      Version = '7.02'
                      mmColumnWidth = 0
                      DataPipelineName = 'ppBDEPMensajes'
                      object ppDetailBand4: TppDetailBand
                        mmBottomOffset = 0
                        mmHeight = 4498
                        mmPrintPosition = 0
                        object ppDBText28: TppDBText
                          UserName = 'DBText28'
                          DataField = 'MENSAJE'
                          DataPipeline = ppBDEPMensajes
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'ppBDEPMensajes'
                          mmHeight = 3979
                          mmLeft = 19314
                          mmTop = 254
                          mmWidth = 158221
                          BandType = 4
                        end
                        object ppShape21: TppShape
                          UserName = 'Shape21'
                          Brush.Style = bsClear
                          mmHeight = 4498
                          mmLeft = 10320
                          mmTop = 0
                          mmWidth = 264
                          BandType = 4
                        end
                        object ppShape22: TppShape
                          UserName = 'Shape22'
                          Brush.Style = bsClear
                          mmHeight = 5027
                          mmLeft = 184415
                          mmTop = 0
                          mmWidth = 264
                          BandType = 4
                        end
                      end
                      object ppSummaryBand3: TppSummaryBand
                        mmBottomOffset = 0
                        mmHeight = 43127
                        mmPrintPosition = 0
                        object ppShape6: TppShape
                          UserName = 'Shape6'
                          Brush.Style = bsClear
                          Pen.Width = 2
                          mmHeight = 15081
                          mmLeft = 10320
                          mmTop = 1323
                          mmWidth = 174625
                          BandType = 7
                        end
                        object ppLabel37: TppLabel
                          UserName = 'Label37'
                          Caption = '5.'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 11113
                          mmTop = 2117
                          mmWidth = 2646
                          BandType = 7
                        end
                        object ppLabel32: TppLabel
                          UserName = 'Label303'
                          Caption = 'Capacidad de pago:'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold, fsUnderline]
                          Transparent = True
                          mmHeight = 3810
                          mmLeft = 15080
                          mmTop = 2117
                          mmWidth = 30268
                          BandType = 7
                        end
                        object ppLabel36: TppLabel
                          UserName = 'Label36'
                          Caption = 'Ingreso neto de planilla'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 15080
                          mmTop = 6350
                          mmWidth = 35719
                          BandType = 7
                        end
                        object ppLabel39: TppLabel
                          UserName = 'Label39'
                          Caption = 'Otros Descuentos'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3810
                          mmLeft = 92870
                          mmTop = 6350
                          mmWidth = 27432
                          BandType = 7
                        end
                        object ppLabel40: TppLabel
                          UserName = 'Label40'
                          Caption = 'Ingreso liquido disponible'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 15080
                          mmTop = 10584
                          mmWidth = 39688
                          BandType = 7
                        end
                        object ppLabel41: TppLabel
                          UserName = 'Label41'
                          Caption = 'Relaci'#243'n cuota renta (42%)'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 92870
                          mmTop = 10584
                          mmWidth = 40746
                          BandType = 7
                        end
                        object lblCreCapLiq: TppLabel
                          UserName = 'lblCreCapLiq'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 3969
                          mmLeft = 70644
                          mmTop = 6350
                          mmWidth = 17198
                          BandType = 7
                        end
                        object lblMonDesBol: TppLabel
                          UserName = 'lblMonDesBol'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 3969
                          mmLeft = 141817
                          mmTop = 6350
                          mmWidth = 17198
                          BandType = 7
                        end
                        object lblCapEnd: TppLabel
                          UserName = 'lblCreCapLiq1'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 3969
                          mmLeft = 70644
                          mmTop = 10583
                          mmWidth = 17198
                          BandType = 7
                        end
                        object lbl42: TppLabel
                          UserName = 'lblMonDesBol1'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 3969
                          mmLeft = 141817
                          mmTop = 10584
                          mmWidth = 17198
                          BandType = 7
                        end
                        object ppLabel49: TppLabel
                          UserName = 'Label49'
                          Caption = 'Usuario'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 4233
                          mmLeft = 85461
                          mmTop = 16669
                          mmWidth = 11906
                          BandType = 7
                        end
                        object lblUsuario: TppLabel
                          UserName = 'lblUsuario'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          mmHeight = 4233
                          mmLeft = 104775
                          mmTop = 16669
                          mmWidth = 59002
                          BandType = 7
                        end
                        object ppLabel50: TppLabel
                          UserName = 'Label50'
                          Caption = ':'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 4233
                          mmLeft = 100277
                          mmTop = 16669
                          mmWidth = 1058
                          BandType = 7
                        end
                        object ppLabel2: TppLabel
                          UserName = 'Label2'
                          Caption = ':'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 59796
                          mmTop = 6350
                          mmWidth = 1058
                          BandType = 7
                        end
                        object ppLabel12: TppLabel
                          UserName = 'Label12'
                          Caption = ':'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 59796
                          mmTop = 10583
                          mmWidth = 1058
                          BandType = 7
                        end
                        object ppLabel78: TppLabel
                          UserName = 'Label78'
                          Caption = ':'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 137319
                          mmTop = 6350
                          mmWidth = 1058
                          BandType = 7
                        end
                        object ppLabel79: TppLabel
                          UserName = 'Label79'
                          Caption = ':'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 137319
                          mmTop = 10584
                          mmWidth = 1058
                          BandType = 7
                        end
                        object ppLabel85: TppLabel
                          UserName = 'Label85'
                          Caption = 'Oficina'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 10320
                          mmTop = 16669
                          mmWidth = 10848
                          BandType = 7
                        end
                        object ppLabel86: TppLabel
                          UserName = 'Label502'
                          Caption = ':'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 4233
                          mmLeft = 25135
                          mmTop = 16669
                          mmWidth = 1058
                          BandType = 7
                        end
                        object pplblOficina: TppLabel
                          UserName = 'lblUsuario1'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Arial'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          mmHeight = 3704
                          mmLeft = 29633
                          mmTop = 16669
                          mmWidth = 24871
                          BandType = 7
                        end
                        object ppShape23: TppShape
                          UserName = 'Shape23'
                          Brush.Style = bsClear
                          mmHeight = 265
                          mmLeft = 10320
                          mmTop = 0
                          mmWidth = 174096
                          BandType = 7
                        end
                        object lblVerif: TppLabel
                          UserName = 'lblVerif'
                          AutoSize = False
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Times New Roman'
                          Font.Size = 20
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 8202
                          mmLeft = 10583
                          mmTop = 24342
                          mmWidth = 131234
                          BandType = 7
                        end
                      end
                    end
                  end
                  object ppShape3: TppShape
                    UserName = 'Shape3'
                    mmHeight = 15875
                    mmLeft = 139700
                    mmTop = 795
                    mmWidth = 34396
                    BandType = 7
                  end
                  object ppLabel89: TppLabel
                    UserName = 'Label89'
                    Caption = 'NOR'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 141023
                    mmTop = 1588
                    mmWidth = 4699
                    BandType = 7
                  end
                  object ppLabel90: TppLabel
                    UserName = 'Label90'
                    Caption = 'CPP'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 141023
                    mmTop = 4498
                    mmWidth = 4318
                    BandType = 7
                  end
                  object ppLabel91: TppLabel
                    UserName = 'Label901'
                    Caption = 'DEF'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 141023
                    mmTop = 7408
                    mmWidth = 4233
                    BandType = 7
                  end
                  object ppLabel92: TppLabel
                    UserName = 'Label92'
                    Caption = 'DUD'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 141023
                    mmTop = 10319
                    mmWidth = 4572
                    BandType = 7
                  end
                  object ppLabel93: TppLabel
                    UserName = 'Label93'
                    Caption = 'PER'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 141023
                    mmTop = 13229
                    mmWidth = 4318
                    BandType = 7
                  end
                  object ppLabel94: TppLabel
                    UserName = 'Label94'
                    Caption = '='
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 146844
                    mmTop = 1588
                    mmWidth = 1228
                    BandType = 7
                  end
                  object ppLabel95: TppLabel
                    UserName = 'Label95'
                    Caption = '='
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 146844
                    mmTop = 4498
                    mmWidth = 1228
                    BandType = 7
                  end
                  object ppLabel98: TppLabel
                    UserName = 'Label98'
                    Caption = '='
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 146844
                    mmTop = 10319
                    mmWidth = 1228
                    BandType = 7
                  end
                  object ppLabel99: TppLabel
                    UserName = 'Label99'
                    Caption = '='
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 146844
                    mmTop = 13229
                    mmWidth = 1228
                    BandType = 7
                  end
                  object ppLabel96: TppLabel
                    UserName = 'Label96'
                    Caption = '='
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 146844
                    mmTop = 7408
                    mmWidth = 1228
                    BandType = 7
                  end
                  object ppLabel97: TppLabel
                    UserName = 'Label97'
                    Caption = 'Normal'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 148696
                    mmTop = 1588
                    mmWidth = 7281
                    BandType = 7
                  end
                  object ppLabel100: TppLabel
                    UserName = 'Label100'
                    Caption = 'Con Problema Potencial'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 148961
                    mmTop = 4498
                    mmWidth = 24384
                    BandType = 7
                  end
                  object ppLabel101: TppLabel
                    UserName = 'Label1001'
                    Caption = 'Deficiente'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 148961
                    mmTop = 7408
                    mmWidth = 10160
                    BandType = 7
                  end
                  object ppLabel102: TppLabel
                    UserName = 'Label1'
                    Caption = 'Dudoso'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 148432
                    mmTop = 10319
                    mmWidth = 7916
                    BandType = 7
                  end
                  object ppLabel103: TppLabel
                    UserName = 'Label103'
                    Caption = 'Perdida'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 6
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 2582
                    mmLeft = 148696
                    mmTop = 13229
                    mmWidth = 7789
                    BandType = 7
                  end
                  object ppShape19: TppShape
                    UserName = 'Shape19'
                    Brush.Style = bsClear
                    mmHeight = 18256
                    mmLeft = 10320
                    mmTop = 0
                    mmWidth = 264
                    BandType = 7
                  end
                  object ppShape20: TppShape
                    UserName = 'Shape20'
                    Brush.Style = bsClear
                    mmHeight = 18256
                    mmLeft = 184415
                    mmTop = 0
                    mmWidth = 264
                    BandType = 7
                  end
                end
              end
            end
            object ppShape13: TppShape
              UserName = 'Shape13'
              Brush.Style = bsClear
              mmHeight = 4233
              mmLeft = 10320
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape14: TppShape
              UserName = 'Shape14'
              Brush.Style = bsClear
              mmHeight = 265
              mmLeft = 10320
              mmTop = 4233
              mmWidth = 174096
              BandType = 7
            end
            object ppShape15: TppShape
              UserName = 'Shape15'
              Brush.Style = bsClear
              mmHeight = 4233
              mmLeft = 184415
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape16: TppShape
              UserName = 'Shape16'
              Brush.Style = bsClear
              mmHeight = 265
              mmLeft = 10320
              mmTop = 5821
              mmWidth = 174361
              BandType = 7
            end
            object ppShape17: TppShape
              UserName = 'Shape17'
              Brush.Style = bsClear
              mmHeight = 19315
              mmLeft = 184415
              mmTop = 5821
              mmWidth = 265
              BandType = 7
            end
            object ppShape18: TppShape
              UserName = 'Shape18'
              Brush.Style = bsClear
              mmHeight = 19315
              mmLeft = 10320
              mmTop = 5821
              mmWidth = 265
              BandType = 7
            end
            object ppLabel80: TppLabel
              UserName = 'Label80'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 56092
              mmTop = 10848
              mmWidth = 1016
              BandType = 7
            end
            object ppLabel108: TppLabel
              UserName = 'Label801'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 56092
              mmTop = 15080
              mmWidth = 1016
              BandType = 7
            end
            object ppLabel109: TppLabel
              UserName = 'Label109'
              Caption = 'Total Cuota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 139171
              mmTop = 0
              mmWidth = 17727
              BandType = 7
            end
            object ppLabel110: TppLabel
              UserName = 'Label110'
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 159627
              mmTop = 0
              mmWidth = 974
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'CREMTO'
              DataPipeline = ppBDEPCre
              DisplayFormat = '###,###.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPCre'
              mmHeight = 3387
              mmLeft = 162454
              mmTop = 0
              mmWidth = 16670
              BandType = 7
            end
            object ppLabel111: TppLabel
              UserName = 'Label111'
              Caption = 'a.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 15080
              mmTop = 10848
              mmWidth = 2646
              BandType = 7
            end
            object ppLabel112: TppLabel
              UserName = 'Label112'
              Caption = 'b.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 15080
              mmTop = 15080
              mmWidth = 2836
              BandType = 7
            end
          end
        end
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D61676519060000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002D004E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7DC
          565EB5AD5BE8F140AD25B1BCB99521B6B79A71199599D50E382481B813806B53
          15E25E2DF17587893E23F856CACE1B98E4D2F57F266332A80C4CD18F9704E47C
          87AE3B56D4293A92F25A99D59F247CCF5AF3B5DE7FE25BA77FE07BF4FF00BF34
          79DAEF3FF12DD3BFF03DFA7FDF9AD33462B2BAEC5D9F732FFB46F9E57B48EC21
          FB7448B24A8F718882B1214870849C956FE11F74E71C657CED779FF896E9DFF8
          1EFD3FEFCD25BFFC8D5A8FFD795AFF00E873D6A629BB2E82577D4C8B9BDD6EDA
          D66B86D374F2B1233902FDF24004E3FD4D3F43F10E97E22B4371A65DC770A981
          26C24EC246769E2ACEAA3FE24D7DFF005EF27FE826BC03E19F8F61F0AA3E9AFA
          7BDCB5F5D47F3AC81420385E9839EB5D14B0EEB5394A2B54673A9C9249BD19F4
          5629D4DC53AB94D8C8D714BA5845E6CD1ACB7688FE54AD1B15C371B94838E3D6
          BE73B48CC3F17EDE321C6DD7D47CE496C7DA06324F27EA6BE96BFB36BB8E2F2E
          411CB0CA258CB2EE5DC323047191C9EE2B9BD7F45B1D6E4B6BA9EC1A1D6EC678
          A78E48CFCEAA2442EE871894051900827A0DA09C576616BAA775DD347357A6E5
          AF63AF3462B9E2D213FF00218D7FFF0005E9FF00C62A7B6B5B8BA0C63D6F585D
          A307CDB5863CE7D3742335CCE9B5BFEA6EA69EC4D6FF00F2356A3FF5E56BFF00
          A1CF5A98AE721B3BF7F11DFC2DA9BA6DB3B6FDF450A09186F9B19DC0AFAE70A3
          3C63153DC433DB4811F5AD698EDCE63B389C7E6B0114E51BBD1894ACB5468EAA
          3FE24D7DFF005EF27FE826BE4DF0F5BCD75E22D36182296590DCC64244096203
          02718E78009C8E98AFA56F16796CA78E2D575C9246899551EC102B120E013E40
          C0FC452787F40D37C3B66B65A169F0A5D85C5C5CB8DFE5B1C1219B396EDF203D
          8648C835D986AFF578495AED985587B592EC8D2D0C325C6B10F9B34890DEED8F
          CD95A42A0C313632C49C6589C7BD6CD55B3B24B34936B33C92BF992C8F8CBB60
          0C9C0C745038F4AB55C1277674A564371515C5AC375184993201DCA412194FA8
          2391F5153628C521991732DE68F6B25D4D7F6D35AC4B991EF4884A8EE4BA0DB8
          F6D9D7BF60DB7F14E893409249A9D95BBB0C98A6BA883A7B36188FD6B671463D
          EAAE9AD513677D19CC41E20D1478975094EAFA788CDA5B287FB4A6D243CFC673
          EF562FFC5DA35A5B8922D46C2E18B6DF96F230A99CE19CE7213380480C46738C
          038DFC7BD18F7A7CD1BDDA04A496E660B5BDBC50F717C2189BFE5959F195F432
          1F98FAE57691F866AFC50C7044B1451AC71A8C2AA8C01F85498A3152DDC69098
          A752629690CFFFD9}
        mmHeight = 13229
        mmLeft = 17463
        mmTop = 3440
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 10320
        mmTop = 15875
        mmWidth = 42841
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 148433
        mmTop = 8202
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 164571
        mmTop = 8202
        mmWidth = 17526
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 148433
        mmTop = 16670
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 161396
        mmTop = 8202
        mmWidth = 1185
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 16670
        mmWidth = 4233
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 169334
        mmTop = 16670
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 16670
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 168540
        mmTop = 16670
        mmWidth = 1058
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Style = bsClear
        mmHeight = 5556
        mmLeft = 10320
        mmTop = 103717
        mmWidth = 265
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Style = bsClear
        mmHeight = 265
        mmLeft = 10320
        mmTop = 103717
        mmWidth = 174096
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Style = bsClear
        mmHeight = 5556
        mmLeft = 184415
        mmTop = 103717
        mmWidth = 265
        BandType = 0
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 12700
        mmLeft = 15080
        mmTop = 67204
        mmWidth = 168540
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 148433
        mmTop = 12700
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 12700
        mmWidth = 1058
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 164571
        mmTop = 12700
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Fec.Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15081
        mmTop = 39423
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73290
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBASOCODMOD1'
        DataField = 'ASOFECNAC'
        DataPipeline = ppBDEPInfCre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPInfCre'
        mmHeight = 3704
        mmLeft = 75406
        mmTop = 39158
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppBDEPCre: TppBDEPipeline
    DataSource = DM1.dsCreditos
    UserName = 'BDEPCre'
    Left = 570
    Top = 8
  end
  object cdsEntidad: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ENTIDAD'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 510
    Top = 36
    Data = {
      440000009619E0BD010000001800000002000000000003000000440007454E54
      494441440100490000000100055749445448020002001E00054D4F4E544F0800
      0400000000000000}
  end
  object ppBDEPDeuFin: TppBDEPipeline
    DataSource = dsEntidad
    UserName = 'BDEPDeuFin'
    Left = 540
    Top = 8
    object ppBDEPDeuFinppField1: TppField
      FieldAlias = 'ENTIDAD'
      FieldName = 'ENTIDAD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 0
    end
    object ppBDEPDeuFinppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
  end
  object ppBDEPSBS: TppBDEPipeline
    DataSource = DM1.dsCuotas
    UserName = 'BDEPSBS'
    Left = 511
    Top = 7
  end
  object cdsMensajes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'MENSAJE'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 540
    Top = 36
    Data = {
      360000009619E0BD0100000018000000010000000000030000003600074D454E
      53414A4501004900000001000557494454480200020064000000}
  end
  object dsMensajes: TDataSource
    DataSet = cdsMensajes
    Left = 540
    Top = 65
  end
  object dsEntidad: TDataSource
    DataSet = cdsEntidad
    Left = 510
    Top = 65
  end
  object ppBDEPMensajes: TppBDEPipeline
    DataSource = dsMensajes
    UserName = 'BDEPMensajes'
    Left = 482
    Top = 7
    object ppBDEPMensajesppField1: TppField
      FieldAlias = 'MENSAJE'
      FieldName = 'MENSAJE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 0
    end
  end
end
