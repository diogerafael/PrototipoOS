unit UFrmVinculacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, URelPadrao, Vcl.Menus, RDprint,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Samples.Gauges, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvComponentBase, JvThread, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TfrmRelVinculacao = class(TFrmRelPadrao)
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl2: TLabel;
    edtini: TcxDateEdit;
    edtfim: TcxDateEdit;
    rgTpPeriodo: TRadioGroup;
    FDQuery1: TFDQuery;
    JvThread1: TJvThread;
    procedure btnrelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvThread1Execute(Sender: TObject; Params: Pointer);
  private
    { Private declarations }
    QtdProjetos:Integer;
    procedure GerarRelatorioVinculacao;
    procedure CabecalhoRel;
    procedure CorpoRel;
    procedure RodapeRel;
    procedure verifica66;
    function GetNumero_osImpressao(parametro: string): string;
  public
    { Public declarations }
  end;

var
  frmRelVinculacao: TfrmRelVinculacao;

implementation

uses
  DataModule, uProcessandoNovo;

{$R *.dfm}

procedure TfrmRelVinculacao.btnrelatorioClick(Sender: TObject);
begin
  inherited;
  frmProcessandoNovo.Show;
  JvThread1.Execute(nil);
  JvThread1.WaitFor;
  frmProcessandoNovo.Hide;
  frmProcessandoNovo.Close;
end;

procedure TfrmRelVinculacao.CabecalhoRel;
var
sqlstr:string;
begin
  try
    sqlstr:='select * from os_engenharia_projeto where  (id_os_vinculacao IS NULL OR id_os_vinculacao=0) and ';
      case rgTpPeriodo.ItemIndex of
        0:begin
         sqlstr:=sqlstr+' os_engenharia_projeto.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
        1:begin
         sqlstr:=sqlstr+' os_engenharia_projeto.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
        2:begin
         sqlstr:=sqlstr+' os_engenharia_projeto.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
        3:begin
          sqlstr:=sqlstr+' os_engenharia_projeto.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
       4:begin
          sqlstr:=sqlstr+' os_engenharia_projeto.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
       5:begin
          sqlstr:=sqlstr+' os_engenharia_projeto.dt_envio_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
       6:begin
          sqlstr:=sqlstr+' os_engenharia_projeto.dt_chegada_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
       7:begin
          sqlstr:=sqlstr+' os_engenharia_projeto.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;
        8:begin
          sqlstr:=sqlstr+' os_engenharia_projeto.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
        end;

      end;
      //verificar se esta vazio
      if(not ConsultaSqlFd(FDQuery1,sqlstr))then
      begin
        SemRegistros;
        Abort;
      end
      else
      begin
        rdprnt1.TamanhoQteColunas:=137;
        rdprnt1.TamanhoQteLinhas:=66;
        rdprnt1.OpcoesPreview.Preview:=True;
        rdprnt1.OpcoesPreview.PreviewZoom := -1; rdprnt1.OpcoesPreview.Remalina := false; rdprnt1.OpcoesPreview.PaginaZebrada := true; //zoom 100%
        conta:=0;
        if(not DataModule1.qryEMPRESA.Active)then
        begin
          DataModule1.qryEMPRESA.Active := True;
        end;
        rdprnt1.Abrir;
        rdprnt1.impf(01,01,datamodule1.qryEMPRESA.FieldByName('nome_razaosocial').AsString,[negrito]);
        rdprnt1.impf(01,40,'CNPJ: '+datamodule1.qryempresa.Fieldbyname('cnpj').asstring,[comp17,negrito]);
        rdprnt1.impf(01,60,RetornaDataMysqlComHora(),[comp17,negrito]);
        rdprnt1.imp(02,01,_traco137);
        rdprnt1.impf(03,01,'RELATÓRIO VINCULAÇÃO OS',[comp17,negrito]);
        rdprnt1.imp(04,01,_traco137);
        rdprnt1.impf(05,01,'DATA INICIAL: '+edtini.text+' - DATA FINAL: '+edtfim.text,[comp17,negrito]);
        rdprnt1.imp(06,01,_traco137);
        rdprnt1.ImpF(07,01,'NÚMERO OS',[comp17,negrito]);
        rdprnt1.ImpF(07,20,'NOTA VINCULADA',[comp17,negrito]);
    //    rdprnt1.impF(07,36,'NÚMERO OS ',[comp17,negrito]);
    {    rdprnt1.ImpF(07,50,'SOLICITANTE',[comp17,negrito]);
        rdprnt1.ImpF(07,80,'MUNICIPIO',[comp17,negrito]);
        rdprnt1.ImpF(07,105,'PRAZO',[comp17,negrito]);
        rdprnt1.ImpF(07,120,'STATUS',[comp17,negrito]);}
        rdprnt1.imp(08,01,_traco137);
      end;

  finally
  end;

end;

procedure TfrmRelVinculacao.CorpoRel;
begin
  GerarRelatorioVinculacao;
end;

procedure TfrmRelVinculacao.FormShow(Sender: TObject);
begin
  inherited;
  edtini.Text:=funcRetornaPrimeiroDiaMes;
  edtfim.Text:=funcRetornaUltimoDiaMes;
end;

procedure TfrmRelVinculacao.GerarRelatorioVinculacao;
var
qryTemp:TFDQuery;
sqlstr:string;
numeros_os:string;
posicaocopy,posicaocopyfinal:Integer;
copyNumerooS:string;
BEGIN
  try
    qryTemp:=TFDQuery.Create(nil);
    qryTemp.Connection:=DataModule1.ConMySql;
    FDQuery1.First;
    linha:=9;
    posicaocopy := 0;
    posicaocopyfinal :=114;
    //percorrer fazendo a pesquisa das vinculadas
    while(not FDQuery1.Eof)do
    begin
      //verificar se tem os vinculadas a ela
      sqlstr:='SELECT * FROM os_engenharia_projeto where id_os_vinculacao='+FDQuery1.FieldByName('id').AsString;
      if not ConsultaSqlFd(qryTemp,sqlstr) then
      begin
        FDQuery1.Next;
        Continue;
      end;
      rdprnt1.ImpF(Linha,01,FDQuery1.FieldByName('numero_os').AsString,[comp17]);
      qryTemp.First;
      while not qryTemp.Eof do
      begin
        numeros_os:=numeros_os+' - '+qryTemp.FieldByName('numero_os').AsString;
        qryTemp.Next;
      end;
      while posicaocopy < Length(numeros_os) do
      begin
        copyNumerooS :=copy(numeros_os,posicaocopy,posicaocopyfinal);
        rdprnt1.ImpF(Linha,20,copyNumerooS,[comp17]);
        posicaocopy := posicaocopyfinal+1;
        posicaocopyfinal := posicaocopy + 115;
        inc(linha);
      end;
      //rdprnt1.ImpF(Linha,20,numeros_os,[comp17]);
      posicaocopy := 0;
      numeros_os:='';
      posicaocopyfinal :=114;
      Inc(linha);
      FDQuery1.Next;
    end;
  finally
    FreeAndNil(qryTemp);
  end;

end;

procedure TfrmRelVinculacao.RodapeRel;
begin
  Inc(linha);
  rdprnt1.impf(linha,01,_traco137,[comp17]);
  Inc(linha);
  //rdprnt1.impf(linha,01,'Total de Projetos',[comp17]);
  //rdprnt1.impf(linha,75,inttostr(datamodule1.qryCRUD.RecordCount),[comp17]);
  rdprnt1.Fechar;
  g1.Progress := 0;
end;

procedure TfrmRelVinculacao.verifica66;
begin
  if linha >= 62 then
  begin
    rdprnt1.novapagina;
    linha:=2;
  end;
end;
function TfrmRelVinculacao.GetNumero_osImpressao(parametro:string):string;
begin


end;

procedure TfrmRelVinculacao.JvThread1Execute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  CabecalhoRel;
  CorpoRel;
  RodapeRel;
end;

end.
