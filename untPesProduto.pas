unit untPesProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadraoPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPesProduto = class(TfrmPadraoPesquisa)
    Label1: TLabel;
    edtCod: TEdit;
    Label2: TLabel;
    edtValor: TEdit;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesProduto: TfrmPesProduto;

implementation

{$R *.dfm}

uses untDtModel;

procedure TfrmPesProduto.btnSearchClick(Sender: TObject);
var vPesq: string;
begin
  inherited;
  vPesq := '';
  modulo.qryProduto.Close;

  vPesq := ' SELECT * FROM PRODUTO ' + ' WHERE IDPRODUTO IS NOT NULL ';

  if edtCod.Text <> '' then
    begin
      vPesq := vPesq + ' AND IDPRODUTO = ' + edtCod.Text ;
    end;

  if edtValor.Text <> '' then
  vPesq := vPesq + ' AND VALORPRODUTO LIKE ' + QuotedStr('%'+edtValor.text +'%');

  modulo.qryProduto.SQL.CommaText := vPesq;
  modulo.qryProduto.Open();



end;

end.
