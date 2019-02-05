object FContactabilidad: TFContactabilidad
  Left = 476
  Top = 361
  Width = 930
  Height = 320
  BorderIcons = [biSystemMenu]
  Caption = 'Contactabilidad'
  Color = 12114134
  Constraints.MaxHeight = 320
  Constraints.MaxWidth = 930
  Constraints.MinHeight = 320
  Constraints.MinWidth = 930
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    914
    282)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 6
    Top = 8
    Width = 900
    Height = 235
    ActivePage = TabSheet2
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Tel'#233'fonos   '
      ImageIndex = 1
      DesignSize = (
        892
        201)
      object dtgTelef: TwwDBGrid
        Left = 5
        Top = 6
        Width = 881
        Height = 188
        Cursor = crHandPoint
        DisableThemesInTitle = False
        Selected.Strings = (
          'ACTIVO'#9'4'#9'Activo'
          'DESCRIP'#9'10'#9'Tipo'
          'NROTELF'#9'23'#9'N'#250'mero Telefonico'
          'USUARIO'#9'15'#9'Gestor'
          'HREG'#9'20'#9'Fecha y Hora'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 10207162
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        RowHeightPercent = 120
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Correos     '
      ImageIndex = 2
      DesignSize = (
        892
        201)
      object dtgCorreos: TwwDBGrid
        Left = 5
        Top = 6
        Width = 881
        Height = 188
        Cursor = crHandPoint
        DisableThemesInTitle = False
        Selected.Strings = (
          'ACTIVO'#9'4'#9'Activo'
          'ASODIR'#9'33'#9'Direcci'#243'n'
          'USUARIO'#9'20'#9'Usuario'
          'HREG'#9'17'#9'Fecha y Hora'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 10207162
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        DataSource = DM1.dsMGrupo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        RowHeightPercent = 120
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Direcciones   '
      ImageIndex = 3
      DesignSize = (
        892
        201)
      object dtgDirecc: TwwDBGrid
        Left = 5
        Top = 6
        Width = 881
        Height = 188
        Cursor = crHandPoint
        DisableThemesInTitle = False
        LineStyle = gls3D
        ControlType.Strings = (
          'details;CustomEdit;wwDataInspector1;T')
        Selected.Strings = (
          'ACTIVO'#9'4'#9'Activo'
          'ASODIR'#9'33'#9'Direcci'#243'n'
          'USUARIO'#9'20'#9'Usuario'
          'HREG'#9'17'#9'Fecha y Hora'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = 10207162
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight]
        DataSource = DM1.dsMGrupo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFixedResizable, dgProportionalColResize]
        ParentFont = False
        RowHeightPercent = 120
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = False
      end
    end
  end
  object BitSalir: TBitBtn
    Left = 816
    Top = 249
    Width = 89
    Height = 26
    Cursor = crHandPoint
    Hint = 'Salir'
    Anchors = [akRight, akBottom]
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
end
