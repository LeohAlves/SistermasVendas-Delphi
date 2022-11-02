unit untDtModel;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TModulo = class(TDataModule)
    conn: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryAutoNum: TFDQuery;
    qryCidade: TFDQuery;
    qryCidadeIDCIDADE: TIntegerField;
    qryCidadeNOMECIDADE: TStringField;
    qryCidadeSIGLAESTADO: TStringField;
    qryProduto: TFDQuery;
    qryProdutoIDPRODUTO: TIntegerField;
    qryProdutoDESCRPRODUTO: TStringField;
    qryProdutoVALORPRODUTO: TBCDField;
    qryProdutoQTDEPRODUTO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function autoNum(id, tabela: string): string;
  end;

var
  Modulo: TModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TModulo.autoNum(id, tabela: string): string;
var vSQL: string;
begin
    vSQL := '';
    qryAutoNum.Close;
    vSQL := ' SELECT MAX( ' + id + ') + 1 FROM ' + tabela;
    qryAutoNum.SQL.Text := vSQL;
    qryAutoNum.Open;
    if qryAutoNum.Fields[0].AsString= '' then
       autoNum := '1'
    else
       AutoNum := qryAutoNum.fields[0].AsString;
end;

end.
