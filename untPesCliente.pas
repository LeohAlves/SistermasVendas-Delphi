unit untPesCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadraoPesquisa, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPesCliente = class(TfrmPadraoPesquisa)
    edtNome: TEdit;
    Label1: TLabel;
    edtCPF: TEdit;
    Label2: TLabel;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesCliente: TfrmPesCliente;

implementation

{$R *.dfm}

uses untDtModel;

procedure TfrmPesCliente.btnSearchClick(Sender: TObject);
var vPesq: string;
begin
  inherited;
  vPesq := '';
  modulo.qryCliente.Close;

  vPesq := ' SELECT * FROM CLIENTE ' + ' WHERE IDCliente IS NOT NULL ';

  if edtCPF.Text <> '' then
    begin
      vPesq := vPesq + ' AND CPFCLIENTE LIKE ' + QuotedStr('%'+ edtCPF.Text + '');
    end;

  if edtNome.Text <> '' then
  vPesq := vPesq + ' AND NOMECLIENTE LIKE ' + QuotedStr('%'+edtnome.text +'%');

  modulo.qryCliente.SQL.CommaText := vPesq;
  modulo.qryCliente.Open();



end;
end.
