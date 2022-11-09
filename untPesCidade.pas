unit untPesCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadraoPesquisa, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPesCidade = class(TfrmPadraoPesquisa)
    Label1: TLabel;
    edtCode: TEdit;
    edtNome: TEdit;
    Label2: TLabel;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesCidade: TfrmPesCidade;

implementation

{$R *.dfm}

uses untDtModel;

procedure TfrmPesCidade.btnSearchClick(Sender: TObject);
var vPesq: string;
begin
  inherited;
  vPesq := '';
  modulo.qryCidade.Close;

  vPesq := ' SELECT * FROM CIDADE ' + ' WHERE IDCIDADE IS NOT NULL ';

  if edtCode.Text <> '' then
    begin
      vPesq := vPesq + ' AND IDCIDADE = ' + edtCode.Text;
    end;

  if edtNome.Text <> '' then
  vPesq := vPesq + ' AND NOMECIDADE LIKE ' + QuotedStr('%'+edtnome.text +'%');

  modulo.qryCidade.SQL.CommaText := vPesq;
  modulo.qryCidade.Open();



end;

end.
