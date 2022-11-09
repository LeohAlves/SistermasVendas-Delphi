inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited frmbotoes: TPanel
    inherited btnSearch: TBitBtn
      OnClick = btnSearchClick
    end
  end
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 15
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBECodigo
    end
    object Label2: TLabel
      Left = 15
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231'ao'
      FocusControl = DBEDesc
    end
    object Label3: TLabel
      Left = 15
      Top = 96
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEValor
    end
    object Label4: TLabel
      Left = 15
      Top = 136
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEQtde
    end
    object DBECodigo: TDBEdit
      Left = 15
      Top = 32
      Width = 134
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEDesc: TDBEdit
      Left = 15
      Top = 72
      Width = 654
      Height = 21
      DataField = 'DESCRPRODUTO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEValor: TDBEdit
      Left = 15
      Top = 112
      Width = 121
      Height = 21
      DataField = 'VALORPRODUTO'
      DataSource = dts
      TabOrder = 2
    end
    object DBEQtde: TDBEdit
      Left = 15
      Top = 155
      Width = 134
      Height = 21
      DataField = 'QTDEPRODUTO'
      DataSource = dts
      TabOrder = 3
    end
  end
  inherited dts: TDataSource
    DataSet = Modulo.qryProduto
    Left = 744
    Top = 104
  end
end
