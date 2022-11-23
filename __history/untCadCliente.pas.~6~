unit untCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCliente = class(TfrmPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses untDtModel, untPesCliente;

procedure TfrmCadCliente.btnAddClick(Sender: TObject);
begin
  inherited;
    modulo.qryClienteIDCLIENTE.AsString :=  modulo.autoNum('IDCLIENTE' , 'CLIENTE' );
end;

procedure TfrmCadCliente.btnSearchClick(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TfrmPesCliente, frmPesCliente);
  frmPesCliente.Show;
end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
    modulo.qryCidade.Open();
end;

procedure TfrmCadCliente.FormDestroy(Sender: TObject);
begin
  inherited;
    modulo.qryCidade.Close();
end;

end.
