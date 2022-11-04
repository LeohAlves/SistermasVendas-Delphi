inherited frmCadVenda: TfrmCadVenda
  Caption = 'Cadastro das Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = -8
    ExplicitTop = 87
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBECodigo
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEData
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 23
      Height = 13
      Caption = 'Hora'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DBETotal
    end
    object Label5: TLabel
      Left = 16
      Top = 176
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = DBEcodeCliente
    end
    object DBECodigo: TDBEdit
      Left = 16
      Top = 32
      Width = 41
      Height = 21
      DataField = 'IDVENDA'
      DataSource = dts
      TabOrder = 0
    end
    object DBEData: TDBEdit
      Left = 16
      Top = 72
      Width = 97
      Height = 21
      DataField = 'DATAVENDA'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 112
      Width = 73
      Height = 21
      DataField = 'HORAVENDA'
      DataSource = dts
      TabOrder = 2
    end
    object DBETotal: TDBEdit
      Left = 16
      Top = 152
      Width = 169
      Height = 21
      DataField = 'VALORVENDA'
      DataSource = dts
      TabOrder = 3
    end
    object DBEcodeCliente: TDBEdit
      Left = 16
      Top = 192
      Width = 41
      Height = 21
      DataField = 'IDCLIENTE'
      DataSource = dts
      TabOrder = 4
    end
    object DBECliente: TDBEdit
      Left = 63
      Top = 192
      Width = 122
      Height = 21
      Color = clMoneyGreen
      DataField = 'NOMECLIENTE'
      DataSource = dts
      ReadOnly = True
      TabOrder = 5
    end
  end
  inherited dts: TDataSource
    DataSet = Modulo.qryVenda
    Left = 632
    Top = 16
  end
end
