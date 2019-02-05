object fValRegNue: TfValRegNue
  Left = 488
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Validaci'#243'n De Actualizaci'#243'n Registro '
  ClientHeight = 419
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
    Left = 0
    Top = -1
    Width = 801
    Height = 418
    TabOrder = 0
    object Label2: TLabel
      Left = 22
      Top = 392
      Width = 33
      Height = 13
      Caption = 'Buscar'
    end
    object dtgNueAso: TwwDBGrid
      Left = 4
      Top = 152
      Width = 793
      Height = 217
      DisableThemesInTitle = False
      Selected.Strings = (
        'ITEM'#9'5'#9'Num'
        'ASOAPENOM'#9'30'#9'Apellidos y Nombres'
        'USUARIO'#9'15'#9'Actualizado Por'
        'FHREGISTRO'#9'20'#9'Fecha y Hora~Actualizaci'#243'n'
        'DESESTADO'#9'10'#9'Estado'#9'F'
        'ASOAPTSER'#9'1'#9'Apto para ~Servicio'
        'REASIGNACION'#9'1'#9'Modifico En~Reasignaci'#243'n'
        'DATGENERAL'#9'1'#9'Modifico En~Datos Generales'
        'DATSOCIOECO'#9'1'#9'Modifico En~Datos Socieconomicos'
        'USRVERIFICA'#9'15'#9'Verificado Por'
        'FHVERIFICA'#9'20'#9'Fecha y Hora~Verificaci'#243'n'
        'OFDESNOM'#9'15'#9'Origen de~Operaciones'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsValRegAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
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
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = dtgNueAsoDrawDataCell
      OnDblClick = dtgNueAsoDblClick
    end
    object BitSalir: TBitBtn
      Left = 704
      Top = 384
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Salir'
      TabOrder = 6
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
      Left = 5
      Top = 11
      Width = 692
      Height = 134
      Color = 13165023
      TabOrder = 0
      object Label3: TLabel
        Left = 28
        Top = 32
        Width = 75
        Height = 13
        Caption = 'Fecha De Inicio'
      end
      object Label4: TLabel
        Left = 150
        Top = 32
        Width = 64
        Height = 13
        Caption = 'Fecha De Fin'
      end
      object Label1: TLabel
        Left = 274
        Top = 32
        Width = 111
        Height = 13
        Caption = 'Origen De Operaciones'
      end
      object TLabel
        Left = 101
        Top = 80
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
        Left = 239
        Top = 80
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
      object DtpFecIni: TwwDBDateTimePicker
        Left = 27
        Top = 47
        Width = 108
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
      object DtpFecFin: TwwDBDateTimePicker
        Left = 148
        Top = 47
        Width = 107
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
        TabOrder = 2
        DisplayFormat = 'dd/mm/yyyy'
      end
      object BitMostrar: TBitBtn
        Left = 640
        Top = 88
        Width = 37
        Height = 33
        Hint = 'Mostar Datos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BitMostrarClick
        OnKeyPress = BitMostrarKeyPress
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
      object Panel2: TPanel
        Left = 273
        Top = 45
        Width = 323
        Height = 30
        Caption = 'Panel1'
        TabOrder = 3
        object EdtOfiDes: TEdit
          Left = 47
          Top = 3
          Width = 273
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBLkOfiDes: TwwDBLookupCombo
          Left = 2
          Top = 3
          Width = 44
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'OFDESID'#9'2'#9'Codigo'#9'F'
            'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
          LookupTable = DM1.cdsOfdes
          LookupField = 'OFDESID'
          Options = [loColLines, loRowLines]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = DBLkOfiDesChange
        end
      end
      object rbPorFecha: TRadioButton
        Left = 8
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Por Fecha'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbPorFechaClick
      end
      object rbPorAsociado: TRadioButton
        Left = 8
        Top = 80
        Width = 89
        Height = 17
        Caption = 'Por Asociado'
        TabOrder = 4
        OnClick = rbPorAsociadoClick
      end
      object edtASOCODMOD: TwwDBEdit
        Left = 98
        Top = 98
        Width = 111
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object BitBuscarAso: TButton
        Left = 211
        Top = 99
        Width = 22
        Height = 24
        Cursor = crHandPoint
        Caption = '...'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = BitBuscarAsoClick
      end
      object edtASOAPENOMDNI: TwwDBEdit
        Left = 234
        Top = 98
        Width = 383
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtASOID: TwwDBEdit
        Left = 2
        Top = 98
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
      end
      object cbTodos: TCheckBox
        Left = 275
        Top = 9
        Width = 121
        Height = 17
        Caption = 'Todos los Origenes'
        TabOrder = 10
        OnClick = cbTodosClick
      end
    end
    object BitDenegar: TBitBtn
      Left = 571
      Top = 384
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Denegar'
      TabOrder = 5
      OnClick = BitDenegarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object BitAprobar: TBitBtn
      Left = 471
      Top = 384
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Aprobar'
      TabOrder = 4
      OnClick = BitAprobarClick
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
    end
    object edtBuscar: TEdit
      Left = 64
      Top = 385
      Width = 379
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = edtBuscarChange
      OnKeyPress = edtBuscarKeyPress
    end
    object BitMstApo: TfcShapeBtn
      Left = 706
      Top = 109
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
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = BitMstApoClick
    end
  end
end
