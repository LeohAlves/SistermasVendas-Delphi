inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 8
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 86
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 126
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 166
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 206
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 22
      Width = 134
      Height = 21
      DataField = 'IDCLIENTE'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 62
      Width = 654
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 102
      Width = 654
      Height = 21
      DataField = 'ENDERCLIENTE'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 142
      Width = 264
      Height = 21
      DataField = 'CPFCLIENTE'
      DataSource = dts
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 182
      Width = 264
      Height = 21
      DataField = 'FONECLIENTE'
      DataSource = dts
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 222
      Width = 134
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      TabOrder = 5
    end
  end
  inherited dts: TDataSource
    DataSet = Modulo.qryCliente
    Left = 744
    Top = 128
  end
end
