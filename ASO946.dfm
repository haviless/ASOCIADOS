object fCtasPers: TfCtasPers
  Left = 153
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Autorizaci'#243'n De Cuentas Pesonales'
  ClientHeight = 420
  ClientWidth = 800
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
    Left = 3
    Top = -1
    Width = 796
    Height = 418
    TabOrder = 0
    object dtgCtasPers: TwwDBGrid
      Left = 4
      Top = 67
      Width = 787
      Height = 270
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOAPENOM'#9'35'#9'Apellidos y Nombres'
        'ASOTIPID'#9'2'#9'Tipo de~asociado'
        'ASONCTA'#9'10'#9'Cuenta~De Ahorros'
        'SITCTA'#9'3'#9'Sit~Cta'
        'USUARIO'#9'12'#9'Registrado~Por'
        'HREG'#9'20'#9'Fecha y Hora~De Registro'
        'ASODNI'#9'8'#9'D.N.I.'
        'FECAUT'#9'10'#9'Fecha De~Autorizaci'#243'n'
        'USRAUT'#9'15'#9'Usuario~Que Autoriza'
        'FHAUT'#9'20'#9'Fecha y Hora~De Autorizaci'#243'n'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsUSESy
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      OnTitleButtonClick = dtgCtasPersTitleButtonClick
      OnDrawDataCell = dtgCtasPersDrawDataCell
      OnDblClick = dtgCtasPersDblClick
    end
    object BitSalir: TBitBtn
      Left = 652
      Top = 369
      Width = 91
      Height = 27
      Cursor = crHandPoint
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
    object PnFecGen: TPanel
      Left = 503
      Top = 11
      Width = 285
      Height = 49
      Color = 13165023
      TabOrder = 2
      object Label3: TLabel
        Left = 6
        Top = 5
        Width = 75
        Height = 13
        Caption = 'Fecha De Inicio'
      end
      object Label4: TLabel
        Left = 127
        Top = 5
        Width = 64
        Height = 13
        Caption = 'Fecha De Fin'
      end
      object DtpFecIni: TwwDBDateTimePicker
        Left = 5
        Top = 18
        Width = 110
        Height = 25
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        DisplayFormat = 'dd/mm/yyyy'
      end
      object DtpFecFin: TwwDBDateTimePicker
        Left = 126
        Top = 19
        Width = 110
        Height = 25
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy'
      end
      object BitMostrar: TBitBtn
        Left = 241
        Top = 8
        Width = 37
        Height = 33
        Hint = 'Mostar Datos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitMostrarClick
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFB2B1B0FFFFFF90918ED3D4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E3E3F9FAFF9C9C9BC7C7C6FFFFFF00
          0000FFFFFFFFFFFF9F9F9FD5D1D5BCBCC1505450B8B9B8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A8A8C9D3D4C5D7DB585B
          57A5A8A5FFFFFF000000FFFFFFA7A7A7515151706F70474746383838ACABACFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F56B6A6AE1E1E1FFFFFFB9B9B94D4D4D
          7172734A4C4C393839979797FFFFFF000000FFFFFF858485EBEBEBB5B5B53231
          32333233AEADAEFFFFFFFFFFFFFFFFFFFFFFFFE0E0E01B1D1BC2C5C28C8B8CFF
          FFFFA1A0A1D4D4D4D0CFCF3231323837389B9A9BFFFFFF000000B4B9B4898E89
          9298928A908A757B75747A74939893ADB2ADA9AFA9AFB5AFA9ADA9272A27BCC0
          BC2C2C2C798079979D97747A74737873747A745A5F5A5A5F5A7278729CA19C00
          00009FA59FF4F5F4EDEEEDEEEFEEF0F1F0F0F1F0F5F6F5EDEEEDF2F3F2EBEBEB
          111411D4D2D4363034F0F5F8F3F8FDEEF3F8F6FBFAF8FFFBF9FFFBF6F9F7F1F3
          F1F7F8F78A918A000000CDD0CDC5C9C5C6CAC6C8CCC8D7DBD7E6EAE67E827EC9
          CDC9A8ACA80C0F0CD8D1D6496C4271B68B9E8158B19759AB95597F5F59723F59
          6E3951A6979ECAD0CBC5C9C5CFD2CF000000FFFFFFFFFFFFFFFFFFFFFFFF6564
          63201D1B0300001B1A1A343734DFDCDD26473946FF7565DD93B06F25DCA230D1
          9E307A343061003059001EC8A2B6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          9E9EA00000001814270E2636253B521A1816000000000000009E1354FF8A66D5
          90AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF00
          0000FFFFFFA7A6A8464B4DE7E765736E763A7CAF87C1FA7299BF464033000000
          4089584AFF8566D590AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFF
          FFFFFFFFFFFFFF000000D5D5D5000000F6F682FFFF6F6D68603572A37BB0E67C
          B0E385AED22A2A281906168EDC8960DC91AF712BD8A236CE9E367C3A36640036
          5C0025C5A2B5FFFFFFFFFFFFFFFFFF0000005E5E62838364FFFFDDFFFF9A6C67
          6E3572A279AEE482B8EC7BB4EA62747F0200005AAE5665E195AF712BD8A236CE
          9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF0000000000009C9D5B
          FFFF98FFFF9C6C676D3572A279AEE481B6EA81B7EC86BBEC0000004CA14866E2
          97AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF00
          0000000000A1943AFFFFFCFFFF5B6C69743572A27AAFE581B6EA82B7EB75B5F2
          0000004BA14766E197AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFF
          FFFFFFFFFFFFFF00000000000052431DFFFFECFFF18E6B54493372A3669FD77D
          B0E580B8EF9ABED918000F88CF8061DD92AF712BD8A236CE9E367C3A36640036
          5C0025C5A2B5FFFFFFFFFFFFFFFFFF000000CCCCCC000000DFB83FFFFFEF7DA6
          C24580AFCEE2F789DCFF89BEF3252A3A0035155BFF926ADB98AF712BD8A236CE
          9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF000000EFEFEF151618
          1112189D83197D93AC89BDEB81BEDF67A7DD3F4B552F304700990229D54431B4
          48B47633D8A236CE9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF00
          0000FFFFFFF9F9F9393A3B00000000000000040E00070F000003141C274784B5
          294050263A4D1D3A4EB58233D8A236CE9E367C3A366400365A0022C49FB2FFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFEAEAEA5454534C4A48261E2233
          69936AA5DD37779F36316736346B302F6DB58430D8A236CE9E367C3A36620032
          62002ED9C2CEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA19CB72A5E8B649CCF3979A13533643536682C3069B58530DAA436D0
          A1367A38334C0014E4D4DBFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF9590AA295C886DA3D94280A93432633031653235
          6AAA7622C78829BD8327702527DDC6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9590AA2A618D68A3D73A7EA5
          2F2C613A3B67C7C9C7B995889C5E8D9A5C87D5BBCCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9694AE28
          3466444F823746763D3C69C9C8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      end
    end
    object Panel1: TPanel
      Left = 345
      Top = 344
      Width = 297
      Height = 67
      TabOrder = 3
      object rdbVrfBco: TRadioButton
        Left = 10
        Top = 3
        Width = 135
        Height = 17
        Caption = 'Verificaci'#243'n(B.Naci'#243'n)'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rdbCstOfides: TRadioButton
        Left = 9
        Top = 20
        Width = 176
        Height = 17
        Caption = 'Consulta a Of. Desconcentrada'
        TabOrder = 1
      end
      object BitPrintAut: TBitBtn
        Left = 196
        Top = 24
        Width = 90
        Height = 27
        Cursor = crHandPoint
        Hint = 'Imprimir Cuentas Por Autorizar'
        Caption = 'Imprime'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitPrintAutClick
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
      object rdbAutorizados: TRadioButton
        Left = 9
        Top = 40
        Width = 176
        Height = 17
        Caption = 'Autorizados'
        TabOrder = 3
      end
    end
    object BitMstApo: TfcShapeBtn
      Left = 234
      Top = 371
      Width = 90
      Height = 27
      Cursor = crHandPoint
      Hint = 'Mostrar Aportes'
      Caption = 'Aportes'
      Color = clMenu
      DitherColor = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FEFEFE3229293E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E
        2E3E2E2E3A29296F6F6FFFFFFFF7F7F7372F2F3B848497FFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF97FFFF3B2A2AFEFEFE2F2F2F
        FFFFFF2668688FFFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F2A2222928A8A7F6F6F2F70708FFFFF8FFFFF87FFFF87
        FFFF87FFFF8FFFFF87FFFF8FFFFF87FFFF8FFFFF8FFFFF3F2F2F3F878797E1E1
        8FD3D397D3D38FFFFF2FB5B597FFFF8FB5B58FFFFF2FB5B597FFFF37676797C4
        C42F5F5F9FD3D33F3737488F8F481D1D3F87873F14149FD3D34878783F70703F
        70709FFFFF3768689FFFFF000B0B9FFFFF48D3D337D3D3483737508787007878
        50D3D300707048CBCB00686850D3D300828248E1E13700009FD3D3000B0BA6D3
        D3000000A6DADA3F37373F78789FFFFF8FFFFF97FFFF8FFFFF97FFFF99FFFF2A
        06064A282897FFFF87FFFF97FFFF87FFFF97FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF87FFFF8FFFFF8FFFFF9BFFFF827262000000A6FFFF8FFFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF8FFFFF3FDAD33F1D0000007300
        008A00009A00001448877397FFFF87FFFF87FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF97FFFF000000A6A6FF0000FF00006F0000B800009100005B3F786C8FFF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF97FFFF000000FFF8FF3F3F3300
        00E100004F00006700005F3F786C8FFFFF87FFFF8FFFFF3F2F2F48808097FFFF
        8FFFFF8FFFFFA6E1DA26776FB0A8890000E100008B605033488E839FFFFF8FFF
        FF8FFFFF97FFFF372626001D1D2F6F6F266767266767266F6F4A98942F263700
        001350486F004A2C488E8E2667672667672667671D6767878080FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1D14005A5AFF0000FF0000FF0000B1807864FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1D300006F00
        007700007B3F3F48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitMstApoClick
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 12
      Width = 489
      Height = 45
      Caption = 'Buscar (Cod.Mod.)'
      TabOrder = 5
      object EdtCodMod: TEdit
        Left = 7
        Top = 15
        Width = 94
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = EdtCodModChange
        OnExit = EdtCodModExit
      end
      object BitBuscar: TBitBtn
        Left = 106
        Top = 15
        Width = 23
        Height = 24
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBuscarClick
      end
      object Panel2: TPanel
        Left = 135
        Top = 11
        Width = 349
        Height = 29
        Enabled = False
        TabOrder = 2
        object edtApeNom: TEdit
          Left = 3
          Top = 3
          Width = 343
          Height = 21
          Color = clInfoBk
          TabOrder = 0
        end
      end
    end
    object pnlBusca: TPanel
      Left = 441
      Top = 128
      Width = 212
      Height = 73
      BevelInner = bvLowered
      Color = 10207162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      object Shape5: TShape
        Left = 2
        Top = 2
        Width = 208
        Height = 22
        Align = alTop
        Brush.Color = clBackground
      end
      object lbBusca: TLabel
        Left = 6
        Top = 6
        Width = 46
        Height = 13
        Caption = 'lbBusca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtBusca3: TwwIncrementalSearch
        Left = 11
        Top = 37
        Width = 192
        Height = 19
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        DataSource = DM1.dsUSESy
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        TabOrder = 0
      end
      object bbtnClosePnl: TButton
        Left = 195
        Top = 3
        Width = 15
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bbtnClosePnlClick
      end
    end
  end
  object pnlSeleccion: TPanel
    Left = -610
    Top = 99
    Width = 673
    Height = 243
    Color = 13165023
    TabOrder = 1
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 671
      Height = 20
      Align = alTop
      Brush.Color = 8404992
    end
    object Label7: TLabel
      Left = 7
      Top = 4
      Width = 131
      Height = 13
      Caption = 'Selecci'#242'n de Asociado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object GbAsociados: TGroupBox
      Left = 8
      Top = 28
      Width = 656
      Height = 209
      Caption = 'Buscar'
      Color = 13165023
      ParentColor = False
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 450
        Top = 40
        Width = 92
        Height = 27
        Caption = 'Resultados'
        TabOrder = 1
        OnClick = BitBtn1Click
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
      object gbBuscar: TGroupBox
        Left = 11
        Top = 30
        Width = 137
        Height = 40
        TabOrder = 0
        object edtBuscar2: TEdit
          Left = 10
          Top = 9
          Width = 114
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object dtgAsociado: TwwDBGrid
        Left = 11
        Top = 75
        Width = 630
        Height = 123
        DisableThemesInTitle = False
        Selected.Strings = (
          'ASOCODMOD'#9'15'#9'Cod.Modular'
          'ASOCODAUX'#9'6'#9'Orden'
          'ASOAPENOM'#9'50'#9'Apellidos y Nombres'#9'F'
          'USEID'#9'3'#9'Use'
          'UPROID'#9'3'#9'Lug.Proceso'
          'ASODNI'#9'10'#9'D.N.I.')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = dtgAsociadoDblClick
      end
      object BitBtn2: TBitBtn
        Left = 550
        Top = 40
        Width = 91
        Height = 27
        Caption = '&Salir'
        TabOrder = 3
        OnClick = BitBtn2Click
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
      object rbtApeNom: TRadioButton
        Left = 214
        Top = 8
        Width = 165
        Height = 17
        Caption = 'Apellidos y Nombres(D.N.I.)'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = rbtApeNomClick
      end
      object rbtDni: TRadioButton
        Left = 386
        Top = 8
        Width = 57
        Height = 17
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rbtDniClick
      end
      object rbtCuenta: TRadioButton
        Left = 447
        Top = 8
        Width = 89
        Height = 17
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rbtCuentaClick
      end
      object rbtCodMod: TRadioButton
        Left = 546
        Top = 9
        Width = 103
        Height = 17
        Caption = 'Codigo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rbtCodModClick
      end
    end
    object Button1: TButton
      Left = 652
      Top = 3
      Width = 19
      Height = 16
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object ppDBEstPre: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'DBEstPre'
    Left = 37
    Top = 367
  end
  object ppRepEstPre: TppReport
    AutoStop = False
    DataPipeline = ppDBEstPre
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\RepEstDep.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 77
    Top = 375
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstPre'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 29369
        mmWidth = 197380
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 2910
        mmTop = 35190
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'APELLIDOS Y NOMBRES '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 5821
        mmTop = 30427
        mmWidth = 36449
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 128588
        mmTop = 30427
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'CUENTA DE AHORROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 30427
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
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
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label103'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 
          'CUENTAS PERSONALES PENDIENTES DE VERIFICACION  DEL 10/06/2003   ' +
          ' AL   13/06/2003'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 18256
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label17'
        Caption = 'Sistema De Mantenimiento De Asociados   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 4763
        mmWidth = 61595
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'TIPO DE ASOCIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 97631
        mmTop = 30427
        mmWidth = 29633
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3810
        mmLeft = 5556
        mmTop = 0
        mmWidth = 91017
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASODNI'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3704
        mmLeft = 128588
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASONCTA'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3810
        mmLeft = 158486
        mmTop = 0
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOTIPID'
        DataPipeline = ppDBEstPre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 3704
        mmLeft = 97631
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'CANTIDAD DE REGISTROS  :  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 88106
        mmTop = 1852
        mmWidth = 40767
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'ASONCTA'
        DataPipeline = ppDBEstPre
        DisplayFormat = '###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBEstPre'
        mmHeight = 4233
        mmLeft = 130440
        mmTop = 1323
        mmWidth = 12171
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 529
        mmWidth = 197380
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 3175
        mmTop = 7144
        mmWidth = 197380
        BandType = 7
      end
    end
  end
  object DbVerOfi: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'DbVerOfi'
    Left = 112
    Top = 368
  end
  object RepVerOfi: TppReport
    AutoStop = False
    DataPipeline = DbVerOfi
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 144
    Top = 368
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbVerOfi'
    object ppHeaderBand30: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel611: TppLabel
        UserName = 'Label611'
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
      object ppLabel612: TppLabel
        UserName = 'Label612'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel614: TppLabel
        UserName = 'Label614'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel615: TppLabel
        UserName = 'Label615'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable59: TppSystemVariable
        UserName = 'SystemVariable59'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable60: TppSystemVariable
        UserName = 'SystemVariable60'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable61: TppSystemVariable
        UserName = 'SystemVariable61'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel616: TppLabel
        UserName = 'Label616'
        Caption = 'Sistema De Mantenimiento De Asociados   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 4763
        mmWidth = 61595
        BandType = 0
      end
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'CUENTAS POR VERIFICAR DEL 01/04/2005 AL 31/04/2005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel626: TppLabel
        UserName = 'Label626'
        AutoSize = False
        Caption = 'A NIVEL NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 22225
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand32: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText262: TppDBText
        UserName = 'DBText262'
        DataField = 'ASOAPENOM'
        DataPipeline = DbVerOfi
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbVerOfi'
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 0
        mmWidth = 94192
        BandType = 4
      end
      object ppDBText263: TppDBText
        UserName = 'DBText263'
        DataField = 'ASODNI'
        DataPipeline = DbVerOfi
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbVerOfi'
        mmHeight = 3704
        mmLeft = 117475
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText264: TppDBText
        UserName = 'DBText264'
        DataField = 'ASONCTA'
        DataPipeline = DbVerOfi
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbVerOfi'
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText265: TppDBText
        UserName = 'DBText265'
        DataField = 'USUARIO'
        DataPipeline = DbVerOfi
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbVerOfi'
        mmHeight = 3704
        mmLeft = 166423
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOTIPID'
        DataPipeline = DbVerOfi
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbVerOfi'
        mmHeight = 3704
        mmLeft = 97896
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand25: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand30: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel608: TppLabel
        UserName = 'Label608'
        Caption = 'Total Por General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71702
        mmTop = 1852
        mmWidth = 42333
        BandType = 7
      end
      object ppLabel609: TppLabel
        UserName = 'Label609'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 130969
        mmTop = 1852
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc216: TppDBCalc
        UserName = 'DBCalc216'
        DataField = 'ASONCTA'
        DataPipeline = DbVerOfi
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbVerOfi'
        mmHeight = 3704
        mmLeft = 138642
        mmTop = 1852
        mmWidth = 26194
        BandType = 7
      end
      object ppLine151: TppLine
        UserName = 'Line151'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 68792
        mmTop = 794
        mmWidth = 119855
        BandType = 7
      end
      object ppLine150: TppLine
        UserName = 'Line150'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 68792
        mmTop = 6879
        mmWidth = 119855
        BandType = 7
      end
    end
    object ppGroup39: TppGroup
      BreakName = 'OFDESNOM'
      DataPipeline = DbVerOfi
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group39'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbVerOfi'
      object ppGroupHeaderBand39: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17198
        mmPrintPosition = 0
        object ppDBText261: TppDBText
          UserName = 'DBText2601'
          DataField = 'OFDESNOM'
          DataPipeline = DbVerOfi
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbVerOfi'
          mmHeight = 3704
          mmLeft = 37306
          mmTop = 1323
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
        object ppLine152: TppLine
          UserName = 'Line152'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 16404
          mmWidth = 191031
          BandType = 3
          GroupNo = 0
        end
        object ppLine153: TppLine
          UserName = 'Line153'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 6615
          mmWidth = 191031
          BandType = 3
          GroupNo = 0
        end
        object ppLabel617: TppLabel
          UserName = 'Label5801'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 7408
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
        end
        object ppLabel618: TppLabel
          UserName = 'Label618'
          Caption = 'D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 117475
          mmTop = 7408
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppLabel619: TppLabel
          UserName = 'Label619'
          Caption = 'Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 141288
          mmTop = 7408
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel620: TppLabel
          UserName = 'Label620'
          Caption = 'De Ahorros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 141288
          mmTop = 11642
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
        object ppLabel621: TppLabel
          UserName = 'Label621'
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 165629
          mmTop = 7408
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel624: TppLabel
          UserName = 'Label624'
          Caption = 'Oficina Desconcentada :  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1323
          mmWidth = 36513
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Tipo de'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 97896
          mmTop = 7408
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Asociado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 97896
          mmTop = 11642
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand39: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppDBCalc215: TppDBCalc
          UserName = 'DBCalc215'
          DataField = 'ASONCTA'
          DataPipeline = DbVerOfi
          DisplayFormat = '###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup39
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbVerOfi'
          mmHeight = 3704
          mmLeft = 138642
          mmTop = 1852
          mmWidth = 26194
          BandType = 5
          GroupNo = 0
        end
        object ppLabel596: TppLabel
          UserName = 'Label596'
          Caption = 'Total Por Oficina Desconcentrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 71702
          mmTop = 1852
          mmWidth = 52652
          BandType = 5
          GroupNo = 0
        end
        object ppLabel597: TppLabel
          UserName = 'Label597'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 130969
          mmTop = 1852
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppLine149: TppLine
          UserName = 'Line149'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 68792
          mmTop = 794
          mmWidth = 119855
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
