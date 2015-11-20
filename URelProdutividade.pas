unit URelProdutividade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, URelPadrao, Vcl.Menus, RDprint,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Samples.Gauges, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,FireDAC.Comp.Client, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFrmRelProdutividade = class(TFrmRelPadrao)
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl2: TLabel;
    edtini: TcxDateEdit;
    edtfim: TcxDateEdit;
    rgGroup: TRadioGroup;
    grpFuncionario: TGroupBox;
    edtdesctecnico: TEdit;
    edtcodtecnico: TEdit;
    GrficoProdutividade1: TMenuItem;
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnrelatorioClick(Sender: TObject);
    procedure GrficoProdutividade1Click(Sender: TObject);
  private
    { Private declarations }
    FTotalOS:Double;
    FTotalGeral:Double;
    FTotalPordia:Double;
    FtotalLevantador:Double;

    procedure InicializarValores;
    procedure GerarRelatorioProdutividade;
    procedure Cabecalho(qryprodutividade:tfdquery);
    procedure CorpoRel(qryprodutividade:tfdquery);
    procedure Rodape;
    procedure InitVariaveis;


  public
    { Public declarations }
    FTipoRel:string;
    FParametroPesquisaFunc:string;
    FParametroJoin:string;
    FParametroTipoPost:string;
    FParametroData:string;
    procedure SetValorParametros;
  end;

var
  FrmRelProdutividade: TFrmRelProdutividade;

implementation

{$R *.dfm}

uses DataModule, UConsFuncionario, UGraficoProdutividade;

procedure TFrmRelProdutividade.edtcodtecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
  begin
    if(Trim(edtcodtecnico.Text)='')then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=18;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodtecnico.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=18;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtcodtecnico.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdesctecnico.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
    end;
  end;
end;

procedure TFrmRelProdutividade.FormShow(Sender: TObject);
begin
  inherited;
  InicializarValores;
end;

procedure TFrmRelProdutividade.GerarRelatorioProdutividade;
var
  qryProdutividade:tfdquery;
begin
  try
    qryProdutividade            := TFDQuery.Create(nil);
    qryProdutividade.Connection := DataModule1.ConMySql;

    try
      Cabecalho(qryProdutividade);
      CorpoRel(qryProdutividade);
      Rodape;
    except on E: Exception do
      begin
        CriarLog(Self,E,'Gerar Relatorio Produtividade');
      end;
    end;
  finally
    FreeAndNil(qryProdutividade);
  end;
end;


procedure TFrmRelProdutividade.GrficoProdutividade1Click(Sender: TObject);
begin
  inherited;
  FrmGraficoProdutividade := TFrmGraficoProdutividade.Create(Self);
  FrmGraficoProdutividade.Show;
end;

procedure TFrmRelProdutividade.btnrelatorioClick(Sender: TObject);
begin
  inherited;
  SetValorParametros;
  InitVariaveis;
  GerarRelatorioProdutividade;
end;

procedure TFrmRelProdutividade.Cabecalho(qryprodutividade:tfdquery);
var
  sql:string;
begin
  //pegar parametros

  sql :=' SELECT sum(os.'+FParametroTipoPost+') AS totalPostLevantador,'+
        ' f.nome_razaosocial,f.id,(SELECT sum(os_engenharia_projeto.'+FParametroTipoPost+') FROM os_engenharia_projeto WHERE (os_engenharia_projeto.'+FParametroData+' BETWEEN :dtini AND :dtfim)) AS totalGeral,'+
        ' count(os.id) AS qtdOS,(sum(os.'+FParametroTipoPost+') / DATEDIFF(:dtfim, :dtini)) AS totalpordia,'+
        ' @rankNo :=@rankNo + 1 RankNo FROM os_engenharia_projeto AS os INNER JOIN cad_funcionarios AS f ON '+FParametroJoin+' = f.Id, (SELECT @rankNo := 0) r '+
        ' WHERE (os.'+FParametroData+' BETWEEN :dtini AND :dtfim) '; if edtcodtecnico.Text<>''then sql:=sql+FParametroPesquisaFunc;
        sql:=sql+' GROUP BY '+FParametroJoin+' ORDER BY totalPostLevantador DESC,totalpordia desc ';
  qryprodutividade.SQL.Add(sql);
  qryprodutividade.Params.ParamByName('dtini').AsDate := edtini.Date;
  qryprodutividade.Params.ParamByName('dtfim').AsDate := edtfim.Date;
  qryprodutividade.Open();
  if qryprodutividade.IsEmpty then
  begin
    SemRegistros;
    Abort;
  end
  else
  begin
    if(not DataModule1.qryEMPRESA.Active)then
    begin
      DataModule1.qryEMPRESA.Active := True;
    end;

    rdprnt1.TamanhoQteColunas:=137;
    rdprnt1.TamanhoQteLinhas:=66;
    rdprnt1.OpcoesPreview.Preview:=True;
    rdprnt1.OpcoesPreview.PreviewZoom := -1; rdprnt1.OpcoesPreview.Remalina := false; rdprnt1.OpcoesPreview.PaginaZebrada := true; //zoom 100%
    conta:=0;
    rdprnt1.Abrir;
    rdprnt1.impf(01,01,datamodule1.qryEMPRESA.FieldByName('nome_razaosocial').AsString,[negrito]);
    rdprnt1.impf(01,80,'CNPJ: '+datamodule1.qryempresa.Fieldbyname('cnpj').asstring,[comp17,negrito]);
    rdprnt1.impf(01,100,RetornaDataMysqlComHora(),[comp17,negrito]);
    rdprnt1.imp(02,01,_traco137);
    rdprnt1.impc(03,60,'RELATÓRIO DE PRODUTIVIDADE '+FTipoRel,[comp17,negrito]);
    rdprnt1.imp(04,01,_traco137);
    rdprnt1.impf(05,01,'DATA INICIAL: '+edtini.text+' - DATA FINAL: '+edtfim.text,[comp17,negrito]);
    rdprnt1.imp(04,01,_traco137);
    rdprnt1.Impf(07,01,'COD.',[comp17,negrito]);
    rdprnt1.Impf(07,10,'COLABORADOR',[comp17,negrito]);
    rdprnt1.Impf(07,50,'QUANT. OS',[comp17,negrito]);
    rdprnt1.Impf(07,65,'TOT. POST',[comp17,negrito]);
    rdprnt1.Impf(07,80,'PORC.',[comp17,negrito]);
    rdprnt1.Impf(07,95,'POR DIA',[comp17,negrito]);
    rdprnt1.Impf(07,110,'RANK',[comp17,negrito]);
    rdprnt1.imp(08,01,_traco137);
    linha := 9;

  end;
end;

procedure TFrmRelProdutividade.CorpoRel(qryprodutividade: tfdquery);
var
  rank:Integer;
begin
  rank:=1;
  qryprodutividade.First;
  while not qryprodutividade.Eof do
  begin
    rdprnt1.Impf(linha,01,qryprodutividade.FieldByName('id').AsString,[comp17,negrito]);
    rdprnt1.Impf(linha,10,qryprodutividade.FieldByName('nome_razaosocial').AsString,[comp17,negrito]);
    rdprnt1.Impf(linha,50,formatfloat('###,###,##0.00',qryprodutividade.FieldByName('qtdOS').AsFloat),[comp17,negrito]);
    rdprnt1.Impf(linha,65,formatfloat('###,###,##0.00',qryprodutividade.FieldByName('totalPostLevantador').AsFloat),[comp17,negrito]);
    rdprnt1.Impf(linha,80,formatfloat('###,###,##0.00',(qryprodutividade.FieldByName('totalPostLevantador').AsFloat*100)/qryprodutividade.FieldByName('totalGeral').AsFloat)+'%',[comp17,negrito]);
    rdprnt1.Impf(linha,95,formatfloat('###,###,##0.00',qryprodutividade.FieldByName('totalpordia').AsFloat),[comp17,negrito]);
    rdprnt1.Impf(linha,110,IntToStr(rank),[comp17,negrito]);
    FTotalOS:=FTotalOS+qryprodutividade.FieldByName('qtdOS').AsFloat;
    FTotalPordia:=FTotalPordia+qryprodutividade.FieldByName('totalpordia').AsFloat;
    FtotalLevantador:=FtotalLevantador+qryprodutividade.FieldByName('totalPostLevantador').AsFloat;
    inc(Linha);
    inc(rank);
    qryprodutividade.Next;
  end;
end;

procedure TFrmRelProdutividade.InicializarValores;
begin
  edtini.Text := funcRetornaPrimeiroDiaMes;
  edtfim.Text := funcRetornaUltimoDiaMes;
end;

procedure TFrmRelProdutividade.InitVariaveis;
begin
  FTotalOS:=0.0;
  FTotalGeral:=0.0;
  FTotalPordia:=0.0;
  FtotalLevantador:=0.0;
end;

procedure TFrmRelProdutividade.SetValorParametros;
begin
  FParametroPesquisaFunc := '';
  case rgGroup.ItemIndex of
    0:
      begin
        FTipoRel := 'POSTES LEVANTADOS';
        FParametroPesquisaFunc := ' and os.id_tec_campo =' + edtcodtecnico.Text;
        FParametroJoin := 'os.id_tec_campo';
        FParametroTipoPost := 'qtd_post_lev';
        FParametroData := 'dt_chegada_tec'
      end;
    1:
      begin
        FTipoRel := 'POSTES ATUALIZADOS';
        FParametroPesquisaFunc := 'os.id_tec_atualizador =' + edtcodtecnico.Text;
        FParametroJoin := 'os.id_tec_atualizador';
        FParametroTipoPost := 'qtd_post_atu';
        FParametroData := 'dt_chegada_atualizacao'
      end;
    2:
      begin
        FTipoRel := 'POSTES PROJETADOS/POSTES INCORPORADOS';
        FParametroPesquisaFunc := 'os.id_projetista =' + edtcodtecnico.Text;
        FParametroJoin := 'os.id_projetista';
        FParametroTipoPost := 'qtd_post_proj_urb+qtd_incorporacao';
        FParametroData := 'dt_chegada_projeto'
      end;
  end;
end;

procedure TFrmRelProdutividade.Rodape;
begin
  rdprnt1.imp(Linha,01,_traco137);
  inc(linha);
  rdprnt1.Impf(Linha,1,'TOTALIZAÇÃO',[comp17,negrito]);
  rdprnt1.Impf(linha,50,formatfloat('###,###,##0.00',FTotalOS),[comp17,negrito]);
  rdprnt1.Impf(linha,65,formatfloat('###,###,##0.00',FtotalLevantador),[comp17,negrito]);
  rdprnt1.Impf(linha,80,'100%',[comp17,negrito]);
  rdprnt1.Impf(linha,95,formatfloat('###,###,##0.00',FTotalPordia),[comp17,negrito]);
  rdprnt1.Fechar;
end;

end.
