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
end
