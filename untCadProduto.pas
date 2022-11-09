unit untCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadProduto = class(TfrmPadrao)
    Label1: TLabel;
    DBECodigo: TDBEdit;
    Label2: TLabel;
    DBEDesc: TDBEdit;
    Label3: TLabel;
    DBEValor: TDBEdit;
    Label4: TLabel;
    DBEQtde: TDBEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses untDtModel, untPesProduto;

procedure TfrmCadProduto.btnAddClick(Sender: TObject);
begin
  inherited;
  modulo.qryProdutoIDPRODUTO.AsString :=  modulo.autoNum('IDPRODUTO' , 'PRODUTO' );
end;

procedure TfrmCadProduto.btnSearchClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesProduto, frmPesProduto);
  frmPesProduto.Show;
end;

end.
