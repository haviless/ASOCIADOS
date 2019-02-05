object FModExpben: TFModExpben
  Left = 46
  Top = 176
  BorderStyle = bsDialog
  Caption = 'Consulta de Expediente de Beneficio'
  ClientHeight = 598
  ClientWidth = 796
  Color = 13165023
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
  object Label1: TLabel
    Left = 10
    Top = 177
    Width = 50
    Height = 15
    Caption = 'C'#243'd. Mod.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 233
    Top = 177
    Width = 115
    Height = 15
    Caption = 'Apellidos y Nombre(s):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 9
    Top = 274
    Width = 96
    Height = 15
    Caption = 'Unidad de Gesti'#243'n:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 265
    Top = 274
    Width = 81
    Height = 15
    Caption = 'Unidad de Pago:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 520
    Top = 274
    Width = 97
    Height = 15
    Caption = 'Unidad de Proceso:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 105
    Top = 177
    Width = 76
    Height = 15
    Caption = 'Doc. Identidad'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 9
    Top = 234
    Width = 119
    Height = 15
    Caption = 'Direcci'#243'n domiciliaria:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 458
    Top = 234
    Width = 124
    Height = 15
    Caption = 'Distrito/Provincia/Dep.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 9
    Top = 315
    Width = 91
    Height = 15
    Caption = 'Centro Educativo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 9
    Top = 356
    Width = 163
    Height = 15
    Caption = 'Direcci'#243'n del Centro Educativo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 415
    Top = 356
    Width = 172
    Height = 15
    Caption = 'Distrito/Provincia/Departamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 341
    Top = 234
    Width = 52
    Height = 15
    Caption = 'Tel'#233'fono :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label26: TLabel
    Left = 405
    Top = 314
    Width = 100
    Height = 15
    Caption = 'R'#233'gimen de Pensi'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 229
    Top = 193
    Width = 399
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object meAsoApeNomDni: TMaskEdit
      Left = 1
      Top = 1
      Width = 397
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 101
    Top = 193
    Width = 126
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object meAsoDocNum: TMaskEdit
      Left = 1
      Top = 1
      Width = 123
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 6
    Top = 290
    Width = 249
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object meUsenom: TMaskEdit
      Left = 40
      Top = 1
      Width = 208
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object meUseid: TMaskEdit
      Left = 1
      Top = 1
      Width = 40
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel6: TPanel
    Left = 7
    Top = 193
    Width = 91
    Height = 21
    Color = 13165023
    Enabled = False
    TabOrder = 4
    object meAsocodmod: TMaskEdit
      Tag = 6
      Left = 1
      Top = 1
      Width = 89
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 263
    Top = 290
    Width = 249
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object meUpagonom: TMaskEdit
      Left = 40
      Top = 1
      Width = 208
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object meUpagoid: TMaskEdit
      Left = 1
      Top = 1
      Width = 40
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 520
    Top = 290
    Width = 252
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object meUpronom: TMaskEdit
      Left = 41
      Top = 1
      Width = 209
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object meUproid: TMaskEdit
      Left = 1
      Top = 1
      Width = 40
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel7: TPanel
    Left = 6
    Top = 250
    Width = 331
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object meAsodir: TMaskEdit
      Left = 1
      Top = 1
      Width = 329
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel8: TPanel
    Left = 454
    Top = 250
    Width = 318
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object meAsozipdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 316
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel9: TPanel
    Left = 6
    Top = 331
    Width = 394
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object meAsodeslab: TMaskEdit
      Left = 1
      Top = 1
      Width = 392
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel10: TPanel
    Left = 6
    Top = 372
    Width = 393
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    object meAsodirlab: TMaskEdit
      Left = 1
      Top = 1
      Width = 391
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel11: TPanel
    Left = 413
    Top = 372
    Width = 359
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    object meAsozipdeslab: TMaskEdit
      Left = 1
      Top = 1
      Width = 356
      Height = 19
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pgmulti: TPageControl
    Left = 5
    Top = 399
    Width = 577
    Height = 154
    ActivePage = tsdatper
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    object tsforpag: TTabSheet
      Caption = 'Forma de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 561
        Height = 121
        Caption = 'Forma de Pago'
        Enabled = False
        TabOrder = 0
        object lblagegir: TLabel
          Left = 105
          Top = 66
          Width = 42
          Height = 15
          Caption = 'Agencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblasoncta: TLabel
          Left = 105
          Top = 98
          Width = 35
          Height = 15
          Caption = 'Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblbanco: TLabel
          Left = 105
          Top = 45
          Width = 31
          Height = 15
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblforpag: TLabel
          Left = 105
          Top = 21
          Width = 73
          Height = 15
          Caption = 'Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object dblcBanco: TwwDBLookupCombo
          Left = 194
          Top = 42
          Width = 44
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'BANCOID'#9'2'#9'C'#243'digo de~Banco'#9#9
            'BANCONOM'#9'25'#9'Descripci'#243'n del~banco'#9#9)
          LookupTable = DM1.cdsBcos
          LookupField = 'BANCOID'
          MaxLength = 2
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblcBancoChange
          OnExit = dblcBancoExit
        end
        object dblcforpag: TwwDBLookupCombo
          Left = 194
          Top = 18
          Width = 44
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TIPDESEID'#9'2'#9'C'#243'digo de la~Forma de pago'#9#9
            'TIPDESEDES'#9'25'#9'Descripci'#243'n de la~Forma de Pago'#9#9)
          LookupTable = DM1.cdsFPago
          LookupField = 'TIPDESEID'
          MaxLength = 2
          ParentFont = False
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblcforpagChange
          OnExit = dblcforpagExit
        end
        object dblcagegir: TwwDBLookupComboDlg
          Left = 194
          Top = 68
          Width = 69
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          LookupTable = DM1.cdsAgBco
          LookupField = 'AGENBCOID'
          ParentFont = False
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnChange = dblcagegirChange
          OnExit = dblcagegirExit
        end
        object rgCobAso: TRadioGroup
          Left = 3
          Top = 22
          Width = 92
          Height = 49
          Caption = 'Cobra Asociado'
          Columns = 2
          Items.Strings = (
            'Si'
            'No')
          TabOrder = 3
          OnClick = rgCobAsoClick
        end
        object pnlasoncta: TPanel
          Left = 265
          Top = 94
          Width = 143
          Height = 21
          Color = 13165023
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object measoncta: TMaskEdit
            Left = 1
            Top = 1
            Width = 140
            Height = 19
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlagegir: TPanel
          Left = 265
          Top = 67
          Width = 260
          Height = 21
          Color = 13165023
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object meagengir: TMaskEdit
            Left = 1
            Top = 1
            Width = 258
            Height = 19
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlbanco: TPanel
          Left = 265
          Top = 42
          Width = 288
          Height = 21
          Color = 13165023
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object mebancodes: TMaskEdit
            Left = 1
            Top = 1
            Width = 286
            Height = 19
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlforpag: TPanel
          Left = 265
          Top = 18
          Width = 288
          Height = 21
          Color = 13165023
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          object meforpagodes: TMaskEdit
            Left = 1
            Top = 1
            Width = 286
            Height = 19
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object tsresoluciones: TTabSheet
      Caption = 'Resoluciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object GroupBox2: TGroupBox
        Left = 3
        Top = 1
        Width = 347
        Height = 87
        Caption = ' Resoluciones '
        Enabled = False
        TabOrder = 0
        object Label18: TLabel
          Left = 27
          Top = 32
          Width = 80
          Height = 15
          Caption = 'Nombramiento :'
        end
        object Label22: TLabel
          Left = 27
          Top = 59
          Width = 30
          Height = 15
          Caption = 'Cese :'
        end
        object Label23: TLabel
          Left = 119
          Top = 13
          Width = 40
          Height = 15
          Caption = 'N'#250'mero'
        end
        object Label24: TLabel
          Left = 234
          Top = 13
          Width = 30
          Height = 15
          Caption = 'Fecha'
        end
        object dbdtpfecces: TwwDBDateTimePicker
          Tag = 3
          Left = 234
          Top = 58
          Width = 87
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 1
          OnExit = dbdtpfeccesExit
        end
        object pnlnumresnom: TPanel
          Left = 119
          Top = 30
          Width = 83
          Height = 21
          Enabled = False
          TabOrder = 2
          object menumresnom: TMaskEdit
            Left = 1
            Top = 1
            Width = 81
            Height = 19
            AutoSize = False
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlfecresnom: TPanel
          Left = 234
          Top = 30
          Width = 83
          Height = 21
          Enabled = False
          TabOrder = 3
          object mefecresnom: TMaskEdit
            Left = 1
            Top = 1
            Width = 81
            Height = 19
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object pnlnumresces: TPanel
          Left = 119
          Top = 56
          Width = 83
          Height = 21
          TabOrder = 0
          object menumresces: TMaskEdit
            Left = 1
            Top = 1
            Width = 81
            Height = 19
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object tsdatper: TTabSheet
      Caption = 'Datos de los aportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object GroupBox1: TGroupBox
        Left = 8
        Top = 0
        Width = 257
        Height = 81
        Caption = 'Datos de los aportantes'
        Enabled = False
        TabOrder = 0
        DesignSize = (
          257
          81)
        object Label13: TLabel
          Left = 16
          Top = 41
          Width = 75
          Height = 15
          Caption = #218'ltimo aporte :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 106
          Top = 20
          Width = 20
          Height = 15
          Caption = 'A'#241'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 160
          Top = 20
          Width = 21
          Height = 15
          Caption = 'Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object meanoultapo: TMaskEdit
          Left = 100
          Top = 39
          Width = 44
          Height = 23
          Anchors = [akLeft, akTop, akBottom]
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object memesultapo: TMaskEdit
          Left = 155
          Top = 39
          Width = 37
          Height = 23
          TabOrder = 1
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = ' Datos del Solicitante'
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 8
        Top = 0
        Width = 553
        Height = 97
        Caption = 'Datos del Solicitante'
        Enabled = False
        TabOrder = 0
        object Label27: TLabel
          Left = 6
          Top = 21
          Width = 101
          Height = 15
          Caption = 'DNI del solicitante:'
        end
        object Label28: TLabel
          Left = 6
          Top = 45
          Width = 107
          Height = 15
          Caption = 'Apellido y nombre(s):'
        end
        object Label29: TLabel
          Left = 6
          Top = 73
          Width = 59
          Height = 15
          Caption = 'Parentesco:'
        end
        object meDNIsol: TMaskEdit
          Left = 117
          Top = 16
          Width = 60
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 8
          TabOrder = 0
        end
        object meapenomsol: TMaskEdit
          Left = 117
          Top = 41
          Width = 350
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 90
          TabOrder = 1
        end
        object mevinparentesco: TMaskEdit
          Left = 117
          Top = 66
          Width = 166
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 25
          TabOrder = 2
        end
      end
    end
  end
  object btncerrar: TBitBtn
    Left = 551
    Top = 562
    Width = 89
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 13
    OnClick = btncerrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object pnlobservacion: TPanel
    Left = 645
    Top = 400
    Width = 148
    Height = 190
    Color = clMoneyGreen
    TabOrder = 14
    Visible = False
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 146
      Height = 24
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Observaciones'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object redit: TwwDBRichEdit
      Left = 3
      Top = 28
      Width = 142
      Height = 158
      AutoURLDetect = False
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PrintJobName = 'Delphi 7'
      TabOrder = 1
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      PrintHeader.VertMargin = 0.500000000000000000
      PrintHeader.Font.Charset = DEFAULT_CHARSET
      PrintHeader.Font.Color = clWindowText
      PrintHeader.Font.Height = -11
      PrintHeader.Font.Name = 'MS Sans Serif'
      PrintHeader.Font.Style = []
      PrintFooter.VertMargin = 0.500000000000000000
      PrintFooter.Font.Charset = DEFAULT_CHARSET
      PrintFooter.Font.Color = clWindowText
      PrintFooter.Font.Height = -11
      PrintFooter.Font.Name = 'MS Sans Serif'
      PrintFooter.Font.Style = []
      RichEditVersion = 2
      Data = {
        9B0000007B5C727466315C616E73695C616E7369637067313235325C64656666
        305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C20
        4D532053616E732053657269663B7D7D0D0A7B5C636F6C6F7274626C203B5C72
        65643235355C677265656E305C626C7565303B7D0D0A5C766965776B696E6434
        5C7563315C706172645C6366315C66305C667331365C7061720D0A7D0D0A00}
    end
  end
  object gbtipben: TGroupBox
    Left = 360
    Top = 8
    Width = 265
    Height = 151
    Caption = ' Tipo de Beneficio: '
    Enabled = False
    TabOrder = 0
    object Label17: TLabel
      Left = 5
      Top = 17
      Width = 57
      Height = 15
      Caption = 'Beneficio :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblfacinv: TLabel
      Left = 5
      Top = 42
      Width = 119
      Height = 15
      Caption = 'Fecha de fallecimiento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Panel16: TPanel
      Left = 129
      Top = 13
      Width = 119
      Height = 23
      Color = 13165023
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object metipbenef: TMaskEdit
        Left = 1
        Top = 1
        Width = 117
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
      end
    end
    object dbltipbenef: TwwDBLookupCombo
      Left = 71
      Top = 15
      Width = 50
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPBENEF'#9'2'#9'C'#243'digo de~Beneficio'#9#9
        'BENEFDES'#9'20'#9'Tipo de~Beneficio'#9#9)
      LookupTable = DM1.cdsTipBenef
      LookupField = 'TIPBENEF'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dbltipbenefChange
      OnExit = dbltipbenefExit
    end
    object rgtipret: TRadioGroup
      Left = 70
      Top = 38
      Width = 175
      Height = 48
      Caption = ' Tipo de retiro:'
      ItemIndex = 0
      Items.Strings = (
        'Por Cese'
        'Por Invalidez Temporal-Parcial')
      TabOrder = 2
    end
    object dbdtpfacinv: TwwDBDateTimePicker
      Tag = 1
      Left = 130
      Top = 39
      Width = 119
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
      Visible = False
      OnExit = dbdtpfacinvExit
    end
    inline CboCausaCese: TFCboCausaCese
      Left = 5
      Top = 86
      Width = 254
      Height = 54
      TabOrder = 4
      DesignSize = (
        254
        54)
      inherited lblEtiqueta: TLabel
        Left = 7
      end
      inherited cbListaDatos: TwwDBLookupComboDlg
        Left = 8
        Width = 245
      end
    end
  end
  object btnliqben: TBitBtn
    Left = 452
    Top = 562
    Width = 89
    Height = 30
    Caption = 'Liq.Ben.'
    Enabled = False
    TabOrder = 15
    OnClick = btnliqbenClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
      000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
      BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
      BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
      BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
      BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
      F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
      F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
      7055557FFFFFF777F7F555000000000000555577777777777755}
    NumGlyphs = 2
  end
  object Panel14: TPanel
    Left = 339
    Top = 250
    Width = 109
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    object measotelef: TMaskEdit
      Left = 1
      Top = 1
      Width = 107
      Height = 19
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 627
    Top = 8
    Width = 151
    Height = 187
    Align = alCustom
    BiDiMode = bdLeftToRight
    Caption = 'Foto y Firma (RENIEC)'
    ParentBiDiMode = False
    TabOrder = 17
    OnDblClick = ImgFotoConfirmeDblClick
    object ImgFotoConfirme: TImage
      Left = 25
      Top = 15
      Width = 106
      Height = 120
      Stretch = True
      OnDblClick = ImgFotoConfirmeDblClick
    end
    object ImgFirmaConfirme: TImage
      Left = 4
      Top = 139
      Width = 142
      Height = 42
      Stretch = True
      OnDblClick = ImgFotoConfirmeDblClick
    end
  end
  object Panel15: TPanel
    Left = 405
    Top = 332
    Width = 366
    Height = 21
    Color = 13165023
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    object meregpen: TMaskEdit
      Left = 1
      Top = 1
      Width = 364
      Height = 19
      AutoSize = False
      TabOrder = 0
    end
  end
  object rgforsolben: TRadioGroup
    Left = 5
    Top = 45
    Width = 351
    Height = 47
    Caption = ' Origen de solicitud: '
    Columns = 2
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Por solicitud del beneficiario'
      'Por oficio interno')
    TabOrder = 19
  end
  object btnnueseg: TBitBtn
    Left = 350
    Top = 562
    Width = 89
    Height = 30
    Caption = 'Cons. Segui.'
    TabOrder = 20
    OnClick = btnnuesegClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
      055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
      305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
      30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
      3055577777555557F7F555000555555999555577755555577755}
    NumGlyphs = 2
  end
  object gborigen: TGroupBox
    Left = 5
    Top = 94
    Width = 351
    Height = 64
    Caption = ' Origen del Expediente: '
    Enabled = False
    TabOrder = 21
    object Label20: TLabel
      Left = 6
      Top = 16
      Width = 33
      Height = 15
      Caption = 'Dpto. :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 6
      Top = 38
      Width = 44
      Height = 15
      Caption = 'Oficina:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcdptoid: TwwDBLookupCombo
      Left = 84
      Top = 14
      Width = 42
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcdptoidChange
    end
    object dblccodofi: TwwDBLookupCombo
      Left = 84
      Top = 36
      Width = 42
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsOfdes
      LookupField = 'OFDESID'
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblccodofiChange
    end
    object Panel12: TPanel
      Left = 143
      Top = 36
      Width = 200
      Height = 21
      Color = 13165023
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object meofides: TMaskEdit
        Left = 1
        Top = 1
        Width = 198
        Height = 19
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 143
      Top = 14
      Width = 200
      Height = 21
      Color = 13165023
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object medptodes: TMaskEdit
        Left = 1
        Top = 1
        Width = 198
        Height = 19
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object GBfecrec: TGroupBox
    Left = 5
    Top = 8
    Width = 351
    Height = 36
    Caption = 'Fecha de recepci'#243'n del expediente: '
    Enabled = False
    TabOrder = 22
    object DBDTPfecrecexp: TwwDBDateTimePicker
      Left = 194
      Top = 10
      Width = 101
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
      OnExit = DBDTPfecrecexpExit
    end
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '10.10.10.41'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 56
    Top = 77
  end
  object timerobsevaciones: TTimer
    Enabled = False
    OnTimer = timerobsevacionesTimer
    Left = 592
    Top = 428
  end
  object ppRReniec: TppReport
    AutoStop = False
    DataPipeline = ppBDEReniec
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 120
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 592
    Top = 461
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEReniec'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppShape41: TppShape
        UserName = 'Shape41'
        Brush.Color = 14341846
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 5556
        mmWidth = 125413
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label11'
        Caption = 'DATOS PERSONALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 41275
        mmTop = 6879
        mmWidth = 29845
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 129646
      mmPrintPosition = 0
      object ppShape31: TppShape
        UserName = 'Shape31'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 97631
        mmWidth = 83873
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 79111
        mmWidth = 83873
        BandType = 4
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 73025
        mmWidth = 83873
        BandType = 4
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 66940
        mmWidth = 83873
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 6350
        mmWidth = 83873
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 6350
        mmWidth = 40481
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 794
        mmWidth = 40480
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Nro. de Libro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 1059
        mmTop = 2116
        mmWidth = 16340
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Libreta Electoral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 1059
        mmTop = 7673
        mmWidth = 20490
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 12171
        mmWidth = 40481
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 12171
        mmWidth = 83873
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 18256
        mmWidth = 40481
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 18256
        mmWidth = 83873
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 24342
        mmWidth = 40481
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 24342
        mmWidth = 83873
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 41275
        mmTop = 36513
        mmWidth = 83873
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 36513
        mmWidth = 40481
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 30427
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Documento Sustentatorio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 1059
        mmTop = 32015
        mmWidth = 32047
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Lugar de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 38100
        mmWidth = 26162
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 30427
        mmWidth = 83873
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 42598
        mmWidth = 40481
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 42598
        mmWidth = 83873
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 48683
        mmWidth = 40481
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 48683
        mmWidth = 83873
        BandType = 4
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 54769
        mmWidth = 40481
        BandType = 4
      end
      object ppShape20: TppShape
        UserName = 'Shape101'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 54769
        mmWidth = 83873
        BandType = 4
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 66940
        mmWidth = 40481
        BandType = 4
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 60854
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Estatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 62442
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 68527
        mmWidth = 6392
        BandType = 4
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 60854
        mmWidth = 83873
        BandType = 4
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 73025
        mmWidth = 40481
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 79111
        mmWidth = 40481
        BandType = 4
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 85196
        mmWidth = 40481
        BandType = 4
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 85196
        mmWidth = 83873
        BandType = 4
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 97631
        mmWidth = 40481
        BandType = 4
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 91546
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Restricciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 93134
        mmWidth = 17060
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha de Inscripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 99219
        mmWidth = 26204
        BandType = 4
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 91546
        mmWidth = 83873
        BandType = 4
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 103717
        mmWidth = 40481
        BandType = 4
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 103717
        mmWidth = 83873
        BandType = 4
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 109802
        mmWidth = 40481
        BandType = 4
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 109802
        mmWidth = 83873
        BandType = 4
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 115888
        mmWidth = 40481
        BandType = 4
      end
      object ppShape40: TppShape
        UserName = 'Shape301'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 115888
        mmWidth = 83873
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Apellido Paterno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 1059
        mmTop = 13758
        mmWidth = 20785
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Apellido Materno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 1059
        mmTop = 19844
        mmWidth = 21209
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3259
        mmLeft = 1059
        mmTop = 25929
        mmWidth = 11514
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Nombre del Padre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 44186
        mmWidth = 22987
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Nombre de la Madre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 50006
        mmWidth = 25781
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Fecha de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1059
        mmTop = 56356
        mmWidth = 26839
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Estado Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 74613
        mmWidth = 14986
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Grado de Instrucci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 80698
        mmWidth = 26331
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Lugar de Domicilio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 86784
        mmWidth = 23495
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Constancia de Votaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 105304
        mmWidth = 29972
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha de Emisi'#243'n de Docum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 111390
        mmWidth = 37338
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 117475
        mmWidth = 11811
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 794
        mmWidth = 83873
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMLIB'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 2117
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DNI'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 7408
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'APEPAT'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 13494
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'APEMAT'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 19579
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'NOMBRE'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 25665
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'OTRDOC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 32015
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'LUGNAC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 37306
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'NOMPAD'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 43392
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'NOMMAD'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 49477
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FECNAC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 55563
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'LUGDOM'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 85990
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'GRAINS'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 79904
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'ESTCIV'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 73819
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'SEXO'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 67733
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'ESTATURA'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 62442
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'DIRECCION'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 116681
        mmWidth = 83344
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'FECEMIDOC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 110596
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'STAVOT'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 104511
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'FECINS'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 98425
        mmWidth = 71702
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'RESTRICCIONES'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 93134
        mmWidth = 71702
        BandType = 4
      end
      object ppFirma: TppImage
        UserName = 'Firma'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        mmHeight = 37571
        mmLeft = 117740
        mmTop = 58473
        mmWidth = 76729
        BandType = 4
      end
      object ppShape60: TppShape
        UserName = 'Shape60'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 265
        mmTop = 121973
        mmWidth = 40481
        BandType = 4
      end
      object ppShape61: TppShape
        UserName = 'Shape61'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 121973
        mmWidth = 83873
        BandType = 4
      end
      object ppLabel141: TppLabel
        UserName = 'Label208'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1323
        mmTop = 123031
        mmWidth = 8848
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'FLAG_EXPIRA'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 123031
        mmWidth = 71702
        BandType = 4
      end
      object ppFoto: TppImage
        UserName = 'Foto'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        mmHeight = 51329
        mmLeft = 141552
        mmTop = 2646
        mmWidth = 35190
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppBDEReniec: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'BDEReniec'
    Left = 624
    Top = 461
  end
  object pprRetiro: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 640
    Top = 200
    Version = '7.02'
    mmColumnWidth = 197300
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 194205
      mmPrintPosition = 0
      object pplasodir: TppLabel
        UserName = 'lasodir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 95515
        mmTop = 71173
        mmWidth = 106892
        BandType = 0
      end
      object ppldepdir: TppLabel
        UserName = 'lasodir1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 94192
        mmWidth = 33602
        BandType = 0
      end
      object pplprodir: TppLabel
        UserName = 'lasodir2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 113242
        mmTop = 82815
        mmWidth = 37042
        BandType = 0
      end
      object ppldisdir: TppLabel
        UserName = 'lasodir3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 43127
        mmTop = 82815
        mmWidth = 30946
        BandType = 0
      end
      object pplasotelfij: TppLabel
        UserName = 'lasotelfij'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 114829
        mmTop = 94192
        mmWidth = 19050
        BandType = 0
      end
      object pplasotelcel: TppLabel
        UserName = 'lasotelfij1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 156634
        mmTop = 94192
        mmWidth = 19050
        BandType = 0
      end
      object ppldiacese: TppLabel
        UserName = 'ldiacese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 112977
        mmWidth = 5821
        BandType = 0
      end
      object pplmescese: TppLabel
        UserName = 'lmescese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 112977
        mmWidth = 18256
        BandType = 0
      end
      object pplanocese: TppLabel
        UserName = 'lanocese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 73025
        mmTop = 112977
        mmWidth = 12700
        BandType = 0
      end
      object pplcenedu: TppLabel
        UserName = 'lano1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 130175
        mmTop = 112977
        mmWidth = 69056
        BandType = 0
      end
      object ppldiscenedu: TppLabel
        UserName = 'ldiscenedu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112184
        mmTop = 124090
        mmWidth = 38894
        BandType = 0
      end
      object pplprocenedu: TppLabel
        UserName = 'lprocenedu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 134144
        mmWidth = 31485
        BandType = 0
      end
      object ppldepcenedu: TppLabel
        UserName = 'ldepcenedu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 105569
        mmTop = 134144
        mmWidth = 33602
        BandType = 0
      end
      object ppldianom: TppLabel
        UserName = 'ldiacese1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 28046
        mmTop = 142082
        mmWidth = 7144
        BandType = 0
      end
      object pplmesnom: TppLabel
        UserName = 'lmescese1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 48948
        mmTop = 142082
        mmWidth = 21696
        BandType = 0
      end
      object pplanonom: TppLabel
        UserName = 'lanocese1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 92075
        mmTop = 142082
        mmWidth = 15875
        BandType = 0
      end
      object pplciudad: TppLabel
        UserName = 'lciudad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 44979
        mmTop = 190236
        mmWidth = 73290
        BandType = 0
      end
      object ppLAsopenomR: TppLabel
        UserName = 'LAsopenomR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24342
        mmTop = 59002
        mmWidth = 75406
        BandType = 0
      end
      object ppLASODNIR: TppLabel
        UserName = 'LASODNIR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 36248
        mmTop = 71173
        mmWidth = 17187
        BandType = 0
      end
      object ppLASOCODMODR: TppLabel
        UserName = 'LASOCODMODR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 50006
        mmTop = 102659
        mmWidth = 23537
        BandType = 0
      end
      object ppLRESCESE: TppLabel
        UserName = 'LRESCESE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 156369
        mmTop = 102659
        mmWidth = 17738
        BandType = 0
      end
      object ppLRESNOM: TppLabel
        UserName = 'LRESNOM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 20108
        mmTop = 151077
        mmWidth = 17738
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object pprFallecimiento: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 688
    Top = 200
    Version = '7.02'
    mmColumnWidth = 197300
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 210080
      mmPrintPosition = 0
      object ppLasodirF1: TppLabel
        UserName = 'lasodir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 150019
        mmTop = 118534
        mmWidth = 49477
        BandType = 0
      end
      object ppLasodepF: TppLabel
        UserName = 'lasodir1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 50006
        mmTop = 137054
        mmWidth = 33602
        BandType = 0
      end
      object ppLasoproF: TppLabel
        UserName = 'lasodir2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 166952
        mmTop = 127529
        mmWidth = 32279
        BandType = 0
      end
      object ppLAsodisF: TppLabel
        UserName = 'lasodir3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 105040
        mmTop = 128059
        mmWidth = 30956
        BandType = 0
      end
      object ppLdiaresfall: TppLabel
        UserName = 'ldiacese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 49213
        mmTop = 144992
        mmWidth = 5821
        BandType = 0
      end
      object ppLmesresfal: TppLabel
        UserName = 'lmescese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 144992
        mmWidth = 18256
        BandType = 0
      end
      object ppLanoresfal: TppLabel
        UserName = 'lanocese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96044
        mmTop = 144992
        mmWidth = 12700
        BandType = 0
      end
      object ppLasocenedufal: TppLabel
        UserName = 'lano1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 49742
        mmTop = 154252
        mmWidth = 85196
        BandType = 0
      end
      object pplciudadfal: TppLabel
        UserName = 'ldiscenedu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 58208
        mmTop = 205317
        mmWidth = 56092
        BandType = 0
      end
      object ppLdisasoceneduF: TppLabel
        UserName = 'lprocenedu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174096
        mmTop = 154252
        mmWidth = 27781
        BandType = 0
      end
      object ppLproasoceneduF: TppLabel
        UserName = 'ldepcenedu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 49213
        mmTop = 161132
        mmWidth = 33602
        BandType = 0
      end
      object ppLdianomfal: TppLabel
        UserName = 'ldiacese1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 169069
        mmWidth = 7144
        BandType = 0
      end
      object ppLmesnomfal: TppLabel
        UserName = 'lmescese1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56092
        mmTop = 169069
        mmWidth = 21696
        BandType = 0
      end
      object ppLanonomfal: TppLabel
        UserName = 'lanocese1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 88106
        mmTop = 169069
        mmWidth = 15875
        BandType = 0
      end
      object ppLasoapenomsol: TppLabel
        UserName = 'Lasoapenomsol'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 57944
        mmWidth = 97631
        BandType = 0
      end
      object ppLDNIsol: TppLabel
        UserName = 'Lasoapenomsol1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 36777
        mmTop = 67998
        mmWidth = 26797
        BandType = 0
      end
      object ppLasodirF2: TppLabel
        UserName = 'lasodir4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 17198
        mmTop = 128059
        mmWidth = 60071
        BandType = 0
      end
      object ppLdepAsoceneduF: TppLabel
        UserName = 'ldepcenedu1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 124884
        mmTop = 161132
        mmWidth = 38629
        BandType = 0
      end
      object ppLAsoapenomdniF: TppLabel
        UserName = 'LAsoapenomdniF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 20373
        mmTop = 110067
        mmWidth = 75396
        BandType = 0
      end
      object ppLASODNIF: TppLabel
        UserName = 'LASODNIF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 88106
        mmTop = 117211
        mmWidth = 17198
        BandType = 0
      end
      object ppLASOCODMODF: TppLabel
        UserName = 'LASOCODMODF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 145257
        mmTop = 137054
        mmWidth = 23537
        BandType = 0
      end
      object ppLasoresceseF: TppLabel
        UserName = 'lprocenedu1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 144992
        mmWidth = 20638
        BandType = 0
      end
      object ppLasoresnomF: TppLabel
        UserName = 'lprocenedu2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 174096
        mmTop = 169069
        mmWidth = 20108
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
