object FConfirmarEstadoFallecidoDetalle: TFConfirmarEstadoFallecidoDetalle
  Left = 339
  Top = 141
  BorderStyle = bsDialog
  Caption = 'Confirmar Fallecidos - Detalle'
  ClientHeight = 397
  ClientWidth = 534
  Color = 10207162
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
  object lbl1: TLabel
    Left = 88
    Top = 53
    Width = 28
    Height = 13
    Caption = 'D.N.I.'
  end
  object lbl2: TLabel
    Left = 72
    Top = 78
    Width = 44
    Height = 13
    Caption = 'Asociado'
  end
  object lbl3: TLabel
    Left = 7
    Top = 103
    Width = 109
    Height = 13
    Caption = 'Fecha de Fallecimiento'
  end
  object lbl4: TLabel
    Left = 52
    Top = 128
    Width = 64
    Height = 13
    Caption = 'Solicitado por'
  end
  object lbl5: TLabel
    Left = 252
    Top = 130
    Width = 88
    Height = 13
    Caption = 'Fecha de Solicitud'
  end
  object lbl6: TLabel
    Left = 56
    Top = 157
    Width = 60
    Height = 13
    Caption = 'Observacion'
  end
  object lbl7: TLabel
    Left = 36
    Top = 8
    Width = 465
    Height = 24
    Caption = #191'Confirma que el siguiente asociado ha fallecido?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 5
    Top = 232
    Width = 521
    Height = 1
  end
  object lbl8: TLabel
    Left = 10
    Top = 236
    Width = 353
    Height = 13
    Caption = 'Ingrese el sustento ya sea para la Confirmaci'#243'n o el Rechazo.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMaxCaracteres: TLabel
    Left = 402
    Top = 332
    Width = 123
    Height = 13
    Alignment = taRightJustify
    BiDiMode = bdRightToLeft
    Caption = '0 de 1000 Car'#225'cteres'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object edDNI: TDBEdit
    Left = 120
    Top = 48
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edAsociado: TDBEdit
    Left = 120
    Top = 73
    Width = 345
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object edFechaFallecimiento: TDBEdit
    Left = 120
    Top = 99
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object edSolicitadoPor: TDBEdit
    Left = 120
    Top = 124
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edFechaSolicitud: TDBEdit
    Left = 344
    Top = 126
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object edObservacion: TDBMemo
    Left = 120
    Top = 152
    Width = 345
    Height = 73
    ReadOnly = True
    TabOrder = 5
  end
  object btnConfirmar: TButton
    Left = 9
    Top = 362
    Width = 185
    Height = 28
    Caption = 'SI, El asociado ha Fallecido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnConfirmarClick
  end
  object btnRechazar: TButton
    Left = 197
    Top = 362
    Width = 209
    Height = 28
    Caption = 'NO, El asociado no ha Fallecido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnRechazarClick
  end
  object edSustento: TMemo
    Left = 5
    Top = 251
    Width = 521
    Height = 73
    Lines.Strings = (
      'edSustento')
    MaxLength = 1000
    TabOrder = 8
    OnExit = edSustentoExit
    OnKeyPress = edSustentoKeyPress
  end
  object BitSalir: TBitBtn
    Left = 449
    Top = 362
    Width = 77
    Height = 28
    Caption = '&Salir'
    TabOrder = 9
    OnClick = BitSalirClick
    Kind = bkClose
  end
end
