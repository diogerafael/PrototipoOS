unit UGraficoProdutividade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, VclTee.TeeGDIPlus, FireDAC.Stan.Intf, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf;

type
  TFrmGraficoProdutividade = class(TForm)
    DBChart1: TDBChart;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Series1: TPieSeries;
    lbl1: TLabel;
    shp1: TShape;
    img10: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficoProdutividade: TFrmGraficoProdutividade;

implementation

{$R *.dfm}

uses URelProdutividade;

procedure TFrmGraficoProdutividade.FormShow(Sender: TObject);
var
  sql:string;
begin
  FrmRelProdutividade.SetValorParametros;
  sql :=' SELECT sum(os.'+FrmRelProdutividade.FParametroTipoPost+') AS totalPostLevantador,'+
        ' f.nome_razaosocial,f.id,(SELECT sum(os_engenharia_projeto.'+FrmRelProdutividade.FParametroTipoPost+') FROM os_engenharia_projeto WHERE (os_engenharia_projeto.'+FrmRelProdutividade.FParametroData+' BETWEEN :dtini AND :dtfim)) AS totalGeral,'+
        ' count(os.id) AS qtdOS,(sum(os.'+FrmRelProdutividade.FParametroTipoPost+') / DATEDIFF(:dtfim, :dtini)) AS totalpordia,'+
        ' @rankNo :=@rankNo + 1 RankNo FROM os_engenharia_projeto AS os INNER JOIN cad_funcionarios AS f ON '+FrmRelProdutividade.FParametroJoin+' = f.Id, (SELECT @rankNo := 0) r '+
        ' WHERE (os.'+FrmRelProdutividade.FParametroData+' BETWEEN :dtini AND :dtfim) '; if FrmRelProdutividade.edtcodtecnico.Text<>''then sql:=sql+FrmRelProdutividade.FParametroPesquisaFunc;
        sql:=sql+' GROUP BY '+FrmRelProdutividade.FParametroJoin+' ORDER BY totalPostLevantador DESC,totalpordia desc ';
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add(sql);
  FDQuery1.ParamByName('dtini').AsDate   := FrmRelProdutividade.edtini.Date;
  FDQuery1.ParamByName('dtfim').AsDate   := FrmRelProdutividade.edtfim.Date;
  FDQuery1.Open();
end;

end.
