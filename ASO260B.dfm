object FMantAsociadoListaReniec: TFMantAsociadoListaReniec
  Left = 290
  Top = 238
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Lista de  RENIEC'
  ClientHeight = 140
  ClientWidth = 645
  Color = clBtnFace
  Constraints.MaxHeight = 167
  Constraints.MaxWidth = 653
  Constraints.MinHeight = 167
  Constraints.MinWidth = 653
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
  object pnlReniecList: TPanel
    Left = 1
    Top = -3
    Width = 646
    Height = 140
    TabOrder = 0
    object gbBusqueda: TGroupBox
      Left = 14
      Top = 4
      Width = 619
      Height = 52
      Caption = 'Busque por  Apellidos del DNI : '
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label44: TLabel
        Left = 12
        Top = 25
        Width = 76
        Height = 16
        Caption = 'Ap. Paterno :'
      end
      object Label45: TLabel
        Left = 289
        Top = 25
        Width = 78
        Height = 16
        Caption = 'Ap. Materno :'
      end
      object edtApePat: TEdit
        Left = 91
        Top = 20
        Width = 189
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object edtApeMat: TEdit
        Left = 368
        Top = 20
        Width = 198
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn4: TBitBtn
        Left = 575
        Top = 15
        Width = 37
        Height = 31
        TabOrder = 2
        OnClick = BitBtn4Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFBFBFBF7F7F7F7F7F007F7F007F3F007F7F007F7F7FBFBFBFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F3FBFBF00FFFF00FFFF00FF
          FF00FF7F00FF3F00FFFF00BFBF007F7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F3FFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF
          007F7F3FFFFFFFFFFFFFFFFFFF7F7F3FFFFF00FFFF00FFFF00FFFF000000FFBF
          BF3FFFBF00FF0000FF0000FF7F00FFFF00FFFF007F7F3FFFFFFFBFBFBF7F7F3F
          FFFF00FFFF00FFFF003F3FBF0000FF3F3FBFBF3F3FFF0000FF0000FF3F00FFFF
          00FFFF00BFBF00BFBFBF7F7F7FBFBF3FFFFF00FFFF000000FF0000FF7F7F7FFF
          FF00FFFF00FF7F00FF7F00FFFF00BFBF3FBFBF3FFFFF007F7F7F00007F7F7F7F
          FFFF007F7F7F0000FF3F00BFFF0000FFFF00FFFF00FFBF00FF0000BFBF3FFFFF
          00FFFF00FFFF007F7F003F3F3FBFBF3FFFFF007F7F7FBF003FFF0000FF0000FF
          0000FF0000FF0000FF7F00FFFF00FFFF00FFFF00FFFF007F7F003F3F3FFFFF00
          FFFF00FF7F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FFFF
          00FFFF00FFFF007F7F007F7F00FFFF00FFFF00FF7F00FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FFFF003F3FBFFFFF00FFBF3F7F007F7F7F7FFFFF00
          FFBF00FF0000FF0000FF0000FF0000FF0000FFBF00FF7F00FF0000FF7F00FFFF
          00FFBF3FFF00FF7F7F7FBFBFBFBFBF00FF7F00FF003FFF007FFF00FFFF00FFFF
          00FFFF00FFFF00FFFF3F7FFF0000FFFF00FFFF00BF7F3FBFBFBFFFFFFF7F7F3F
          FF7F3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7FFFFF00FFFF
          00FFFF007F7F3FFFFFFFFFFFFFFFFFFF7F3F7FFF7F7FFF7F7FFF00FFFF00FFFF
          00FFFF7F7FFF7F7FFF7F7FFFFF00FFFF007F7F3FFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7F7F3FBF3F7FFF3FBFFF00FFFF3FBFFFFF00FFFF00FFFF00BFBF007F7F
          3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F7F7F007F
          7F007F7F007F7F007F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object dbgListaReniec: TwwDBGrid
      Left = 14
      Top = 72
      Width = 620
      Height = 65
      DisableThemesInTitle = False
      Selected.Strings = (
        'Nro'#9'2'#9'Nro'
        'DNI'#9'9'#9'DNI'
        'ApePat'#9'20'#9'Apellido Paterno'
        'ApeMat'#9'20'#9'Apellido Materno'
        'Nombres'#9'40'#9'Nombres'
        'Sta'#9'2'#9'Sta')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSLISRENIEC
      KeyOptions = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dbgListaReniecDrawDataCell
      OnDblClick = dbgListaReniecDblClick
    end
  end
  object CDSLISRENIEC: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nro'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DNI'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ApePat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ApeMat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nombres'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Sta'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 545
    Top = 75
    Data = {
      B40000009619E0BD010000001800000006000000000003000000B400034E726F
      010049000000010005574944544802000200020003444E490100490000000100
      0557494454480200020009000641706550617401004900000001000557494454
      48020002001400064170654D6174010049000000010005574944544802000200
      1400074E6F6D6272657301004900000001000557494454480200020028000353
      746101004900000001000557494454480200020002000000}
  end
  object DSLISRENIEC: TwwDataSource
    DataSet = CDSLISRENIEC
    Left = 521
    Top = 75
  end
end
