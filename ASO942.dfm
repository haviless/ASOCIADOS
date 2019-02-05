object fAuditoria: TfAuditoria
  Left = 269
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Auditoria De Cambio De Registro'
  ClientHeight = 523
  ClientWidth = 801
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 0
    Width = 789
    Height = 487
    TabOrder = 0
    object Shape2: TShape
      Left = 8
      Top = 8
      Width = 462
      Height = 33
    end
    object Shape1: TShape
      Left = 472
      Top = 179
      Width = 311
      Height = 124
    end
    object lblAsoApeNom: TLabel
      Left = 15
      Top = 11
      Width = 448
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblAsoApeNom'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblFallecido: TLabel
      Left = 472
      Top = 16
      Width = 68
      Height = 13
      Caption = 'FALLECIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtgCampo: TwwDBGrid
      Left = 8
      Top = 48
      Width = 457
      Height = 289
      DisableThemesInTitle = False
      Selected.Strings = (
        'CAMPO'#9'28'#9'CAMPOS'
        'CAMPODES'#9'28'#9'Descripci'#243'n De Campos'
        'MARCAR'#9'1'#9'Mostrar'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsEgrCaja
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
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
      TitleLines = 1
      TitleButtons = False
      OnDblClick = dtgCampoDblClick
    end
    object dtgMstCampos: TwwDBGrid
      Left = 5
      Top = 344
      Width = 772
      Height = 137
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsInt
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dtgMstCamposDrawDataCell
      OnDblClick = dtgMstCamposDblClick
    end
    object BitOfiDes: TBitBtn
      Left = 584
      Top = 310
      Width = 105
      Height = 27
      Cursor = crHandPoint
      Hint = 'Mostra Cambios Por Usuarios'
      Caption = 'Ver Log'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitOfiDesClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000003B3B58838300
        7777008E8E003737000000006363009A9A00000000546F22584400000000A5A5
        00000000A5A500373700646400FAFA00FFFF006B6B00DADA008B8B00ECEC0087
        8700A2930016B6A100879212616D9E9622707000181800878796000000E1E100
        6F6F009A9A00FFFF0050501D2929533737009F93003B8A9E00D4D4B5C3C32C28
        3573737FFFFFFFFFFFFFFFFFFF636387585800FFFF003B3B149191A19D9D9D46
        464E624A5A00DFDFABABABFFFFFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000000000229D9DA45F5F5F3A3A3A0000002F22220D8787C8B9B97F7F7F8181
        813C3C3C3D3D3DFFFFFFFFFFFFD3D3D348484C1D1D1D6B6B6B8D8D8D8D8D8D93
        9393B0B0B0483B3BE1E1E1FEFEFEFFFFFFFFFFFF606060FFFFFFFFFFFF2F2F2F
        0000000000003F3F3F8D8D8D8787878787875B5B5B2C2C2CE1E1E1DEDEDEFFFF
        FF9E9E9E000000FFFFFFE9E9E90000000000000000006F6F6F89898985858598
        9898A1A1A13F3F3FECECECE1E1E1FFFFFF9292928C8C8C686868000000000000
        000000585858999999878787838383B9B9B9B0B0B0636363424242D9E8E8FF5B
        5BFFFFFF686868FFFFFF00000000000000000000000048484895959591919100
        0000B9B9B93D3535D5CECEC6C6C67F8E8E6D6D6D807C7CFFFFFF000000000000
        0000000000000000003F3F3F8989899A9A9A00000090DBDB065353FFE2E2DEC4
        C4F0D6D61F3838D3CFCF4848480000000000000000000000004C4C4CC3C3C3F5
        F5F5281F1F87C3C32FB5B500B7B700E8E800B2B22FFFFF7A6262E1E1E1000000
        00000000000000000000000000000000000000000094D0D07EF5F500FFFF00FF
        FF00FFFF1F4A4AFFFFFFFFFFFF26262600000000000000000000000000000000
        0000000000002222225B5B006969006767875757FFFFFFFFFFFFFFFFFFFFFFFF
        878787000000000000000000000000000000E1E1E1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Panel1: TPanel
      Left = 477
      Top = 182
      Width = 299
      Height = 117
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 3
      object Label1: TLabel
        Left = 11
        Top = 55
        Width = 61
        Height = 13
        Caption = 'Secuencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 55
        Top = 74
        Width = 41
        Height = 13
        Caption = 'Donde : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 109
        Top = 78
        Width = 99
        Height = 13
        Caption = '0 : Antes Del Cambio'
      end
      object Label4: TLabel
        Left = 111
        Top = 96
        Width = 111
        Height = 13
        Caption = '1: Despues Del Cambio'
      end
      object Label5: TLabel
        Left = 1
        Top = 31
        Width = 163
        Height = 13
        Caption = 'FECHA_Y_HORA_Grabaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 2
        Top = 10
        Width = 128
        Height = 13
        Caption = 'USUARIO_AUDITADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 167
        Top = 9
        Width = 128
        Height = 13
        Caption = 'Usuario Que Cambio Datos'
      end
      object Label8: TLabel
        Left = 178
        Top = 32
        Width = 121
        Height = 13
        Caption = 'Fecha y Hora Del Cambio'
      end
    end
  end
  object BitSalir: TBitBtn
    Left = 667
    Top = 491
    Width = 88
    Height = 27
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
end
