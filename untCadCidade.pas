unit untCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCidade = class(TfrmPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnAttClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

{$R *.dfm}

uses untDtModel, untPesCidade;

procedure TfrmCadCidade.btnAddClick(Sender: TObject);
begin
  inherited;
  modulo.qryCidadeIDCIDADE.AsString :=  modulo.autoNum('IDCIDADE' , 'CIDADE' );

end;

procedure TfrmCadCidade.btnAttClick(Sender: TObject);
var vPesq: string;
begin
  inherited;

  vPesq := '';
  modulo.qryCidade.Close;

  vPesq := ' SELECT * FROM cidade ' + ' WHERE IDCidade IS NOT NULL ';
  modulo.qryCidade.SQL.CommaText := vPesq;
  modulo.qryCidade.Open();

end;

procedure TfrmCadCidade.btnSearchClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesCidade, frmPesCidade);
  frmPesCidade.Show;
end;

end.
