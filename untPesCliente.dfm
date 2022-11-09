inherited frmPesCliente: TfrmPesCliente
  Caption = 'Pesquisa Cliente'
  ClientHeight = 265
  ClientWidth = 816
  ExplicitWidth = 832
  ExplicitHeight = 304
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 190
    Width = 816
    ExplicitTop = 186
    ExplicitWidth = 641
    inherited btnSearch: TBitBtn
      OnClick = btnSearchClick
    end
  end
  inherited dbgPesquisa: TDBGrid
    Width = 816
  end
  inherited pnlPesquisa: TPanel
    Width = 816
    Height = 70
    ExplicitLeft = -8
    ExplicitWidth = 940
    ExplicitHeight = 175
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 143
      Top = 19
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object edtNome: TEdit
      Left = 16
      Top = 38
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtCPF: TEdit
      Left = 143
      Top = 38
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  inherited dtsPesquisa: TDataSource
    DataSet = Modulo.qryCliente
    Left = 744
  end
end
