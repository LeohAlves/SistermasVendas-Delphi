unit untPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB;

type
  TfrmPadrao = class(TForm)
    frmbotoes: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnExcluir: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnSearch: TBitBtn;
    btnClose: TBitBtn;
    btnSelecionar: TBitBtn;
    dts: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure habilita(ativa: boolean);
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

procedure TfrmPadrao.btnAddClick(Sender: TObject);
begin
    dts.DataSet.Append;
    habilita(false)
end;

procedure TfrmPadrao.btnCancelClick(Sender: TObject);
begin
    dts.DataSet.Cancel;
    habilita(true)
end;

procedure TfrmPadrao.btnCloseClick(Sender: TObject);
begin
    close;
end;

procedure TfrmPadrao.btnEditClick(Sender: TObject);
begin
     dts.DataSet.Edit;
     habilita(false)
end;

procedure TfrmPadrao.btnExcluirClick(Sender: TObject);
begin
         if Application.MessageBox('Deseja Excluir ?','Confirme',
        MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
           dts.DataSet.Delete;
end;

procedure TfrmPadrao.btnSaveClick(Sender: TObject);
begin
    dts.DataSet.Post;
    habilita(true)
end;

procedure TfrmPadrao.habilita(ativa: boolean);
begin
    btnAdd.Enabled := ativa;
    btnEdit.Enabled := ativa;
    btnExcluir.Enabled:= ativa;
    btnSave.Enabled := not ativa;
    btnCancel.Enabled := not ativa;
    btnSearch.Enabled := ativa;
    btnSelecionar.Enabled :=  ativa;
    btnClose.Enabled :=  ativa;
end;

end.
