inherited frmCadCidade: TfrmCadCidade
  Caption = 'Cadastro de Cidade'
  KeyPreview = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited frmbotoes: TPanel
    inherited btnAdd: TBitBtn
      Top = 6
      Default = True
      ExplicitTop = 6
    end
    inherited btnSearch: TBitBtn
      OnClick = btnSearchClick
    end
    inherited btnClose: TBitBtn
      Left = 748
      ExplicitLeft = 748
    end
    inherited btnAtt: TBitBtn
      OnClick = btnAttClick
    end
  end
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 32
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 40
      Width = 73
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 80
      Width = 321
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 120
      Width = 30
      Height = 21
      DataField = 'SIGLAESTADO'
      DataSource = dts
      TabOrder = 2
    end
  end
  inherited dts: TDataSource
    DataSet = Modulo.qryCidade
    Left = 776
    Top = 136
  end
end
