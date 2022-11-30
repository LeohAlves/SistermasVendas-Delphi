unit untCadPersonagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadPersonagens = class(TfrmPadrao)
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPersonagens: TfrmCadPersonagens;

implementation

{$R *.dfm}

uses untDtModel;

procedure TfrmCadPersonagens.btnAddClick(Sender: TObject);
begin
  inherited;
  modulo.qryPersonagensIDPERSO.AsString :=  modulo.autoNum('IDPERSO' , 'Personagens' );

end;

procedure TfrmCadPersonagens.FormCreate(Sender: TObject);
begin
  inherited;
   modulo.qryPersonagens.Open();
end;

procedure TfrmCadPersonagens.FormDestroy(Sender: TObject);
begin
  inherited;
   modulo.qryPersonagens.Close();
end;

end.
