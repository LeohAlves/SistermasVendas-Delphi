object Modulo: TModulo
  OldCreateOrder = False
  Height = 545
  Width = 1047
  object conn: TFDConnection
    Params.Strings = (
      'Database=VENDA'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\etec\Desktop\SistermasVendas-Delphi\libmysql.dll'
    Left = 216
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 104
    Top = 8
  end
  object qryAutoNum: TFDQuery
    Connection = conn
    SQL.Strings = (
      ''
      '')
    Left = 16
    Top = 96
  end
  object qryCidade: TFDQuery
    Active = True
    Connection = conn
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 104
    Top = 96
    object qryCidadeIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeNOMECIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 50
    end
    object qryCidadeSIGLAESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIGLAESTADO'
      Origin = 'SIGLAESTADO'
      Size = 2
    end
  end
  object qryProduto: TFDQuery
    Connection = conn
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 216
    Top = 96
    object qryProdutoIDPRODUTO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRPRODUTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231'ao'
      FieldName = 'DESCRPRODUTO'
      Origin = 'DESCRPRODUTO'
      Size = 50
    end
    object qryProdutoVALORPRODUTO: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      Precision = 8
      Size = 2
    end
    object qryProdutoQTDEPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDEPRODUTO'
      Origin = 'QTDEPRODUTO'
    end
  end
  object qryCliente: TFDQuery
    Active = True
    Connection = conn
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 272
    Top = 96
    object qryClienteIDCLIENTE: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 50
    end
    object qryClienteENDERCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERCLIENTE'
      Origin = 'ENDERCLIENTE'
      Size = 50
    end
    object qryClienteCPFCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'CPFCLIENTE'
      Origin = 'CPFCLIENTE'
      EditMask = '000\.000\.000\-00;1;'
    end
    object qryClienteFONECLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'FONECLIENTE'
      Origin = 'FONECLIENTE'
      EditMask = '\(00\) 00000-0000;1;_'
    end
    object qryClienteIDCIDADE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object qryClienteNOMECIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMECIDADE'
      LookupDataSet = qryCidade
      LookupKeyFields = 'IDCIDADE'
      LookupResultField = 'NOMECIDADE'
      KeyFields = 'IDCIDADE'
      Size = 50
      Lookup = True
    end
  end
  object ronan: TIdBlockCipherIntercept
    Left = 912
    Top = 504
  end
  object qryVenda: TFDQuery
    Connection = conn
    SQL.Strings = (
      'SELECT V.*,'
      '       C.NOMECLIENTE '
      ' FROM VENDA V,'
      '      CLIENTE C'
      'WHERE V.IDCLIENTE = C.IDCLIENTE')
    Left = 328
    Top = 96
    object qryVendaIDVENDA: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendaDATAVENDA: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryVendaHORAVENDA: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hora'
      FieldName = 'HORAVENDA'
      Origin = 'HORAVENDA'
    end
    object qryVendaVALORVENDA: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      FieldName = 'VALORVENDA'
      Origin = 'VALORVENDA'
      currency = True
      Precision = 8
      Size = 2
    end
    object qryVendaIDCLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object qryVendaNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
