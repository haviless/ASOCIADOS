object fAsignacionResponsable: TfAsignacionResponsable
  Left = 436
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaci'#243'n de Responsable'
  ClientHeight = 139
  ClientWidth = 665
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 665
    Height = 139
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 15
      Width = 661
      Height = 122
      Align = alClient
    end
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Responsable:'
    end
    object dblcdResponsable: TwwDBLookupComboDlg
      Left = 96
      Top = 28
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Color = clWhite
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdResponsableChange
    end
    object medesResponsable: TMaskEdit
      Left = 243
      Top = 28
      Width = 206
      Height = 21
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 464
      Top = 16
      Width = 177
      Height = 49
      Caption = 'Tipo de Gesti'#243'n'
      TabOrder = 2
      object rbAsesoria: TRadioButton
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Asesoria'
        TabOrder = 0
        OnClick = rbAsesoriaClick
      end
      object rbCampana: TRadioButton
        Left = 96
        Top = 24
        Width = 73
        Height = 17
        Caption = 'Campa'#241'a'
        TabOrder = 1
        OnClick = rbCampanaClick
      end
    end
    object bAsignar: TBitBtn
      Left = 424
      Top = 104
      Width = 131
      Height = 25
      Caption = 'Asignar Responsable'
      TabOrder = 3
      OnClick = bAsignarClick
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
    object bSalir: TBitBtn
      Left = 568
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 4
      OnClick = bSalirClick
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
end
