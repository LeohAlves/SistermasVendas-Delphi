inherited frmPesProduto: TfrmPesProduto
  BorderIcons = []
  Caption = 'Pesquisa Produto'
  ClientHeight = 321
  ClientWidth = 660
  ExplicitWidth = 676
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 246
    Width = 660
    ExplicitTop = 186
    ExplicitWidth = 641
    inherited btnSearch: TBitBtn
      OnClick = btnSearchClick
    end
  end
  inherited dbgPesquisa: TDBGrid
    Width = 660
  end
  inherited pnlPesquisa: TPanel
    Width = 660
    Height = 126
    ExplicitWidth = 641
    ExplicitHeight = 66
    object Label1: TLabel
      Left = 16
      Top = 29
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 160
      Top = 29
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object edtCod: TEdit
      Left = 16
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 160
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  inherited dtsPesquisa: TDataSource
    DataSet = Modulo.qryProduto
  end
end
