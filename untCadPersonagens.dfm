inherited frmCadPersonagens: TfrmCadPersonagens
  Caption = 'Cadastro Personagens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbg: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPERSO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPERSO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoElemento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoArma'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoRaridade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoGenero'
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 40
      Top = 80
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 41
      Top = 117
      Width = 44
      Height = 13
      Caption = 'Elemento'
    end
    object Label4: TLabel
      Left = 40
      Top = 160
      Width = 43
      Height = 13
      Caption = 'Raridade'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 40
      Top = 200
      Width = 25
      Height = 13
      Caption = 'Arma'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 40
      Top = 240
      Width = 35
      Height = 13
      Caption = 'Genero'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 56
      Width = 53
      Height = 21
      DataField = 'IDPERSO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 96
      Width = 134
      Height = 21
      DataField = 'NOMEPERSO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 40
      Top = 176
      Width = 53
      Height = 21
      DataField = 'RaridadeId'
      DataSource = dts
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 40
      Top = 216
      Width = 53
      Height = 21
      DataField = 'ArmaId'
      DataSource = dts
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 40
      Top = 256
      Width = 53
      Height = 21
      DataField = 'GeneroId'
      DataSource = dts
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 40
      Top = 133
      Width = 53
      Height = 21
      DataField = 'ElementoId'
      DataSource = dts
      ReadOnly = True
      TabOrder = 5
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox [3]
    Left = 98
    Top = 214
    Width = 145
    Height = 21
    DataField = 'TipoElemento'
    DataSource = dts
    TabOrder = 3
  end
  object DBLookupComboBox3: TDBLookupComboBox [4]
    Left = 98
    Top = 256
    Width = 145
    Height = 21
    DataField = 'TipoRaridade'
    DataSource = dts
    TabOrder = 4
  end
  object DBLookupComboBox4: TDBLookupComboBox [5]
    Left = 99
    Top = 297
    Width = 142
    Height = 21
    DataField = 'TipoArma'
    DataSource = dts
    TabOrder = 5
  end
  object DBLookupComboBox5: TDBLookupComboBox [6]
    Left = 98
    Top = 337
    Width = 145
    Height = 21
    DataField = 'TipoGenero'
    DataSource = dts
    TabOrder = 6
  end
  inherited dts: TDataSource
    DataSet = Modulo.qryPersonagens
    Left = 736
    Top = 128
  end
end
