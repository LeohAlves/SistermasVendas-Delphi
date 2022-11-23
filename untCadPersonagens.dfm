inherited frmCadPersonagens: TfrmCadPersonagens
  Caption = 'Cadastro Personagens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = -24
    ExplicitTop = 75
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 10
      Height = 13
      Caption = 'Id'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 89
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 44
      Height = 13
      Caption = 'Elemento'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 232
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Raridade'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 24
      Top = 112
      Width = 25
      Height = 13
      Caption = 'Arma'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 24
      Top = 152
      Width = 34
      Height = 13
      Caption = 'Modelo'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 24
      Top = 192
      Width = 35
      Height = 13
      Caption = 'G'#234'nero'
      FocusControl = DBEdit7
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 32
      Width = 44
      Height = 21
      DataField = 'IDPERSO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 89
      Top = 32
      Width = 125
      Height = 21
      DataField = 'NOMEPERSO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 88
      Width = 134
      Height = 21
      DataField = 'ELEMENTO'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 232
      Top = 32
      Width = 134
      Height = 21
      DataField = 'RARIDADE'
      DataSource = dts
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 128
      Width = 134
      Height = 21
      DataField = 'ARMA'
      DataSource = dts
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 24
      Top = 168
      Width = 134
      Height = 21
      DataField = 'MODELO'
      DataSource = dts
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 24
      Top = 208
      Width = 89
      Height = 21
      DataField = 'GENERO'
      DataSource = dts
      TabOrder = 6
    end
  end
  inherited dts: TDataSource
    DataSet = Modulo.qryPersonagens
    Left = 736
    Top = 128
  end
end
