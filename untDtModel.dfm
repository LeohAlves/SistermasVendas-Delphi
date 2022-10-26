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
    Left = 112
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 8
  end
  object qryAutoNum: TFDQuery
    Connection = conn
    SQL.Strings = (
      ''
      '')
    Left = 216
    Top = 8
  end
  object qryCidade: TFDQuery
    Connection = conn
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 288
    Top = 8
    object qryCidadeIDCIDADE: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object qryCidadeNOMECIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 50
    end
    object qryCidadeSIGLAESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'SIGLAESTADO'
      Origin = 'SIGLAESTADO'
      Size = 2
    end
  end
end
