inherited frmPesCidade: TfrmPesCidade
  BorderIcons = []
  Caption = 'Pesquisa Cidades'
  ClientHeight = 262
  ClientWidth = 461
  ExplicitWidth = 477
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 187
    Width = 461
    ExplicitTop = 187
    ExplicitWidth = 461
    inherited btnSearch: TBitBtn
      OnClick = btnSearchClick
    end
  end
  inherited dbgPesquisa: TDBGrid
    Width = 461
  end
  inherited pnlPesquisa: TPanel
    Width = 461
    Height = 67
    ExplicitWidth = 461
    ExplicitHeight = 67
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 75
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object edtCode: TEdit
      Left = 16
      Top = 35
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 72
      Top = 35
      Width = 136
      Height = 21
      TabOrder = 1
    end
  end
  inherited dtsPesquisa: TDataSource
    DataSet = Modulo.qryCidade
    Left = 288
    Top = 128
  end
end
