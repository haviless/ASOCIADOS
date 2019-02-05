object fCtrOfdes: TfCtrOfdes
  Left = 160
  Top = 162
  BorderStyle = bsDialog
  Caption = 'Control Oficinas Desconcentradas'
  ClientHeight = 431
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 607
    Height = 417
    Caption = 'Panel1'
    Color = 10207162
    TabOrder = 0
    object dtgOfDes: TwwDBGrid
      Left = 10
      Top = 6
      Width = 587
      Height = 371
      DisableThemesInTitle = False
      Selected.Strings = (
        'OFDESID'#9'4'#9'ID'
        'OFDESNOM'#9'45'#9'Oficina Desconcetrada'
        'IDASO'#9'1'#9'Verifica~Foto'#9'F'
        'IDFIRMA'#9'1'#9'Verifica~Firma'#9'F'
        'VALDATASO'#9'1'#9'Validacion~Dat.Asoc.'#9'F'
        'ACTDATREN'#9'1'#9'Actualiza.~Dat.RENIEC'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgOfDesRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsOfDes
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgOfDesDblClick
    end
    object BitSalir: TBitBtn
      Left = 502
      Top = 384
      Width = 99
      Height = 28
      Cursor = crHandPoint
      Caption = 'Salir'
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
    object pnlFlag: TPanel
      Left = 152
      Top = 80
      Width = 353
      Height = 181
      TabOrder = 2
      Visible = False
      object Shape1: TShape
        Left = 1
        Top = 1
        Width = 351
        Height = 20
        Align = alTop
        Brush.Color = clBackground
        Pen.Style = psClear
      end
      object Label35: TLabel
        Left = 6
        Top = 2
        Width = 111
        Height = 16
        Caption = 'Flag de Activaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object BitMarcar: TBitBtn
        Left = 240
        Top = 145
        Width = 96
        Height = 27
        Caption = 'Actualiza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitMarcarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object Button1: TButton
        Left = 332
        Top = 2
        Width = 19
        Height = 17
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object GroupBox1: TGroupBox
        Left = 14
        Top = 31
        Width = 326
        Height = 45
        Caption = 'Al otorgar Cr'#233'ditos'
        TabOrder = 2
        object chkVerFirma: TCheckBox
          Left = 10
          Top = 19
          Width = 97
          Height = 17
          Caption = 'Verifica Firma'
          TabOrder = 0
        end
        object chkVerFoto: TCheckBox
          Left = 162
          Top = 19
          Width = 97
          Height = 17
          Caption = 'Verifica Foto'
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 86
        Width = 324
        Height = 49
        Caption = 'Al actualizar Asociados :'
        TabOrder = 3
        object chkValDatAso: TCheckBox
          Left = 8
          Top = 22
          Width = 147
          Height = 17
          Caption = 'Valida Datos de Asociado'
          TabOrder = 0
        end
        object chkActDatRen: TCheckBox
          Left = 160
          Top = 22
          Width = 152
          Height = 17
          Caption = 'Actualiza Datos de RENIEC'
          TabOrder = 1
        end
      end
    end
  end
end
