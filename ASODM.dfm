object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 50
  Top = 25
  Height = 728
  Width = 1273
  object cdsCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuotas'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 420
    Top = 5
  end
  object dsCuotas: TwwDataSource
    DataSet = cdsCuotas
    Left = 420
    Top = 17
  end
  object cdsSolicitud: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSolicitud'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'CREMTOPAG'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 478
    Top = 5
  end
  object dsSolicitud: TwwDataSource
    DataSet = cdsSolicitud
    Left = 478
    Top = 17
  end
  object cdsAso: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 532
    Top = 5
  end
  object dsAso: TwwDataSource
    DataSet = cdsAso
    Left = 532
    Top = 17
  end
  object cdsUsuarios: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'USERID'
    Params = <>
    ProviderName = 'dspUsuario'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 66
    Top = 5
  end
  object dsUsuarios: TwwDataSource
    DataSet = cdsUsuarios
    Left = 634
    Top = 73
  end
  object cdsGrupos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 136
    Top = 5
  end
  object dsGrupos: TwwDataSource
    DataSet = cdsGrupos
    Left = 136
    Top = 17
  end
  object cdsMGrupo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMGrupo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 196
    Top = 5
  end
  object dsMGrupo: TwwDataSource
    DataSet = cdsMGrupo
    Left = 196
    Top = 17
  end
  object cdsAcceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcceso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 259
    Top = 5
  end
  object dsAcceso: TwwDataSource
    DataSet = cdsAcceso
    Left = 259
    Top = 17
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 308
    Top = 5
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 308
    Top = 17
  end
  object cdsUSES: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUSES'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 460
    Top = 443
  end
  object dsUSES: TwwDataSource
    DataSet = cdsUSES
    Left = 463
    Top = 457
  end
  object cdsUPro: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 580
    Top = 5
  end
  object dsUPro: TwwDataSource
    DataSet = cdsUPro
    Left = 581
    Top = 17
  end
  object cdsUPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1279
    Top = 9
  end
  object dsUPago: TwwDataSource
    DataSet = cdsUPago
    Left = 1281
    Top = 21
  end
  object cdsTResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 16
    Top = 57
  end
  object dsTResol: TwwDataSource
    DataSet = cdsTResol
    Left = 19
    Top = 69
  end
  object cdsTPension: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTPension'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 71
    Top = 65
  end
  object dsTPension: TwwDataSource
    DataSet = cdsTPension
    Left = 72
    Top = 77
  end
  object cdsTAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 392
    Top = 65
  end
  object dsTAso: TwwDataSource
    DataSet = cdsTAso
    Left = 394
    Top = 77
  end
  object cdsSAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1031
    Top = 6
  end
  object dsSAso: TwwDataSource
    DataSet = cdsSAso
    Left = 1032
    Top = 18
  end
  object cdsCEdu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCEdu'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1080
    Top = 7
  end
  object dsCEdu: TwwDataSource
    DataSet = cdsCEdu
    Left = 1080
    Top = 19
  end
  object cdsCAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1176
    Top = 9
  end
  object dsCAso: TwwDataSource
    DataSet = cdsCAso
    Left = 1176
    Top = 21
  end
  object cdsTUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTUSE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1226
    Top = 9
  end
  object dsTUSE: TwwDataSource
    DataSet = cdsTUSE
    Left = 1226
    Top = 21
  end
  object cdsCViv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCViv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1128
    Top = 9
  end
  object dsCViv: TwwDataSource
    DataSet = cdsCViv
    Left = 1128
    Top = 21
  end
  object cdsDpto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDpto'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 123
    Top = 127
  end
  object dsDpto: TwwDataSource
    DataSet = cdsDpto
    Left = 123
    Top = 143
  end
  object dsTVia: TwwDataSource
    DataSet = cdsTVia
    Left = 169
    Top = 143
  end
  object cdsTVia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTVia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 169
    Top = 127
  end
  object cdsDist: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDist'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 215
    Top = 127
  end
  object dsDist: TwwDataSource
    DataSet = cdsDist
    Left = 216
    Top = 143
  end
  object dsTZona: TwwDataSource
    DataSet = cdsTZona
    Left = 135
    Top = 77
  end
  object cdsTZona: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTZona'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 132
    Top = 65
  end
  object cdsBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 185
    Top = 65
  end
  object dsBcos: TwwDataSource
    DataSet = cdsBcos
    Left = 185
    Top = 77
  end
  object dsTDoc: TwwDataSource
    DataSet = cdsTDoc
    Left = 238
    Top = 77
  end
  object cdsTDoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTDoc'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 235
    Top = 65
  end
  object dsUbigeo: TwwDataSource
    DataSet = cdsUbigeo
    Left = 292
    Top = 77
  end
  object cdsUbigeo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUbigeo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 289
    Top = 65
  end
  object dsProvin: TwwDataSource
    DataSet = cdsProvin
    Left = 23
    Top = 143
  end
  object cdsProvin: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProvin'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 21
    Top = 127
  end
  object dsEstCiv: TwwDataSource
    DataSet = cdsEstCiv
    Left = 76
    Top = 143
  end
  object cdsEstCiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEstCiv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 73
    Top = 127
  end
  object cdsPais: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPais'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 263
    Top = 127
  end
  object dsPais: TwwDataSource
    DataSet = cdsPais
    Left = 263
    Top = 143
  end
  object dsGradoI: TwwDataSource
    DataSet = cdsGradoI
    Left = 311
    Top = 143
  end
  object cdsGradoI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoI'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 311
    Top = 127
  end
  object dsGradoA: TwwDataSource
    DataSet = cdsGradoA
    Left = 367
    Top = 143
  end
  object cdsGradoA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoA'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 367
    Top = 127
  end
  object dsProf: TwwDataSource
    DataSet = cdsProf
    Left = 414
    Top = 143
  end
  object cdsProf: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProf'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 422
    Top = 127
  end
  object dsTRela: TwwDataSource
    DataSet = cdsTRela
    Left = 462
    Top = 143
  end
  object cdsTRela: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRela'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 470
    Top = 127
  end
  object dsSitCta: TwwDataSource
    DataSet = cdsSitCta
    Left = 516
    Top = 143
  end
  object cdsSitCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitCta'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 524
    Top = 127
  end
  object dsInt: TwwDataSource
    DataSet = cdsInt
    Left = 569
    Top = 143
  end
  object cdsInt: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvInt'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 577
    Top = 127
  end
  object dsTipAmort: TwwDataSource
    DataSet = cdsTipAmort
    Left = 629
    Top = 143
  end
  object cdsTipAmort: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipAmort'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 629
    Top = 127
  end
  object dsTipCuota: TwwDataSource
    DataSet = cdsTipCuota
    Left = 24
    Top = 206
  end
  object cdsTipCuota: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipCalcInt'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 24
    Top = 192
  end
  object dsTipCre: TwwDataSource
    DataSet = cdsTipCre
    Left = 83
    Top = 206
  end
  object cdsTipCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'TIPCREINT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREFLAT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMORA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPGRA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPERI'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRESEG'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREGADM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPOR'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOMP'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 83
    Top = 192
  end
  object dsTipDesem: TwwDataSource
    DataSet = cdsTipDesem
    Left = 146
    Top = 206
  end
  object cdsTipDesem: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipDesem'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 146
    Top = 192
  end
  object dsSitCre: TwwDataSource
    DataSet = cdsSitCre
    Left = 207
    Top = 206
  end
  object cdsSitCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 207
    Top = 192
  end
  object dsSexo: TwwDataSource
    DataSet = cdsSexo
    Left = 260
    Top = 206
  end
  object cdsSexo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 260
    Top = 192
  end
  object dsAgencias: TwwDataSource
    DataSet = cdsAgencias
    Left = 316
    Top = 206
  end
  object cdsAgencias: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgencias'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 316
    Top = 192
  end
  object dsTMoneda: TwwDataSource
    DataSet = cdsTMoneda
    Left = 435
    Top = 206
  end
  object cdsTMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 435
    Top = 192
  end
  object dsFPago: TwwDataSource
    DataSet = cdsFPago
    Left = 376
    Top = 206
  end
  object cdsFPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 376
    Top = 192
  end
  object dsConsulta: TwwDataSource
    DataSet = cdsConsulta
    Left = 502
    Top = 206
  end
  object cdsConsulta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvConsulta'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 503
    Top = 192
  end
  object cdsAsociados: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 575
    Top = 192
  end
  object dsAsociados: TwwDataSource
    DataSet = cdsAsociados
    Left = 575
    Top = 206
  end
  object cdsTGarantia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGarantia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 781
    Top = 253
  end
  object dsTGarantia: TwwDataSource
    DataSet = cdsTGarantia
    Left = 781
    Top = 268
  end
  object cdsGarantia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGarantia'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 716
    Top = 253
  end
  object dsGarantia: TwwDataSource
    DataSet = cdsGarantia
    Left = 716
    Top = 268
  end
  object cdsRecursos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRecursos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 848
    Top = 253
  end
  object dsRecursos: TwwDataSource
    DataSet = cdsRecursos
    Left = 848
    Top = 268
  end
  object cdsListaCred: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvListaCred'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'LISTAVIG'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 913
    Top = 253
  end
  object dsListaCred: TwwDataSource
    DataSet = cdsListaCred
    Left = 913
    Top = 268
  end
  object cdsRefTipoCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRefTipoCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 982
    Top = 253
  end
  object dsRefTipoCre: TwwDataSource
    DataSet = cdsRefTipoCre
    Left = 982
    Top = 268
  end
  object cdsAsoX: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAsoX'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 658
    Top = 317
  end
  object dsAsoX: TwwDataSource
    DataSet = cdsAsoX
    Left = 658
    Top = 331
  end
  object cdsUSESx: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'prvUSESx'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 277
    Top = 253
  end
  object dsUSESx: TwwDataSource
    DataSet = cdsUSESx
    Left = 277
    Top = 268
  end
  object cdsUSESy: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'prvUSESy'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 640
    Top = 192
  end
  object dsUSESy: TwwDataSource
    DataSet = cdsUSESy
    Left = 640
    Top = 206
  end
  object cdsAbonoCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAbonoCuotas'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'FNABONO;CheckBox;S;N')
    ValidateWithMask = True
    Left = 717
    Top = 317
  end
  object dsAbonoCuotas: TwwDataSource
    DataSet = cdsAbonoCuotas
    Left = 719
    Top = 331
  end
  object cdsAbonoCreditos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAbonoCreditos'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'MTOULTPAGO'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREMTOSOL'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CRENUMCUO'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CRECUOTA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREPERGRA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREMTOOTOR'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREMTOPAG'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CUOTAINI'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CRECAPPAG'#9'#######0.00'#9'T'#9'F')
    ValidateWithMask = True
    Left = 804
    Top = 317
  end
  object dsAbonoCreditos: TwwDataSource
    DataSet = cdsAbonoCreditos
    Left = 806
    Top = 331
  end
  object cdsFormaPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFormaPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 568
    Top = 253
  end
  object dsFormaPago: TwwDataSource
    DataSet = cdsFormaPago
    Left = 568
    Top = 268
  end
  object cdsExtornoPCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvExtornoPCab'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 35
    Top = 317
  end
  object dsExtornoPCab: TwwDataSource
    DataSet = cdsExtornoPCab
    Left = 35
    Top = 331
  end
  object cdsAsociados1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 112
    Top = 380
  end
  object dsAsociados1: TwwDataSource
    DataSet = cdsAsociados1
    Left = 112
    Top = 394
  end
  object cdsTMone: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 179
    Top = 380
  end
  object dsTmone: TwwDataSource
    DataSet = cdsTMone
    Left = 179
    Top = 394
  end
  object cdsReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 181
    Top = 317
  end
  object dsreclamo: TwwDataSource
    DataSet = cdsReclamo
    Left = 181
    Top = 331
  end
  object cdsUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUse'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 237
    Top = 317
  end
  object dsUSE: TwwDataSource
    DataSet = cdsUSE
    Left = 237
    Top = 331
  end
  object cdsTransCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 295
    Top = 317
  end
  object dstransCre: TwwDataSource
    DataSet = cdsTransCre
    Left = 295
    Top = 331
  end
  object cdsReporteExtorno: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrvExtornoPDet'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 377
    Top = 317
  end
  object dsReporteExtorno: TwwDataSource
    DataSet = cdsReporteExtorno
    Left = 377
    Top = 331
  end
  object cdsExtornoPDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrvExtornoPDet'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 890
    Top = 317
  end
  object dsExtornoPDet: TwwDataSource
    DataSet = cdsExtornoPDet
    Left = 890
    Top = 331
  end
  object cdsTCredito: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTCredito'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 643
    Top = 253
  end
  object dsTCredito: TwwDataSource
    DataSet = cdsTCredito
    Left = 643
    Top = 268
  end
  object cdsReclamoDCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoDCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 353
    Top = 253
  end
  object dsReclamoDCre: TwwDataSource
    DataSet = cdsReclamoDCre
    Left = 353
    Top = 268
  end
  object cdsReclamo1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 212
    Top = 253
  end
  object dsReclamo1: TwwDataSource
    DataSet = cdsReclamo1
    Left = 213
    Top = 268
  end
  object cdscarta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 152
    Top = 253
  end
  object dscarta: TwwDataSource
    DataSet = cdscarta
    Left = 152
    Top = 268
  end
  object cdsCbcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCbcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 97
    Top = 253
  end
  object dsCbcos: TwwDataSource
    DataSet = cdsCbcos
    Left = 99
    Top = 268
  end
  object cdsReclamoMotiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclMotivo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 445
    Top = 253
  end
  object dsReclamoMotiv: TwwDataSource
    DataSet = cdsReclamoMotiv
    Left = 445
    Top = 268
  end
  object cdsDevolucionCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDevolucionCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 633
    Top = 443
  end
  object dsDevolucionCre: TwwDataSource
    DataSet = cdsDevolucionCre
    Left = 634
    Top = 457
  end
  object cdsTransDevol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransDevol'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 717
    Top = 443
  end
  object dsTransDevol: TwwDataSource
    DataSet = cdsTransDevol
    Left = 718
    Top = 457
  end
  object cdsTransacciones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransaccion'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 563
    Top = 506
  end
  object dsTransacciones: TwwDataSource
    DataSet = cdsTransacciones
    Left = 563
    Top = 520
  end
  object cdsAgenciaBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAgenciaBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 799
    Top = 443
  end
  object dsAgenciaBco: TwwDataSource
    DataSet = cdsAgenciaBco
    Left = 800
    Top = 457
  end
  object cdsParam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvParam'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'PAPOVENC'#9'[*2[#]]'#9'T'#9'F'
      'PFINTMOR'#9'{S,N}'#9'T'#9'F'
      'PFINCOMP'#9'{S,N}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 637
    Top = 506
  end
  object dsParam: TwwDataSource
    DataSet = cdsParam
    Left = 637
    Top = 520
  end
  object cdsDeltaSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 1057
    Top = 631
  end
  object dsDeltaSet: TwwDataSource
    DataSet = cdsDeltaSet
    Left = 1057
    Top = 646
  end
  object cdsResultSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 547
    Top = 644
  end
  object cdsNotaAbono: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaAbono'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 484
    Top = 570
  end
  object dsNotaAbono: TwwDataSource
    DataSet = cdsNotaAbono
    Left = 484
    Top = 583
  end
  object cdsOficio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOficio'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 17
    Top = 570
  end
  object dsOficio: TwwDataSource
    DataSet = cdsOficio
    Left = 17
    Top = 583
  end
  object cdsReporte1: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 
      '                                        ccccccccccccccccccc     ' +
      '   cccvvvvvvvvvvvvvvvcv                                         ' +
      '                                                                ' +
      '                                                               '
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 601
    Top = 317
  end
  object dsReporte1: TwwDataSource
    DataSet = cdsReporte1
    Left = 601
    Top = 331
  end
  object cdsCreditoCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCreditoCab'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 537
    Top = 317
  end
  object dscreditocab: TwwDataSource
    DataSet = cdsCreditoCab
    Left = 537
    Top = 331
  end
  object cdsCia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 513
    Top = 253
  end
  object dsCia: TwwDataSource
    DataSet = cdsCia
    Left = 513
    Top = 268
  end
  object cdsTRFCreditos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFCreditos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 33
    Top = 380
  end
  object dsTRFCreditos: TwwDataSource
    DataSet = cdsTRFCreditos
    Left = 33
    Top = 394
  end
  object cdsTRFAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 113
    Top = 317
  end
  object cdsTRFCronog: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFCronog'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 249
    Top = 380
  end
  object cdsTRFPagos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFPagos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 393
    Top = 380
  end
  object dsTRFAso: TwwDataSource
    DataSet = cdsTRFAso
    Left = 113
    Top = 331
  end
  object dsTRFCronog: TwwDataSource
    DataSet = cdsTRFCronog
    Left = 251
    Top = 394
  end
  object dsTRFPagos: TwwDataSource
    DataSet = cdsTRFPagos
    Left = 396
    Top = 394
  end
  object cdsClientes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 194
    Top = 570
  end
  object dsClientes: TwwDataSource
    DataSet = cdsClientes
    Left = 194
    Top = 583
  end
  object cdsPagos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 538
    Top = 380
  end
  object dsPagos: TwwDataSource
    DataSet = cdsPagos
    Left = 538
    Top = 394
  end
  object cdsPrestamos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrestamos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 471
    Top = 380
  end
  object dsPrestamos: TwwDataSource
    DataSet = cdsPrestamos
    Left = 473
    Top = 394
  end
  object cdsDetPagos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetPagos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 666
    Top = 380
  end
  object dsDetPagos: TwwDataSource
    DataSet = cdsDetPagos
    Left = 666
    Top = 394
  end
  object cdsDLabo: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'prvDLabo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 18
    Top = 443
  end
  object dsDLabo: TwwDataSource
    DataSet = cdsDLabo
    Left = 19
    Top = 457
  end
  object cdsDFam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDFam'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 73
    Top = 443
  end
  object dsDFam: TwwDataSource
    DataSet = cdsDFam
    Left = 74
    Top = 457
  end
  object cdsResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 127
    Top = 443
  end
  object dsResol: TwwDataSource
    DataSet = cdsResol
    Left = 127
    Top = 457
  end
  object cdsCtasBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtasBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 184
    Top = 443
  end
  object dsCtasBco: TwwDataSource
    DataSet = cdsCtasBco
    Left = 185
    Top = 457
  end
  object dsCuentaEst: TwwDataSource
    DataSet = cdsCuentaEst
    Left = 253
    Top = 457
  end
  object cdsCuentaEst: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvCuentaEst'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 253
    Top = 443
  end
  object cdsDSocioE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDSocioE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 323
    Top = 443
  end
  object dsDSocioE: TwwDataSource
    DataSet = cdsDSocioE
    Left = 325
    Top = 457
  end
  object cdsReporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 324
    Top = 380
  end
  object dsReporte: TwwDataSource
    DataSet = cdsReporte
    Left = 326
    Top = 394
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 68
    Top = 570
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 68
    Top = 583
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 158
    Top = 506
  end
  object dsQry2: TwwDataSource
    DataSet = cdsQry2
    Left = 156
    Top = 520
  end
  object cdsBcoAgencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 269
    Top = 570
  end
  object dsBcoAgencia: TwwDataSource
    DataSet = cdsBcoAgencia
    Left = 269
    Top = 583
  end
  object cdsRelCapCuo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelCapCuo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 27
    Top = 506
  end
  object dsRelCapCuo: TwwDataSource
    DataSet = cdsRelCapCuo
    Left = 27
    Top = 520
  end
  object cdsTipCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'TIPCREINT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREFLAT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMORA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPGRA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPERI'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRESEG'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREGADM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPOR'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOMP'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 98
    Top = 506
  end
  object dsTipCreA: TwwDataSource
    DataSet = cdsTipCreA
    Left = 98
    Top = 520
  end
  object cdsListaCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvListaCred'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'LISTAVIG'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 217
    Top = 506
  end
  object dsListaCreA: TwwDataSource
    DataSet = cdsListaCreA
    Left = 217
    Top = 520
  end
  object cdsQry4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 924
    Top = 443
  end
  object dsQry4: TwwDataSource
    DataSet = cdsQry4
    Left = 925
    Top = 457
  end
  object dsOfDes: TwwDataSource
    DataSet = cdsOfdes
    Left = 331
    Top = 520
  end
  object cdsSaldoTlfnGrab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 405
    Top = 506
  end
  object dsSaldoTlfnGrab: TwwDataSource
    DataSet = cdsSaldoTlfnGrab
    Left = 407
    Top = 520
  end
  object cdsRegCxP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 605
    Top = 380
  end
  object dsRegCxP: TwwDataSource
    DataSet = cdsRegCxP
    Left = 605
    Top = 394
  end
  object cdsOfdes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOfDes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 331
    Top = 506
  end
  object cdsQry3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 277
    Top = 506
  end
  object dsQry3: TwwDataSource
    DataSet = cdsQry3
    Left = 277
    Top = 520
  end
  object dsInconsis: TwwDataSource
    Left = 857
    Top = 642
  end
  object qryDBF: TwwQuery
    DatabaseName = 'FOXSOL'
    ValidateWithMask = True
    Left = 806
    Top = 640
  end
  object cdsUser: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUser'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 847
    Top = 506
  end
  object dsUser: TwwDataSource
    DataSet = cdsUser
    Left = 847
    Top = 520
  end
  object cdsQry5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 133
    Top = 635
  end
  object dsQry5: TwwDataSource
    DataSet = cdsQry5
    Left = 133
    Top = 649
  end
  object cdsQry6: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 332
    Top = 635
  end
  object cdsQry7: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 383
    Top = 635
  end
  object dsQry6: TwwDataSource
    DataSet = cdsQry6
    Left = 335
    Top = 649
  end
  object dsQry7: TwwDataSource
    DataSet = cdsQry7
    Left = 385
    Top = 649
  end
  object cdsCNTCaja: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 407
    Top = 570
  end
  object dsCNTCaja: TwwDataSource
    DataSet = cdsCNTCaja
    Left = 408
    Top = 583
  end
  object cdsEgrCaja: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 459
    Top = 317
  end
  object dsEgrCaja: TwwDataSource
    DataSet = cdsEgrCaja
    Left = 459
    Top = 331
  end
  object cdsRec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 511
    Top = 443
  end
  object dsRec: TwwDataSource
    DataSet = cdsRec
    Left = 512
    Top = 457
  end
  object cdsUsuarioAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 706
    Top = 506
  end
  object cdsEstado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 487
    Top = 506
  end
  object cdsClientes2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 126
    Top = 570
  end
  object dsClientes2: TwwDataSource
    DataSet = cdsClientes2
    Left = 126
    Top = 583
  end
  object cdsMovCnt1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 783
    Top = 506
  end
  object cdsPadre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 683
    Top = 5
  end
  object dsPadre: TwwDataSource
    DataSet = cdsPadre
    Left = 683
    Top = 17
  end
  object cdsHijo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanDet'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 633
    Top = 5
  end
  object dsHijo: TwwDataSource
    DataSet = cdsHijo
    Left = 633
    Top = 17
  end
  object cdsNieto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrestamos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 342
    Top = 65
  end
  object dsNieto: TwwDataSource
    DataSet = cdsNieto
    Left = 342
    Top = 77
  end
  object cdsCuentas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtasBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 964
    Top = 317
  end
  object dsCuentas: TwwDataSource
    DataSet = cdsCuentas
    Left = 964
    Top = 331
  end
  object cdsClaCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 341
    Top = 570
  end
  object dsMovCnt1: TwwDataSource
    DataSet = cdsMovCnt1
    Left = 783
    Top = 520
  end
  object WS: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 691
    Top = 639
  end
  object ExcelBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 639
    Top = 642
  end
  object ExcelApp: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 747
    Top = 639
  end
  object cdsQry20: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 560
    Top = 443
  end
  object dsQry20: TwwDataSource
    DataSet = cdsQry20
    Left = 560
    Top = 457
  end
  object cdsQry22: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 732
    Top = 380
  end
  object dsQry22: TwwDataSource
    DataSet = cdsQry22
    Left = 732
    Top = 394
  end
  object cdsQry21: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1025
    Top = 193
  end
  object dsQry21: TwwDataSource
    DataSet = cdsQry21
    Left = 1027
    Top = 208
  end
  object cdsDetalle: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutdisk'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'MONTOTOT'#9'###,###,##0.00'#9'T'#9'F')
    ValidateWithMask = True
    Left = 16
    Top = 635
  end
  object dsDetalle: TwwDataSource
    DataSet = cdsDetalle
    Left = 16
    Top = 649
  end
  object cdsSobrino: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 76
    Top = 635
  end
  object dsSobrino: TwwDataSource
    DataSet = cdsSobrino
    Left = 76
    Top = 649
  end
  object dsCtaIndResAnoAnt: TwwDataSource
    DataSet = cdsCtaIndResAnoAnt
    Left = 947
    Top = 394
  end
  object cdsCtaIndResAnoAnt: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 946
    Top = 380
  end
  object cdsQry8: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 434
    Top = 635
  end
  object dsQry8: TwwDataSource
    DataSet = cdsQry8
    Left = 437
    Top = 649
  end
  object cdsQry24: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 786
    Top = 380
  end
  object dsQry24: TwwDataSource
    DataSet = cdsQry24
    Left = 786
    Top = 394
  end
  object cdsQry19: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1027
    Top = 380
  end
  object dsQry19: TwwDataSource
    DataSet = cdsQry19
    Left = 1028
    Top = 393
  end
  object cdsQry25: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1024
    Top = 317
  end
  object dsQry25: TwwDataSource
    DataSet = cdsQry25
    Left = 1024
    Top = 333
  end
  object cdsAsociado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 701
    Top = 192
  end
  object dsAsociado: TwwDataSource
    DataSet = cdsAsociado
    Left = 701
    Top = 206
  end
  object cdsCueInd: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CAPACU'
        DataType = ftFloat
      end
      item
        Name = 'INTERES'
        DataType = ftFloat
      end
      item
        Name = 'BONUS'
        DataType = ftFloat
      end
      item
        Name = 'APORTE'
        DataType = ftFloat
      end
      item
        Name = 'DEVOLUC'
        DataType = ftFloat
      end
      item
        Name = 'TOTACU'
        DataType = ftFloat
      end
      item
        Name = 'APOOFI'
        DataType = ftFloat
      end
      item
        Name = 'DEV'
        DataType = ftFloat
      end
      item
        Name = 'NIV'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 992
    Top = 634
    Data = {
      E70000009619E0BD01000000180000000C000000000003000000E70003414E4F
      0100490000000100055749445448020002001900034D45530100490000000100
      055749445448020002001400065553454E4F4D01004900000001000557494454
      4802000200140006434150414355080004000000000007494E54455245530800
      04000000000005424F4E555308000400000000000641504F5254450800040000
      000000074445564F4C5543080004000000000006544F54414355080004000000
      00000641504F4F46490800040000000000034445560800040000000000034E49
      5608000400000000000000}
  end
  object dsCueInd: TDataSource
    DataSet = cdsCueInd
    Left = 990
    Top = 672
  end
  object cdsExpLiq: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 867
    Top = 443
  end
  object dsExpLiq: TwwDataSource
    DataSet = cdsExpLiq
    Left = 868
    Top = 457
  end
  object cdsOficina: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 553
    Top = 570
  end
  object dsOficina: TwwDataSource
    DataSet = cdsOficina
    Left = 555
    Top = 583
  end
  object cdsDbgCPass: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 904
    Top = 570
  end
  object dsDbgCPass: TwwDataSource
    DataSet = cdsDbgCPass
    Left = 907
    Top = 583
  end
  object cdsCPass3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 617
    Top = 570
  end
  object dsCPass3: TwwDataSource
    DataSet = cdsCPass3
    Left = 618
    Top = 583
  end
  object cdsPass3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 772
    Top = 570
  end
  object dsPass3: TwwDataSource
    DataSet = cdsPass3
    Left = 775
    Top = 583
  end
  object cdscliente3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 833
    Top = 570
  end
  object dscliente3: TwwDataSource
    DataSet = cdscliente3
    Left = 836
    Top = 583
  end
  object cdsCreditos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 361
    Top = 5
  end
  object dsCreditos: TwwDataSource
    DataSet = cdsCreditos
    Left = 361
    Top = 17
  end
  object cdsPadron1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 744
    Top = 5
  end
  object dsPadron1: TwwDataSource
    DataSet = cdsPadron1
    Left = 744
    Top = 17
  end
  object cdsPadron2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 808
    Top = 5
  end
  object dsPadron2: TwwDataSource
    DataSet = cdsPadron2
    Left = 808
    Top = 17
  end
  object cdsInconsistencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 442
    Top = 65
  end
  object dsInconsistencia: TwwDataSource
    DataSet = cdsInconsistencia
    Left = 443
    Top = 77
  end
  object cdsPadrones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 750
    Top = 127
  end
  object dsPadrones: TwwDataSource
    DataSet = cdsPadrones
    Left = 750
    Top = 143
  end
  object cdsEstPadron: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 996
    Top = 127
  end
  object dsEstPadron: TwwDataSource
    DataSet = cdsEstPadron
    Left = 996
    Top = 143
  end
  object cdsCarLab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 690
    Top = 127
  end
  object dsCarLab: TwwDataSource
    DataSet = cdsCarLab
    Left = 690
    Top = 143
  end
  object cdsRegPen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 817
    Top = 127
  end
  object dsRegPen: TwwDataSource
    DataSet = cdsRegPen
    Left = 817
    Top = 143
  end
  object cdsPlanilla: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 932
    Top = 127
  end
  object dsPlanilla: TwwDataSource
    DataSet = cdsPlanilla
    Left = 932
    Top = 143
  end
  object cdsSitLab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 515
    Top = 65
  end
  object dsSitLab: TwwDataSource
    DataSet = cdsSitLab
    Left = 515
    Top = 77
  end
  object cdsUgelPadron: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 580
    Top = 65
  end
  object dsUgelPadron: TwwDataSource
    DataSet = cdsUgelPadron
    Left = 580
    Top = 77
  end
  object cdsTipSer: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 876
    Top = 127
  end
  object dsTipSer: TwwDataSource
    DataSet = cdsTipSer
    Left = 873
    Top = 143
  end
  object cdsCtaIndEstad: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 888
    Top = 192
  end
  object dsCtaIndEstad: TwwDataSource
    DataSet = cdsCtaIndEstad
    Left = 889
    Top = 206
  end
  object cdsCtaIndCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 853
    Top = 380
  end
  object dsCtaIndCab: TwwDataSource
    DataSet = cdsCtaIndCab
    Left = 853
    Top = 394
  end
  object cdsCtaIndAnoAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 914
    Top = 506
  end
  object dsCtaIndAnoAct: TwwDataSource
    DataSet = cdsCtaIndAnoAct
    Left = 917
    Top = 520
  end
  object cdsCtaIndApoCes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 695
    Top = 570
  end
  object dsCtaIndApoCes: TwwDataSource
    DataSet = cdsCtaIndApoCes
    Left = 697
    Top = 583
  end
  object cdsPropTel1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 768
    Top = 192
  end
  object dsPropTel1: TwwDataSource
    DataSet = cdsPropTel1
    Left = 768
    Top = 207
  end
  object cdsPropTel2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 962
    Top = 192
  end
  object dsPropTel2: TwwDataSource
    DataSet = cdsPropTel2
    Left = 962
    Top = 206
  end
  object cdsLeyPen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1108
    Top = 628
  end
  object dsLeyPen: TwwDataSource
    DataSet = cdsLeyPen
    Left = 1116
    Top = 642
  end
  object cdsUnidadPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 973
    Top = 444
  end
  object dsUnidadPago: TwwDataSource
    DataSet = cdsUnidadPago
    Left = 973
    Top = 457
  end
  object cdsUnidadProceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1008
    Top = 506
  end
  object dsUnidadProceso: TwwDataSource
    DataSet = cdsUnidadProceso
    Left = 1008
    Top = 520
  end
  object cdsUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 825
    Top = 193
  end
  object dsUgel: TwwDataSource
    DataSet = cdsUgel
    Left = 824
    Top = 209
  end
  object cdsDepartamento: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 985
    Top = 570
  end
  object dsDepartamento: TwwDataSource
    DataSet = cdsDepartamento
    Left = 985
    Top = 583
  end
  object dsFsc01: TwwDataSource
    DataSet = cdsFsc01
    Left = 868
    Top = 17
  end
  object cdsFsc01: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 868
    Top = 5
  end
  object cdsFsc02: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 924
    Top = 5
  end
  object dsFsc02: TwwDataSource
    DataSet = cdsFsc02
    Left = 924
    Top = 17
  end
  object cdsFsc03: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 980
    Top = 5
  end
  object dsFsc03: TwwDataSource
    DataSet = cdsFsc03
    Left = 980
    Top = 17
  end
  object cdsAutDesONP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 198
    Top = 635
  end
  object dsAutDesONP: TwwDataSource
    DataSet = cdsAutDesONP
    Left = 198
    Top = 649
  end
  object cdsCorrONP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 272
    Top = 635
  end
  object dsCorrONP: TwwDataSource
    DataSet = cdsCorrONP
    Left = 272
    Top = 649
  end
  object cdsAutDesReg: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 31
    Top = 253
  end
  object dsAutDesReg: TwwDataSource
    DataSet = cdsAutDesReg
    Left = 32
    Top = 267
  end
  object cdsExpCenEdu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 395
    Top = 443
  end
  object dsExpCenEdu: TwwDataSource
    DataSet = cdsExpCenEdu
    Left = 395
    Top = 457
  end
  object DCOM1: TSocketConnection
    ServerGUID = '{CA1AB464-3325-4EAF-ADC4-B326CD27A8D4}'
    ServerName = 'SrvAplAso.srvDMAso'
    Left = 15
    Top = 7
  end
  object cdsTipTel02: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1159
    Top = 129
  end
  object dsTipTel02: TwwDataSource
    DataSet = cdsTipTel02
    Left = 1161
    Top = 141
  end
  object cdsTipTel01: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1106
    Top = 129
  end
  object dsTipTel01: TwwDataSource
    DataSet = cdsTipTel01
    Left = 1106
    Top = 141
  end
  object cdsUsuarioBloq: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1124
    Top = 565
  end
  object dsUsuarioBloq: TwwDataSource
    DataSet = cdsUsuarioBloq
    Left = 1124
    Top = 577
  end
  object cdsCamposValida: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1047
    Top = 513
  end
  object dsCamposValida: TwwDataSource
    DataSet = cdsCamposValida
    Left = 1049
    Top = 525
  end
  object cdsOfidesAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1031
    Top = 441
  end
  object dsOfidesAso: TwwDataSource
    DataSet = cdsOfidesAso
    Left = 1033
    Top = 453
  end
  object cdsVAL_DAT_ASO: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1055
    Top = 569
  end
  object dsVAL_DAT_ASO: TwwDataSource
    DataSet = cdsVAL_DAT_ASO
    Left = 1057
    Top = 581
  end
  object cdsValRegAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1165
    Top = 620
  end
  object dsValRegAso: TwwDataSource
    DataSet = cdsValRegAso
    Left = 1165
    Top = 633
  end
  object cdsCodLeyPen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1229
    Top = 620
  end
  object dsCodLeyPen: TwwDataSource
    DataSet = cdsCodLeyPen
    Left = 1229
    Top = 633
  end
  object dsTipoGes: TwwDataSource
    DataSet = cdsTipoGes
    Left = 696
    Top = 88
  end
  object cdsTipoGes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 688
    Top = 72
  end
  object dsEstadoAsig: TwwDataSource
    DataSet = cdsEstadoAsig
    Left = 752
    Top = 80
  end
  object cdsEstadoAsig: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 744
    Top = 72
  end
  object dsResponsable: TwwDataSource
    DataSet = cdsResponsable
    Left = 832
    Top = 88
  end
  object cdsResponsable: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 816
    Top = 72
  end
  object dsConsultaCartera: TwwDataSource
    DataSet = cdsConsultaCartera
    Left = 888
    Top = 88
  end
  object cdsConsultaCartera: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 880
    Top = 72
  end
  object dsColegio: TwwDataSource
    DataSet = cdsColegio
    Left = 960
    Top = 88
  end
  object cdsColegio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 944
    Top = 72
  end
  object dsTemp: TwwDataSource
    DataSet = cdsTemp
    Left = 1000
    Top = 80
  end
  object cdsTemp: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 992
    Top = 72
  end
  object dsConsultaHoja: TwwDataSource
    DataSet = cdsConsultaHoja
    Left = 1048
    Top = 80
  end
  object cdsConsultaHoja: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1040
    Top = 72
  end
  object cdsConsultaHojaDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1088
    Top = 72
  end
  object dsConsultaHojaDet: TwwDataSource
    DataSet = cdsConsultaHojaDet
    Left = 1096
    Top = 80
  end
  object cdsResultado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1160
    Top = 72
  end
  object dsResultado: TwwDataSource
    DataSet = cdsResultado
    Left = 1168
    Top = 80
  end
  object cdsConsultaResult: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1216
    Top = 72
  end
  object dsConsultaResult: TwwDataSource
    DataSet = cdsConsultaResult
    Left = 1224
    Top = 80
  end
  object dsNivelCono: TwwDataSource
    DataSet = cdsNivelCono
    Left = 1062
    Top = 136
  end
  object cdsNivelCono: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1054
    Top = 128
  end
  object dsNivelSat: TwwDataSource
    DataSet = cdsNivelSat
    Left = 1006
    Top = 136
  end
  object cdsNivelSat: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 998
    Top = 128
  end
  object cdsFiltro1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1087
    Top = 193
  end
  object dsFiltro1: TwwDataSource
    DataSet = cdsFiltro1
    Left = 1089
    Top = 205
  end
  object cdsFiltro2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1127
    Top = 193
  end
  object dsFiltro2: TwwDataSource
    DataSet = cdsFiltro2
    Left = 1129
    Top = 205
  end
  object cdsFiltro3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1175
    Top = 193
  end
  object dsFiltro3: TwwDataSource
    DataSet = cdsFiltro3
    Left = 1177
    Top = 205
  end
  object cdsFiltro4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1215
    Top = 193
  end
  object dsFiltro4: TwwDataSource
    DataSet = cdsFiltro4
    Left = 1217
    Top = 205
  end
  object cdsFiltro5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1263
    Top = 193
  end
  object dsFiltro5: TwwDataSource
    DataSet = cdsFiltro5
    Left = 1265
    Top = 205
  end
  object cdsConsulta1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1041
    Top = 257
  end
  object dsConsulta1: TwwDataSource
    DataSet = cdsConsulta1
    Left = 1043
    Top = 269
  end
  object cdsConsulta2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1129
    Top = 257
  end
  object dsConsulta2: TwwDataSource
    DataSet = cdsConsulta2
    Left = 1131
    Top = 269
  end
  object cdsConsulta3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1185
    Top = 257
  end
  object dsConsulta3: TwwDataSource
    DataSet = cdsConsulta3
    Left = 1187
    Top = 269
  end
  object cdsConsulta4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1249
    Top = 257
  end
  object dsConsulta4: TwwDataSource
    DataSet = cdsConsulta4
    Left = 1251
    Top = 269
  end
  object cdsConsulta5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1297
    Top = 257
  end
  object dsConsulta5: TwwDataSource
    DataSet = cdsConsulta5
    Left = 1299
    Top = 269
  end
  object cdsTemp2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1087
    Top = 313
  end
  object dsTemp2: TwwDataSource
    DataSet = cdsTemp2
    Left = 1089
    Top = 325
  end
  object cdsTemp3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1111
    Top = 313
  end
  object dsTemp3: TwwDataSource
    DataSet = cdsTemp3
    Left = 1113
    Top = 325
  end
  object cdsDocPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem9'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'TMONID;CustomEdit;dblcMoneda'
      'DETCPAG;CustomEdit;dbeTC'
      'DEMTOLOC;CustomEdit;dbeMPL'
      'DEMTOEXT;CustomEdit;dbeMPE')
    ValidateWithMask = True
    Left = 1224
    Top = 560
  end
  object dsDocPago: TwwDataSource
    DataSet = cdsDocPago
    Left = 1225
    Top = 573
  end
  object cdsRepCCIDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1124
    Top = 374
  end
  object dsRepCCIDet: TwwDataSource
    DataSet = cdsRepCCIDet
    Left = 1124
    Top = 391
  end
  object cdsRepCCI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1125
    Top = 442
  end
  object dsRepCCI: TwwDataSource
    DataSet = cdsRepCCI
    Left = 1125
    Top = 456
  end
  object cdsCodPrestacion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1213
    Top = 380
  end
  object dsCodPrestacion: TwwDataSource
    DataSet = cdsCodPrestacion
    Left = 1213
    Top = 393
  end
  object cdsAutCADAPS: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1213
    Top = 468
  end
  object dsAutCADAPS: TwwDataSource
    DataSet = cdsAutCADAPS
    Left = 1213
    Top = 481
  end
  object cdsResolucionHist: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1247
    Top = 128
  end
  object dsResolucionHist: TwwDataSource
    DataSet = cdsResolucionHist
    Left = 1287
    Top = 134
  end
  object dsCabLiq: TwwDataSource
    DataSet = cdsCabLiq
    Left = 1458
    Top = 48
  end
  object cdsCabLiq: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1450
    Top = 7
  end
  object cdsQry26: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1431
    Top = 494
  end
  object dsQry26: TwwDataSource
    DataSet = cdsQry26
    Left = 1431
    Top = 512
  end
  object cdsQry23: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1436
    Top = 558
  end
  object dsQry23: TwwDataSource
    DataSet = cdsQry23
    Left = 1435
    Top = 576
  end
  object cdsBanco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBancos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1435
    Top = 624
  end
  object dsBanco: TwwDataSource
    DataSet = cdsBanco
    Left = 1435
    Top = 640
  end
  object cdsTipoMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1436
    Top = 625
  end
  object dsTipoMoneda: TwwDataSource
    DataSet = cdsTipoMoneda
    Left = 1436
    Top = 642
  end
  object dsFonSol: TDataSource
    DataSet = cdsFonSol
    Left = 1389
    Top = 66
  end
  object cdsFonSol: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUM_DEU'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NRO_REF_FSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FEC_APL_FSC'
        DataType = ftDate
      end
      item
        Name = 'IMP_COB_FSC'
        DataType = ftCurrency
      end
      item
        Name = 'IMP_SAL_FSC'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvQry'
    StoreDefs = True
    Left = 1390
    Top = 36
  end
  object cdsFonSolDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1439
    Top = 675
  end
  object dsFonSolDet: TwwDataSource
    DataSet = cdsFonSolDet
    Left = 1438
    Top = 690
  end
  object cdsTipBenef: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1380
    Top = 411
  end
  object dsTipBenef: TwwDataSource
    DataSet = cdsTipBenef
    Left = 1380
    Top = 428
  end
  object cdsAgBco: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsAgBcoIndex2'
        Fields = 'AGENBCODES'
      end>
    IndexName = 'cdsAgBcoIndex2'
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    StoreDefs = True
    OnReconcileError = cdsMaestCartasReconcileError
    ValidateWithMask = True
    Left = 1377
    Top = 344
  end
  object dsAgBco: TwwDataSource
    DataSet = cdsAgBco
    Left = 1377
    Top = 360
  end
  object cdsQry15: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'PEDIDO;CustomEdit;dblcdPedido'
      'THRES;CustomEdit;dbeTHRes'
      'PESOCAB;CustomEdit;dbePesoCab'
      'PESOCABINS;CustomEdit;dbePesoCabIns')
    ValidateWithMask = True
    Left = 1376
    Top = 487
  end
  object dsQry15: TwwDataSource
    DataSet = cdsQry15
    Left = 1376
    Top = 503
  end
  object dsQry10: TwwDataSource
    DataSet = cdsQry10
    Left = 1475
    Top = 266
  end
  object cdsQry10: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'PEDIDO;CustomEdit;dblcdPedido'
      'THRES;CustomEdit;dbeTHRes'
      'PESOCAB;CustomEdit;dbePesoCab'
      'PESOCABINS;CustomEdit;dbePesoCabIns')
    ValidateWithMask = True
    Left = 1475
    Top = 246
  end
  object cdsMaestCartas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1380
    Top = 552
  end
  object dsMaestCartas: TwwDataSource
    DataSet = cdsMaestCartas
    Left = 1380
    Top = 568
  end
  object cdsDetCartas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1375
    Top = 615
  end
  object dsDetCartas: TwwDataSource
    DataSet = cdsDetCartas
    Left = 1376
    Top = 632
  end
  object dsDetCalLiq: TDataSource
    DataSet = cdsDetCalLiq
    Left = 1405
    Top = 136
  end
  object cdsDetCalLiq: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPDES'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1421
    Top = 128
    Data = {
      770000009619E0BD010000001800000004000000000003000000770004444553
      430100490000000100055749445448020002003C00054D4F4E544F0800040000
      0000000647524142415201004900000001000557494454480200020001000654
      495044455301004900000001000557494454480200020002000000}
  end
  object dsDetDev: TDataSource
    DataSet = cdsDetDev
    Left = 1413
    Top = 205
  end
  object cdsDetDev: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1415
    Top = 189
    Data = {
      750000009619E0BD010000001800000004000000000003000000750004444553
      430100490000000100055749445448020002003C00054D4F4E544F0800040000
      000000045449504F010049000000010005574944544802000200010006475241
      42415201004900000001000557494454480200020001000000}
  end
  object dsDetDes: TDataSource
    DataSet = cdsDetDes
    Left = 1415
    Top = 266
  end
  object cdsDetDes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CREDID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SDOACT'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1416
    Top = 251
    Data = {
      9F0000009619E0BD0100000018000000060000000000030000009F0004444553
      430100490000000100055749445448020002005A00054D4F4E544F0800040000
      000000045449504F010049000000010005574944544802000200140006435245
      4449440100490000000100055749445448020002000F00064752414241520100
      4900000001000557494454480200020001000653444F41435408000400000000
      000000}
  end
  object dsForPag: TDataSource
    DataSet = cdsForPag
    Left = 1432
    Top = 334
  end
  object cdsForPag: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'FORPAGID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BANCOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AGENBCOID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSLDNIBEN'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSNOMBRE'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'PVSLNCTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'APENOMTUT'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DOCIDETUT'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FECNACMEN'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'APEPATCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APEMATCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODRELCOB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'APEPATTUT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APEMATTUT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMTUT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DIRDOMCOB'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'CODZIPCOB'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TELFIJCOB'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TELMOVCOB'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'APECASCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMAILCOB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MOVCOB'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1431
    Top = 320
    Data = {
      140300009619E0BD01000000180000001B000000000003000000140304444553
      430100490000000100055749445448020002009600054D4F4E544F0800040000
      0000000A504F5243454E54414A45080004000000000008464F52504147494401
      004900000001000557494454480200020002000742414E434F49440100490000
      000100055749445448020002000200094147454E42434F494401004900000001
      000557494454480200020008000A5056534C444E4942454E0100490000000100
      055749445448020002000800095056534E4F4D42524501004900000001000557
      49445448020002005A00085056534C4E43544101004900000001000557494454
      48020002000A00094150454E4F4D545554010049000000010005574944544802
      0002005A0009444F434944455455540100490000000100055749445448020002
      000800094645434E41434D454E0100490000000100055749445448020002000A
      0006475241424152010049000000010005574944544802000200010009415045
      504154434F420100490000000100055749445448020002001E00094150454D41
      54434F420100490000000100055749445448020002001E00064E4F4D434F4201
      00490000000100055749445448020002001E0009434F4452454C434F42010049
      0000000100055749445448020002000200094150455041545455540100490000
      000100055749445448020002001E00094150454D415454555401004900000001
      00055749445448020002001E00064E4F4D545554010049000000010005574944
      5448020002001E0009444952444F4D434F420100490000000100055749445448
      02000200FA0009434F445A4950434F4201004900000001000557494454480200
      020006000954454C46494A434F42010049000000010005574944544802000200
      0F000954454C4D4F56434F420100490000000100055749445448020002000F00
      09415045434153434F420100490000000100055749445448020002001E000845
      4D41494C434F420100490000000100055749445448020002001400064D4F5643
      4F4201004900000001000557494454480200020014000000}
  end
  object dsRetJud: TDataSource
    DataSet = cdsRetJud
    Left = 1439
    Top = 402
  end
  object cdsRetJud: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'FORPAGID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BANCOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AGENBCOID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSLDNIBEN'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSNOMBRE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PVSLNCTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1440
    Top = 383
    Data = {
      200100009619E0BD01000000180000000A000000000003000000200104444553
      430100490000000100055749445448020002009600054D4F4E544F0800040000
      0000000A504F5243454E54414A45080004000000000008464F52504147494401
      004900000001000557494454480200020002000742414E434F49440100490000
      000100055749445448020002000200094147454E42434F494401004900000001
      000557494454480200020008000A5056534C444E4942454E0100490000000100
      055749445448020002000800095056534E4F4D42524501004900000001000557
      49445448020002003C00085056534C4E43544101004900000001000557494454
      48020002000A0006475241424152010049000000010005574944544802000200
      01000000}
  end
  object dsObs: TDataSource
    DataSet = cdsObs
    Left = 1471
    Top = 455
  end
  object cdsObs: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1462
    Top = 448
    Data = {
      5C0000009619E0BD0100000018000000030000000000030000005C0004444553
      43010049000000010005574944544802000200FA00054D4F4E544F0800040000
      0000000647524142415201004900000001000557494454480200020001000000}
  end
  object dsestapo: TDataSource
    DataSet = cdsestapo
    Left = 1297
    Top = 715
  end
  object cdsestapo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'APOANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'APOMES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'APOOFI'
        DataType = ftFloat
      end
      item
        Name = 'APOREC'
        DataType = ftFloat
      end
      item
        Name = 'DEV'
        DataType = ftFloat
      end
      item
        Name = 'NIV'
        DataType = ftFloat
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1296
    Top = 700
    Data = {
      B90000009619E0BD010000001800000008000000000003000000B9000641504F
      414E4F01004900000001000557494454480200020004000641504F4D45530100
      490000000100055749445448020002000200065553454E4F4D01004900000001
      000557494454480200020014000641504F4F464908000400000000000641504F
      5245430800040000000000034445560800040000000000034E49560800040000
      000000034D455301004900000001000557494454480200020014000000}
  end
  object cdsQryRegalo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 24
    Top = 617
  end
  object dsQryRegalo: TwwDataSource
    DataSet = cdsQryRegalo
    Left = 24
    Top = 631
  end
end
