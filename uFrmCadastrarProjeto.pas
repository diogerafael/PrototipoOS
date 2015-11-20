unit uFrmCadastrarProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoNovo, Vcl.Menus, Vcl.Buttons,
  PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  cxControls, cxContainer,
  cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, cxCalendar,
  cxButtons,uFrmCadastrarRevisao, PngBitBtn,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask,
  Winapi.ShellAPI,System.DateUtils,System.Math, URelAnomalias, UFrmDedoDuro,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.ImgList, RDprint;


  type
        TProjetoUrbano = class
         FID:Integer;
         Fnumero_os            :string;
         doc_celtins           :Int16;
         numero_pvt            :string;
         solicitante           :string;
         endereco              :string;
        telefone               :string;
        id_municipio           :Integer;
        id_crs                 :Int16;
        dt_limite_geral        :string;
        dt_chegada_geral       :string;
        id_tipoos              :Int16;
        id_statusos            :Int16;
        observacao_geral       :string;
        caminho_arquivo        :string;
        id_tec_campo           :string;
        dt_liberacao_tec       :string;
        dt_chegada_tec         :string;
        id_projetista          :string;
        dt_envio_projeto       :string;
        dt_chegada_projeto     :string;
        dt_envio_atualizacao   :string;
        dt_chegada_atualizacao :string;
        id_tec_atualizador     :string;
        dt_novo_prazo          :string;
        vl_post_proj_urb       :string;
        vl_post_porj_rur       :string;
        vl_post_lev            :string;
        vl_post_atu            :string;
        vl_topografia          :string;
        vl_travessia           :string;
        vl_incorporacao        :string;
        vl_improcedente        :string;
        vl_deslocamento        :string;
        vl_outros              :string;
        qtd_post_proj_urb      :string;
        qtd_post_proj_rur      :string;
        qtd_post_lev           :string;
        qtd_post_atu           :string;
        qtd_topografia         :string;
        qtd_travessia          :string;
        qtd_incorporacao       :string;
        qtd_improcedente       :string;
        qtd_deslocamento       :string;
        qtd_outros             :string;
        improcedente           :int16;
        id_func_cad            :string;
        dt_conclusao           :string;
        topografo              :string;
        dt_envio_topografia    :string;
        dt_chegada_topografia  :string;
        dt_devolvido           :string;
        contrato               :string;
        //FArrayMensagem :array[0..54] of string=('NUMERO OS MODIFICADO','DOC. CELTIN','NUMERO PVT MODIFICADO','SOLICITANTE MODIFICADO','ENDERECO',)

        end;
  type
  TfrmCadastrarProjeto = class(TFrmCadPadraoNovoGrande)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl3: TLabel;
    edtnumos: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    edtnumpvt: TEdit;
    edtnumnota: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl13: TLabel;
    grpCampo: TGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    edtdtliberacaotec: TcxDateEdit;
    edtdtchegada: TcxDateEdit;
    lbl19: TLabel;
    lbl20: TLabel;
    lblprazoservico: TLabel;
    grpProjeto: TGroupBox;
    lbl24: TLabel;
    lbl25: TLabel;
    edtdtenvioprojeto: TcxDateEdit;
    lbl26: TLabel;
    edtdtretornoprojeto: TcxDateEdit;
    lblprazoprojeto: TLabel;
    dbgrdlistarevisao: TDBGrid;
    grpAtualizacao: TGroupBox;
    edtenvioatualizacao: TcxDateEdit;
    lbl28: TLabel;
    edtretornoatualizacao: TcxDateEdit;
    lbl29: TLabel;
    lbl30: TLabel;
    btninserirrevisao: TPngSpeedButton;
    grp6: TGroupBox;
    grpValores: TGroupBox;
    lbl21: TLabel;
    lbl33: TLabel;
    edtqtdposterural: TEdit;
    edtqtdposteprojurbano: TEdit;
    edtqtdlevantado: TEdit;
    edtqtdposteatualizado: TEdit;
    edtqtdtopografia: TEdit;
    edtqttravessia: TEdit;
    edtqtincorporacao: TEdit;
    edtqtdimprocedente: TEdit;
    edtqtddeslocamento: TEdit;
    lbl34: TLabel;
    lbl35: TLabel;
    lblTravessia: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl36: TLabel;
    lbl42: TLabel;
    edtvlposteprojurbano: TEdit;
    edtvlposterural: TEdit;
    edtvllevantado: TEdit;
    edtvlposteatualizado: TEdit;
    edtvlrtopografia: TEdit;
    edtvltravessia: TEdit;
    edtvlrincorporacao: TEdit;
    edtvldeslocamento: TEdit;
    edtedvlimprocedente: TEdit;
    edtsolicitante: TEdit;
    edtdescmunicipio: TEdit;
    edtcodmunicipio: TEdit;
    edtcodtecnico: TEdit;
    edtdesctecnico: TEdit;
    edtcodprojetista: TEdit;
    edtdescprojetista: TEdit;
    edtcodtecmub: TEdit;
    edtdesctecmub: TEdit;
    rgdocceltins: TRadioGroup;
    lbl14: TLabel;
    edtdataconclusao: TcxDateEdit;
    lbl32: TLabel;
    edtdiretorio: TEdit;
    edtdiretorioarquivo: TPngBitBtn;
    lbl2: TLabel;
    edtendereco: TEdit;
    lbl11: TLabel;
    edtdtchegadageral: TcxDateEdit;
    grp2: TGroupBox;
    mmoobservacao: TMemo;
    lbl12: TLabel;
    edtqtdoutros: TEdit;
    edtvloutros: TEdit;
    lblProrroga��o: TLabel;
    edtdataprorrogacao: TcxDateEdit;
    dlgOpenpathprojeto: TOpenDialog;
    cbbclassificacaoos: TComboBox;
    cbbcrs: TComboBox;
    cbbstatus: TComboBox;
    dbgrd1: TDBGrid;
    dsnota: TDataSource;
    qrynota: TFDQuery;
    btn1: TcxButton;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    edtidnota: TEdit;
    edtdtlimitegeral: TcxDateEdit;
    edttelefone: TMaskEdit;
    pngbtbtn1: TPngBitBtn;
    qryconfigdias: TFDQuery;
    lblprazomub: TLabel;
    rgimprocedente: TRadioGroup;
    dsrevisao: TDataSource;
    lblprazogeral: TLabel;
    itemExcluir: TMenuItem;
    lbl15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pmrelatorio: TPopupMenu;
    RelatrioEstudosProjetosPorStatuss1: TMenuItem;
    R1: TMenuItem;
    pmCrs: TPopupMenu;
    C1: TMenuItem;
    pmOpcoes: TPopupMenu;
    C2: TMenuItem;
    C3: TMenuItem;
    gridServicoCampo: TDBGrid;
    gridAtualizacao: TDBGrid;
    grpTopografia: TGroupBox;
    lbl16: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lblprazoTopografia: TLabel;
    edtdtenvioTopografia: TcxDateEdit;
    edtRetornoTopografia: TcxDateEdit;
    edtTopografo: TEdit;
    gridTopografia: TDBGrid;
    dsTecCampo: TDataSource;
    dsAtualizacao: TDataSource;
    dsTopografia: TDataSource;
    btnrevisaocampo: TPngSpeedButton;
    btn3: TPngSpeedButton;
    btn4: TPngSpeedButton;
    qryLevantamento: TFDQuery;
    qryTopografia: TFDQuery;
    qryAtualizacao: TFDQuery;
    lbl27: TLabel;
    edtdtDevolvida: TcxDateEdit;
    C4: TMenuItem;
    PngBitBtn1: TPngBitBtn;
    chkContrato: TCheckBox;
    btnRelAnomalias: TMenuItem;
    btnDedoDuro: TMenuItem;
    lblDedoDuro: TLabel;
    Label8: TLabel;
    RelatrioVinculao1: TMenuItem;
    EditarObservao1: TMenuItem;
    RelatrioIndicadoresGerais1: TMenuItem;
    RelatrioProdutividade1: TMenuItem;
    PopVinculacao: TPopupMenu;
    RemoverVinculao1: TMenuItem;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    edtVinculacao: TEdit;
    btVinculacao: TcxButton;
    shp5: TShape;
    lblapagar: TLabel;
    shp2: TShape;
    lblvencehoje: TLabel;
    shp4: TShape;
    lbljapagas: TLabel;
    Exibir1: TMenuItem;
    RelatrioOSProjetar1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    cxImageList1: TcxImageList;
    rdprnt1: TRDprint;
    procedure btn2Click(Sender: TObject);
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodprojetistaKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodtecmubKeyPress(Sender: TObject; var Key: Char);
    procedure btninserirrevisaoClick(Sender: TObject);
    procedure btninseririmagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function locaString(prnome:string):Boolean;
    procedure sbnovoClick(Sender: TObject);
    procedure sbconsultarClick(Sender: TObject);
    procedure edtqtdposteprojurbanoKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtqtdposteruralKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtdlevantadoKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtdposteatualizadoKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtqtdtopografiaKeyPress(Sender: TObject; var Key: Char);
    procedure edtqttravessiaKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtincorporacaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtdimprocedenteKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtddeslocamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtqtdoutrosKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbgravarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure edtnumosExit(Sender: TObject);
    procedure pngbtbtn1Click(Sender: TObject);
    procedure pngbtbtn2Click(Sender: TObject);
    procedure edtdtliberacaotecExit(Sender: TObject);
    procedure edtenvioatualizacaoExit(Sender: TObject);
    procedure edtdtenvioprojetoExit(Sender: TObject);
    procedure edtdiretorioarquivoClick(Sender: TObject);
    procedure edtdtchegadageralExit(Sender: TObject);
    procedure rgimprocedenteExit(Sender: TObject);
    procedure edtdataconclusaoExit(Sender: TObject);
    procedure cbbclassificacaoosExit(Sender: TObject);
    procedure sbexcluirClick(Sender: TObject);
    procedure itemExcluirClick(Sender: TObject);
    procedure edtdataprorrogacaoExit(Sender: TObject);
    procedure edtdtchegadaExit(Sender: TObject);
    procedure edtretornoatualizacaoExit(Sender: TObject);
    procedure edtdtretornoprojetoExit(Sender: TObject);
    procedure sbrelatoriosClick(Sender: TObject);
    procedure RelatrioEstudosProjetosPorStatuss1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure R1Click(Sender: TObject);
    procedure btnopcoesClick(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnrevisaocampoClick(Sender: TObject);
    procedure edtdtenvioTopografiaExit(Sender: TObject);
    procedure edtRetornoTopografiaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure edtdtDevolvidaExit(Sender: TObject);
    procedure btnRelAnomaliasClick(Sender: TObject);
    procedure btnDedoDuroClick(Sender: TObject);
    procedure btVinculacaoClick(Sender: TObject);
    procedure edtVinculacaoKeyPress(Sender: TObject; var Key: Char);
    procedure RelatrioVinculao1Click(Sender: TObject);
    procedure EditarObservao1Click(Sender: TObject);
    procedure RelatrioIndicadoresGerais1Click(Sender: TObject);
    procedure RelatrioProdutividade1Click(Sender: TObject);
    procedure RemoverVinculao1Click(Sender: TObject);
    procedure Exibir1Click(Sender: TObject);
    procedure RelatrioOSProjetar1Click(Sender: TObject);
  private
    { Private declarations }
    FDiasCampo:Integer;
    FDiasAtu:Integer;
    FDiasProjeto:Integer;

    procedure InicializaComponentes;
    procedure BuscaId;
    procedure AtualizaViewForConsultRapid;
    procedure MontarObjLocal(obj:TProjetoUrbano);
    function VerificarSeDataEhMaior(data1, data2: TDateTime): Boolean;
    function VerificarSeExisteValor: Boolean;
    procedure ChamarConsultaVinculados;
    procedure RelatorioOsComProjetistas;
    procedure RelatorioProjetosComProjetistas;
    function CabecalhoRelProjetistas(qry: tfdquery): Boolean;
    procedure CorpoRelProjetistas(qry: tfdquery);
    procedure RodapeProjetistas(qry:TFDQuery);
  public
    { Public declarations }
    objetoLocal,objConsulta:TProjetoUrbano;
    FIdProjeto:Integer;
    FIdUsuarioCad:Integer;
    FidVinculacaoOS:Integer;
    //FArrayId : array[8] of Integer;
    procedure AtualizarGrid();
    function  CalculaPrazo(_data,_dataFinal,_qtdprazo:String):String;
    procedure BuscaConfig;overload;
    procedure BuscaConfig(paramentro :Integer);overload;
    procedure ControleAcesso;
    function  CalculaPrazo2(_data,_dataFinal,_qtdPrazo:String):string;
    function CalculaPrazoSemLabel(_data, _dataFinal,
      _qtdprazo: String): String;
  end;

var
  frmCadastrarProjeto: TfrmCadastrarProjeto;


implementation

{$R *.dfm}

uses u_conscodmunicipio, DataModule, UConsFuncionario, uConsProjeto,
  UDistPeriodos, URelProjetoPorStatus, URelMedicoes, uCadCrs,
  UFrmConsultaRapida, UCadObservacao, UFrmVinculacao, URelndicadoresGerais,
  URelProdutividade, UExibirVinculacoes;

procedure TfrmCadastrarProjeto.AtualizarGrid;
begin
  DataModule1.qryrevisaoos.Close;
  DataModule1.qryrevisaoos.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  DataModule1.qryrevisaoos.Open();

  qryLevantamento.Close;
  qryLevantamento.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  qryLevantamento.Open();

  qryAtualizacao.Close;
  qryAtualizacao.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  qryAtualizacao.Open();

  qryTopografia.Close;
  qryTopografia.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  qryTopografia.Open();
end;

procedure TfrmCadastrarProjeto.AtualizaViewForConsultRapid;
var
  I: Integer;
begin
  for i:=0 to (ComponentCount - 1) do
    if components[i] is tcustomedit then
    begin
      (components[i] as tcustomedit).ReadOnly := True;
    end
    else if(Components[i] is TcxDateEdit) then
    begin
      (Components[i] as TcxDateEdit).Properties.ReadOnly:=True;
    end;

    //desativar botoes
    sbnovo.Enabled       :=False;
    sbgravar.Enabled     :=False;
    sbconsultar.Enabled  :=True;
    SpeedButton1.Enabled :=True;
    sbexcluir.Enabled    :=True;
    sbrelatorios.Enabled :=True;
    btnopcoes.Enabled    :=True;
end;

procedure TfrmCadastrarProjeto.btn1Click(Sender: TObject);
var
qrylocal:TFDQuery;
begin
  inherited;
  if(edtnumnota.Text<>'')then
  begin
    qrylocal:= TFDQuery.Create(nil);
    qrylocal.Connection := DataModule1.ConMySql;
    //verificar se a nota ja foi inserida
    if ConsultaSqlFd(qrylocal, 'select * from os_engenharia_notas where descricao='+trim(QuotedStr(edtnumnota.Text)))then
    begin
      ShowMessage('N�mero de Nota J� Cadastrardo !');
      Exit;
    end;

    if trim(edtidnota.Text) = '' then
    begin
      with DataModule1.comand do
      begin
        CommandText.Add('insert into os_engenharia_notas (descricao,id_os_projeto) VALUES (:descricao,:id_os_projeto)');
        Params.ParamByName('descricao').Value     := Trim(edtnumnota.Text);
        Params.ParamByName('id_os_projeto').Value := FIdProjeto;
        Execute;
        CommandText.Clear;
        {consultando as notas daquela OS}
        sqlstr :=' select * from os_engenharia_notas where id_os_projeto = '+inttostr(FIdProjeto);
        ConsultaSqlFd(qrynota,sqlstr);
        edtnumnota.Clear;
        edtnumnota.SetFocus;
      end;
    end
    else
    begin
      with DataModule1.comand do
      begin
        CommandText.Add('update os_engenharia_notas set descricao=:descricao where id='+edtidnota.Text);
        Params.ParamByName('descricao').Value     := edtnumnota.Text;
        Execute;
        CommandText.Clear;
        {consultando as notas daquela OS}
        sqlstr :=' select * from os_engenharia_notas where id_os_projeto = '+inttostr(FIdProjeto);
        ConsultaSqlFd(qrynota,sqlstr);
        edtnumnota.Clear;
        edtidnota.Clear;
        edtnumnota.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.btn2Click(Sender: TObject);
begin
  inherited;
  frmCadastrarRevisao:=TfrmCadastrarRevisao.Create(Self);
  frmCadastrarRevisao.Show;
end;

procedure TfrmCadastrarProjeto.btn3Click(Sender: TObject);
begin
  inherited;
  frmCadastrarRevisao:=TfrmCadastrarRevisao.Create(Self);
  frmCadastrarRevisao.Tag:=3;
  frmCadastrarRevisao.Show;
end;

procedure TfrmCadastrarProjeto.btn4Click(Sender: TObject);
begin
  inherited;
  frmCadastrarRevisao:=TfrmCadastrarRevisao.Create(Self);
  frmCadastrarRevisao.Tag:=2;
  frmCadastrarRevisao.Show;
end;

procedure TfrmCadastrarProjeto.btnDedoDuroClick(Sender: TObject);
begin
  inherited;
  FrmDedoDuro:=TFrmDedoDuro.Create(Self);
  FrmDedoDuro.ShowModal;
end;

procedure TfrmCadastrarProjeto.edtcodtecmubKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if trim(edtcodtecmub.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=3;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodtecmub.Text;
      if (not ConsultaSqlFd(datamodule1.Query01,sqlstr))  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=3;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtcodtecmub.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdesctecmub.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key = #13 then
  begin
    if trim(edtcodtecnico.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=1;
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
        FrmConsFuncionario.Tag :=1;
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

procedure TfrmCadastrarProjeto.edtdataconclusaoExit(Sender: TObject);
begin
  inherited;
  if rgimprocedente.ItemIndex=0 then
  begin
    Application.MessageBox('Projeto Definido Como Improcedente !', 'Aten��o',MB_OK + MB_ICONWARNING);
    Exit;
  end;

   if((edtdtchegadageral.Text<>'') and (edtenvioatualizacao.Text<>'') and (edtdtenvioprojeto.Text<>'') and (edtdataconclusao.Text<>''))then
    begin
      //validar data de conclusa
      if VerificarSeDataEhMaior(edtdtchegada.Date,edtdataconclusao.Date) then
      begin
        Application.MessageBox('Data de Conclus�o N�o Pode Ser Inferior a Data de Recebimento !',
          'Aten��o', MB_OK + MB_ICONINFORMATION);
        edtdataconclusao.SetFocus;
        Exit;
      end;

      if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Enviado Energisa');
      end;
    end
    else
    begin
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Cadastrada');
    end;
end;

function TfrmCadastrarProjeto.VerificarSeDataEhMaior(data1,data2:TDateTime):Boolean;
begin
  Result:=False;
  if data1 > data2 then Result:=True;
end;

procedure TfrmCadastrarProjeto.edtdataprorrogacaoExit(Sender: TObject);
begin
  inherited;
  if((trim(edtdataconclusao.Text)<>'') and (Trim(edtdataprorrogacao.Text)<>''))then
  begin
    Application.MessageBox('N�o � Poss�vel Inserir Data de Prorroga��o, Projeto Conclu�do.',
      'Informa��o', MB_OK + MB_ICONINFORMATION);

  end;
end;

procedure TfrmCadastrarProjeto.edtdiretorioarquivoClick(Sender: TObject);
begin
  inherited;
  if(edtdiretorio.Text='')then begin
    if(dlgOpenpathprojeto.Execute())then
    begin
      edtdiretorio.Text:=dlgOpenpathprojeto.FileName;
    end;
  end
  else
  begin
    ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(edtdiretorio.Text)),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TfrmCadastrarProjeto.edtdtchegadaExit(Sender: TObject);
begin
  inherited;
  if((edtdtchegada.Text<>'') and (edtdtliberacaotec.Text<>'') and (cbbclassificacaoos.ItemIndex<>-1))then
  begin
    if not ValidarDataMenorAno(edtdtchegada.Text) then
    begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    if not ValidarDataHoje(edtdtchegada.text) then
    begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    lblprazoservico.Caption := 'Dura��o do Servi�o: ';
    lblprazoservico.Caption := lblprazoservico.Caption + IntToStr(DaysBetween(edtdtliberacaotec.Date,edtdtchegada.Date)) +' Dias';
  end;
end;

procedure TfrmCadastrarProjeto.edtdtchegadageralExit(Sender: TObject);
begin
  inherited;
  //verificar se a data esta vazia
  if((edtdtchegadageral.Text <>'') and (edtdtliberacaotec.Text='') and (edtdtenvioprojeto.Text='') and (edtenvioatualizacao.Text='') )then
  begin
    cbbstatus.ItemIndex:= cbbstatus.Items.IndexOf('Cadastrada');
  end;
end;

procedure TfrmCadastrarProjeto.edtdtDevolvidaExit(Sender: TObject);
begin
  inherited;
  if Self.Tag<>1 then
  begin
    if edtdtDevolvida.Text<>'' then
    begin
      if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Devolvido');
      end;
    end;
  end;

end;

procedure TfrmCadastrarProjeto.edtdtenvioprojetoExit(Sender: TObject);
begin
  inherited;
  if (Trim(edtdtenvioprojeto.text) <> '') and (cbbclassificacaoos.ItemIndex<>-1) then
  begin
    if not ValidarDataMenorAno(edtdtenvioprojeto.Text) then
    begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    if not ValidarDataHoje(edtdtenvioprojeto.text) then
    begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;

    lblprazoprojeto.Caption := CalculaPrazo(edtdtenvioprojeto.text,'',qryconfigdias.FieldByName('dias_projeto').AsString);

    if Self.Tag<>1 then
    begin
      if((edtdtchegadageral.Text<>'') and (edtenvioatualizacao.Text<>'') )then
      begin
        if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Projetar');
        end;
      end;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.edtdtenvioTopografiaExit(Sender: TObject);
begin
  inherited;
   if(Trim(edtdtenvioTopografia.text) <> '') and (Trim(edtRetornoTopografia.Text)='')and (cbbclassificacaoos.ItemIndex<>-1)then
   begin
      if not ValidarDataMenorAno(edtdtenvioTopografia.Text) then
      begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
      end;
      if not ValidarDataHoje(edtdtenvioTopografia.text) then
      begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
      end;
    lblprazoTopografia.Caption := CalculaPrazo(edtdtenvioTopografia.Text,edtRetornoTopografia.Text,qryconfigdias.FieldByName('dias_topografia').AsString);
   end;
   if(Trim(edtdtliberacaotec.text) <> '') and (Trim(edtdtchegada.Text)<>'')then
   begin
    lblprazoTopografia.Caption := CalculaPrazo(edtdtenvioTopografia.Text,edtRetornoTopografia.Text,qryconfigdias.FieldByName('dias_topografia').AsString);
   end;

   if Self.Tag<>1 then
   begin
      //mudando o status do projeto
      if((edtdtenvioprojeto.Text='') and (edtenvioatualizacao.Text='') and (edtdtchegadageral.Text<>''))then
      begin
        if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Topografia');
        end;
      end;
   end;
end;

procedure TfrmCadastrarProjeto.edtdtliberacaotecExit(Sender: TObject);
begin
  inherited;

   if(Trim(edtdtliberacaotec.text) <> '') and (Trim(edtdtchegada.Text)='') and (cbbclassificacaoos.ItemIndex<>-1)then
   begin
    //verificar se e menor que ano 2000
    if not ValidarDataMenorAno(edtdtliberacaotec.Text) then
    begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    if not ValidarDataHoje(edtdtliberacaotec.text) then
    begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    lblprazoservico.Caption := CalculaPrazo(edtdtliberacaotec.Text,edtdtchegada.Text,qryconfigdias.FieldByName('dias_campo').AsString);
   end;
   if(Trim(edtdtliberacaotec.text) <> '') and (Trim(edtdtchegada.Text)<>'') and (cbbclassificacaoos.ItemIndex<>-1)then
   begin
    lblprazoservico.Caption := CalculaPrazo(edtdtliberacaotec.Text,edtdtchegada.Text,qryconfigdias.FieldByName('dias_campo').AsString);
   end;

   if Self.Tag<>1 then  //tag 1 apenas visualizar
   begin
      //mudando o status do projeto
      if((edtdtenvioprojeto.Text='') and (edtenvioatualizacao.Text='') and (edtdtchegadageral.Text<>'')and (edtdataconclusao.Text=''))then
      begin
        if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Levantamento');
        end;
      end;
   end;
end;

procedure TfrmCadastrarProjeto.edtdtretornoprojetoExit(Sender: TObject);
begin
  inherited;
    if((edtdtretornoprojeto.Text<>'') and (edtdtenvioprojeto.Text<>''))then
    begin
      if not ValidarDataMenorAno(edtdtretornoprojeto.Text) then
      begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
      end;
      if not ValidarDataHoje(edtdtretornoprojeto.text) then
      begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
      end;

      lblprazoprojeto.Caption := 'Dura��o do Servi�o: ';
      lblprazoprojeto.Caption := lblprazoprojeto.Caption + IntToStr(DaysBetween(edtdtenvioprojeto.Date,edtdtretornoprojeto.Date)) +' Dias';
    end;
end;

procedure TfrmCadastrarProjeto.edtenvioatualizacaoExit(Sender: TObject);
begin
  if (Trim(edtenvioatualizacao.text) <> '') and (cbbclassificacaoos.ItemIndex<>-1) then
  begin
    if not ValidarDataMenorAno(edtenvioatualizacao.Text) then
    begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    if not ValidarDataHoje(edtenvioatualizacao.text) then
    begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;

    lblprazomub.Caption := CalculaPrazo(edtenvioatualizacao.text,'',qryconfigdias.FieldByName('dias_mub').AsString);

     if Self.Tag<>1 then
     begin
        //tratando status  da atualizacao
        if((edtenvioatualizacao.Text<>'') and (edtdtchegadageral.Text<>'') and (edtdataconclusao.Text=''))then
        begin
          if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Atualizar');
          end;
        end;
     end;
  end;
end;

procedure TfrmCadastrarProjeto.edtnumosExit(Sender: TObject);
var
qrylocal:TFDQuery;
str:string;
begin
  if trim(edtnumos.text) <> '' then
  begin
    try
      try
        str:=Trim(edtnumos.Text);
        qrylocal              := TFDQuery.Create(nil);
        qrylocal.Connection   := DataModule1.ConMySql;
        sqlstr                := 'select * from os_engenharia_projeto where numero_os = '+str;
      if (ConsultaSqlFd(qrylocal,sqlstr) ) then
      begin
        if (Trim(qrylocal.FieldByName('numero_pvt').AsString)<>Trim(edtnumpvt.Text)) then
        begin
          Application.MessageBox('Aten��o, OS j� existente!',PChar(Application.Title), MB_OK + MB_ICONWARNING);
          edtnumos.SetFocus;
          Abort;
        end;
      end;
      except on E: Exception do
      Application.MessageBox('N�o � Permitido Espa�os na Descri��o da OS !',
        'Informa��o', MB_OK + MB_ICONINFORMATION);

      end;
    finally
      qrylocal.Free;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.edtqtddeslocamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(9);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdimprocedenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(8);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdlevantadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(3);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdoutrosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(10);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdposteatualizadoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(4);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdposteprojurbanoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(1);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdposteruralKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(2);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtdtopografiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(5);
  end;
end;

procedure TfrmCadastrarProjeto.edtqtincorporacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(7);
  end;
end;

procedure TfrmCadastrarProjeto.edtqttravessiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(6);
  end;
end;


procedure TfrmCadastrarProjeto.edtretornoatualizacaoExit(Sender: TObject);
begin
  inherited;
  if((edtretornoatualizacao.Text<>'')and(edtenvioatualizacao.Text<>''))then
  begin
    if not ValidarDataMenorAno(edtretornoatualizacao.Text) then
    begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    if not ValidarDataHoje(edtretornoatualizacao.text) then
    begin
      Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    lblprazomub.Caption := 'Dura��o do Servi�o: ';
    lblprazomub.Caption := lblprazomub.Caption + IntToStr(DaysBetween(edtenvioatualizacao.Date,edtretornoatualizacao.Date)) +' Dias';
  end;
end;

procedure TfrmCadastrarProjeto.edtRetornoTopografiaExit(Sender: TObject);
begin
  inherited;
   if((edtdtenvioTopografia.Text<>'') and (edtRetornoTopografia.Text<>''))then
  begin
    if not ValidarDataMenorAno(edtRetornoTopografia.Text) then
    begin
    Application.MessageBox('Data Inferior  a 01/01/2000 !',
      'Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
    (Sender as TcxDateEdit).SetFocus;
    Exit;
    end;
    if not ValidarDataHoje(edtRetornoTopografia.text) then
    begin
    Application.MessageBox('Data Superir a Data Hoje !',
      'Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
    (Sender as TcxDateEdit).SetFocus;
    Exit;
    end;
    lblprazoTopografia.Caption := 'Dura��o do Servi�o: ';
    lblprazoTopografia.Caption := lblprazoservico.Caption + IntToStr(DaysBetween(edtdtenvioTopografia.Date,edtRetornoTopografia.Date)) +' Dias';
  end;
end;

procedure TfrmCadastrarProjeto.edtVinculacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key =#13 then
  begin
    if edtVinculacao.Text='' then
    begin{chama consulta de os}
      frmConsutarProjeto:=TfrmConsutarProjeto.Create(Self);
      frmConsutarProjeto.Tag := 1;
      frmConsutarProjeto.Show;
    end
    else
    begin
        btVinculacaoClick(Self);
    end;

  end;

end;

procedure TfrmCadastrarProjeto.Exibir1Click(Sender: TObject);
begin
  inherited;
  ChamarConsultaVinculados;
end;

procedure TfrmCadastrarProjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //frmCadastrarProjeto:=nil;
end;

procedure TfrmCadastrarProjeto.FormCreate(Sender: TObject);
begin
  inherited;
  sqlstr :=' select * from os_engenharia_projeto order by id desc limit 1';
  if ConsultaSqlFd(DataModule1.query01,sqlstr) then
  begin
    if Trim(DataModule1.query01.FieldByName('numero_os').AsString) = '' then
    begin
     with DataModule1.comand do
     begin
     CommandText.Clear;
      CommandText.Add('delete from os_engenharia_projeto where id ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_notas where id_os_projeto ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;

    end;
  end;
  BuscaId;
  //gravar id
  with DataModule1.comand do
  begin
    CommandText.clear;
    CommandText.Add('insert into os_engenharia_projeto (id) values('+inttostr(FIdProjeto)+')');
    sqlstr := CommandText.Text;
    Execute();
    CommandText.Clear;
  end;
  sbnovo.Enabled      :=  false;
  sbgravar.Enabled    :=  true;
  sbconsultar.Enabled :=  true;
  sbexcluir.Enabled   :=  true;

  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_crs order by descricao');
  DataModule1.qryCRUD.First;
  while not DataModule1.qryCRUD.Eof do
  begin
    cbbcrs.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
    DataModule1.qryCRUD.Next;
  end;

  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_tipo');
  DataModule1.qryCRUD.First;
  while not DataModule1.qryCRUD.Eof do
  begin
    cbbclassificacaoos.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
    DataModule1.qryCRUD.Next;
  end;

  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_status');
  DataModule1.qryCRUD.First;
  while not DataModule1.qryCRUD.Eof do
  begin
    cbbstatus.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
    DataModule1.qryCRUD.Next;
  end;

 //controle de usuario
 ControleAcesso;

 //para consulta rapida
 if(FrmConsultaRapida <>nil)then
 begin
  AtualizaViewForConsultRapid;
 end;

end;

procedure TfrmCadastrarProjeto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if Self.Tag <>1 then
 begin
    if VK_F4 = key then
    begin
      if FrmObservacao=nil then
      begin
        FrmObservacao := TFrmObservacao.Create(Self);
        FrmObservacao.ShowModal;
      end;
      FreeAndNil(FrmObservacao);
    end;
    if VK_F8 = key then
    begin
      ChamarConsultaVinculados;
    end;
 end;
end;

procedure TfrmCadastrarProjeto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   selectnext(activecontrol,true, true);
end;

procedure TfrmCadastrarProjeto.FormShow(Sender: TObject);
begin
  inherited;
  sqlstr :=' select * from os_engenharia_projeto order by id desc limit 1';
  if ConsultaSqlFd(DataModule1.query01,sqlstr)  then
  begin
    if Trim(DataModule1.query01.FieldByName('numero_os').AsString) = '' then
    begin
     with DataModule1.comand do
     begin
     CommandText.Clear;
      CommandText.Add('delete from os_engenharia_projeto where id ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_notas where id_os_projeto ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;

    end;
  end;
  BuscaId;
  //gravar id
  with DataModule1.comand do
  begin
    CommandText.clear;
    CommandText.Add('insert into os_engenharia_projeto (id) values('+inttostr(FIdProjeto)+')');
    sqlstr := CommandText.Text;
    Execute();
    CommandText.Clear;
  end;
  sbnovo.Enabled      :=  false;
  sbgravar.Enabled    :=  true;
  sbconsultar.Enabled :=  true;
  sbexcluir.Enabled   :=  true;

 //controle de usuario
 ControleAcesso;

 //para consulta rapida
 if(FrmConsultaRapida <>nil)then
 begin
  AtualizaViewForConsultRapid;
 end;

end;

procedure TfrmCadastrarProjeto.btninseririmagemClick(Sender: TObject);
begin
  inherited;
    if(dlgOpenpathprojeto.Execute())then
    begin
      //edtdiretorio.Text:=dlgOpenpathprojeto.FileName;
    end;
end;

procedure TfrmCadastrarProjeto.btninserirrevisaoClick(Sender: TObject);
begin
  inherited;
  frmCadastrarRevisao:=TfrmCadastrarRevisao.Create(Self);
  frmCadastrarRevisao.Tag:=0;
  frmCadastrarRevisao.Show;
end;

procedure TfrmCadastrarProjeto.btnopcoesClick(Sender: TObject);
begin
  inherited;
   pmOpcoes.Popup(Self.Left+3+sbrelatorios.Left,Self.Top+sbrelatorios.Top+sbrelatorios.Height+28);
end;

procedure TfrmCadastrarProjeto.btnRelAnomaliasClick(Sender: TObject);
begin
  inherited;
   FrmRelAnomalias := TFrmRelAnomalias.Create(Self);
   FrmRelAnomalias.ShowModal;
end;

procedure TfrmCadastrarProjeto.btnrevisaocampoClick(Sender: TObject);
begin
  inherited;
  frmCadastrarRevisao:=TfrmCadastrarRevisao.Create(Self);
  frmCadastrarRevisao.Tag:=1;
  frmCadastrarRevisao.Show;
end;

procedure TfrmCadastrarProjeto.btVinculacaoClick(Sender: TObject);
var
qry:TFDQuery;
sqlstr:string;
begin
  inherited;
  //verificar se os existe
  try
    if Obrigatorio(Self,edtVinculacao,'Informar N�mero OS!') then exit;

    if VerificarSeExisteValor then
    begin
      Application.MessageBox('N�o � Poss�vel Vincular OS  Com Valor Lan�ado!', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);
        edtVinculacao.Clear;
        Exit;
    end;

    if Trim(edtnumos.Text)=Trim(edtVinculacao.Text) then
    begin
      Application.MessageBox('N�o � Poss�vel Vincular OS  Si Mesma!', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);
        edtVinculacao.Clear;
        Exit;
    end;

    qry:= TFDQuery.Create(nil);
    qry.Connection:=DataModule1.ConMySql;
    sqlstr:='select * from os_engenharia_projeto where numero_os='+QuotedStr(Trim(edtVinculacao.Text));
    qry.SQL.Add(sqlstr);
    qry.open;
    if not qry.IsEmpty then
    begin
      edtVinculacao.Text:=qry.FieldByName('numero_os').AsString;
      FidVinculacaoOS   := qry.FieldByName('id').AsInteger;
    end
    else
    begin
      Application.MessageBox('N�o Foi Encontrada OS', 'Informa��o', MB_OK +MB_ICONINFORMATION);
      edtVinculacao.Clear;
      Exit;
    end;

    //verificar se esta nota e pai
    sqlstr:='select * from os_engenharia_projeto where id_os_vinculacao='+QuotedStr(Trim(inttostr(Self.FIdProjeto)));
    qry.SQL.Clear;
    qry.SQL.Add(sqlstr);
    qry.Close;
    qry.open;
    if not qry.IsEmpty then
    begin
      Application.MessageBox('OS de Origem J� Vinculada Como Pai! '+
                             'N�o Permitido Vincular Com Status de Filha.', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);
        edtVinculacao.Text:='';
        FidVinculacaoOS   := 0;
        Exit;
    end;

    Application.MessageBox('OS Pode Ser Vinculada, Grave a OS Para Vincula��o!', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);

  finally
    FreeAndNil(qry);
  end;
end;

procedure TfrmCadastrarProjeto.edtcodmunicipioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if key = #13 then
  begin
    if trim(edtcodmunicipio.text)='' then
    begin
      if frmconscidade = nil then
        application.createform(tfrmconscidade,frmconscidade);
      frmconscidade.edtopcao.text := edtcodmunicipio.text;
      frmconscidade.tag :=  1 ;
      frmconscidade.showmodal;
    end
    else
    begin
       sqlstr:= ' '+
       ' select * from municipios where cod_municipio = '+quotedstr(edtcodmunicipio.text);
      if consultasqlFD(datamodule1.Qry20,sqlstr) then
      begin
        edtdescmunicipio.text      := datamodule1.query01.fieldbyname('nome_municipio').asstring;
        edtcodmunicipio.text      := datamodule1.query01.fieldbyname('cod_municipio').asstring;
        cbbcrs.setfocus;
      end
      else
      begin
        SemRegistros;
        edtcodmunicipio.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.edtcodprojetistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if trim(edtcodprojetista.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=2;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodprojetista.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=2;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtcodprojetista.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdescprojetista.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.InicializaComponentes;
var
i:Integer;
begin
    for i:=0 to (ComponentCount - 1) do
    if components[i] is tcustomedit then
    begin
      (components[i] as tcustomedit).text := '';
    end
    else if(Components[i] is TCustomComboBox) then
    begin
      (components[i] as TCustomComboBox).ItemIndex:=-1;
    end
    else if(Components[i] is TLabel) then
    begin
      lblprazoservico.Caption:='';
      lblprazoprojeto.Caption:='';
      lblprazomub.Caption:='';
      lblprazogeral.Caption:='';
    end
    else if(Components[i] is TcxDateEdit) then
    begin
      (Components[i] as TcxDateEdit).Text:='';
    end;

      //HABILITA PESQUISA
  sbnovo.Enabled      := True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;
  edttelefone.Text:='';
  edttelefone.EditMask:='!\(999\)0000-0000;0;';
  qrynota.Close;

   if not mmoobservacao.ReadOnly then
    mmoobservacao.ReadOnly:=True;

  DataModule1.qryrevisaoos.Close;

  Label9.Font.Color := clBlack;

end;




procedure TfrmCadastrarProjeto.itemExcluirClick(Sender: TObject);
begin
  inherited;
  if not DataModule1.qryrevisaoos.IsEmpty then
  begin
    with DataModule1.comand do
    begin
      CommandText.Add('delete from os_engenharia_revisao where id='+DataModule1.qryrevisaoos.fieldbyname('id').AsString);
      Execute;
      CommandText.Clear;
      {consultando as notas daquela OS}
      sqlstr :=' select * from os_engenharia_revisao where id_projeto = '+inttostr(FIdProjeto);
      ConsultaSqlFd(DataModule1.qryrevisaoos,sqlstr);
    end;

    Application.MessageBox('Revis�o Removida com Sucesso !', 'Informa��o',
       MB_OK + MB_ICONINFORMATION);

  end;
end;

function TfrmCadastrarProjeto.locaString(prnome: string): Boolean;
var I :Integer;
begin
//For I:= 1 to gridnotas.Rowcount -1 do
//  begin
//  if prnome = gridnotas.Cells[0,I] then
//   result:= true
// end;
//result := false;
end;

procedure TfrmCadastrarProjeto.MontarObjLocal(obj: TProjetoUrbano);
var
        _strDedoDuro:string;
begin
       _strDedoDuro                                                                                                              :='';
       if obj.Fnumero_os        <>     Trim(edtnumos.Text)then _strDedoDuro                                                      := 'NUMERO OS ALTERADO DE :'+obj.Fnumero_os +'PARA :'+edtnumos.Text;
       if obj.doc_celtins       <>     rgdocceltins.ItemIndex then _strDedoDuro                                                  := _strDedoDuro+ ' DOCUMENTO CELTINS ALTERADO ';
       if obj.numero_pvt        <>     Trim(edtnumpvt.Text) then _strDedoDuro                                                    :=_strDedoDuro+'NUMERO DO PVT ALTERADO DE: '+OBJ.numero_pvt + ' PARA: '+edtnumpvt.Text;
       if obj.solicitante       <>     Trim(edtsolicitante.Text) then _strDedoDuro                                               :=_strDedoDuro+'NOME SOLICITANTE ALTERADO DE: '+obj.solicitante +' PARA: '+edtsolicitante.Text;
       if obj.endereco          <>     edtendereco.Text then _strDedoDuro                                                        :=_strDedoDuro+'ENDERE�O ALTERADO DE: '+OBJ.endereco +' PARA: '+edtendereco.Text;
       if obj.telefone          <>     edttelefone.Text then _strDedoDuro                                                        :=_strDedoDuro+'NUMERO TELEFONE ALTERADO DE :'+OBJ.telefone+' PARA: '+edttelefone.Text;
       if obj.id_municipio      <>     StrToIntDef(edtcodmunicipio.Text,0) then _strDedoDuro                                     :=_strDedoDuro+'MUNICIPIO ALTERADO ';
       if obj.id_crs            <>     Integer(cbbcrs.Items.Objects[cbbcrs.ItemIndex]) then _strDedoDuro                         :=_strDedoDuro+'CRS ALTERADO';
       if obj.dt_chegada_geral  <>     (edtdtchegadageral.Text) then _strDedoDuro                                                :=_strDedoDuro+'DATA RECEBIMENTO ALTERADO DE: '+OBJ.dt_chegada_geral+' PARA: '+edtdtchegadageral.Text;
       if obj.dt_conclusao      <>    (edtdataconclusao.Text) then _strDedoDuro                                                  :=_strDedoDuro+'DATA CONCLUS�O ALTERADO DE :'+OBJ.dt_conclusao +' PARA :'+edtdataconclusao.Text;
       if obj.id_tipoos         <>     Integer(cbbclassificacaoos.Items.Objects[cbbclassificacaoos.ItemIndex]) then _strDedoDuro :=_strDedoDuro+'TIPO DE OS ALTERADO';
       if obj.id_statusos       <>     Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex]) then _strDedoDuro                   :=_strDedoDuro+'STATUS ALTERADO DE :'+IntToStr(OBJ.id_statusos);
       if obj.observacao_geral  <>     Trim(mmoobservacao.Text) then _strDedoDuro                                                :=_strDedoDuro+'OBSERVA��O ALTERADA DE: '+OBJ.observacao_geral +' PARA:'+mmoobservacao.Text;
       if obj.caminho_arquivo   <>     Trim(edtdiretorio.Text) then _strDedoDuro                                                 :=_strDedoDuro+'DIRETORIO DE ARQUIVOS ALTERADO DE: '+OBJ.caminho_arquivo+' PARA:'+edtdiretorio.Text;
       if obj.id_tec_campo      <>    (edtcodtecnico.Text) then _strDedoDuro                                                     :=_strDedoDuro+'LEVANTADOR ALTERADO DE: '+OBJ.id_tec_campo+' PARA: '+edtcodtecnico.Text;
       if obj.dt_liberacao_tec  <>     (edtdtliberacaotec.Text) then _strDedoDuro                                                :=_strDedoDuro+'DATA LIBERA��O LEVANTADOR ALTERADA DE :'+OBJ.dt_liberacao_tec+' PARA: '+edtdtliberacaotec.Text ;
       if obj.dt_chegada_tec    <>     (edtdtchegada.Text) then _strDedoDuro                                                     :=_strDedoDuro+'DATA CHEGADA TECNICO ALTERADA DE: '+OBJ.dt_chegada_tec+' PARA: '+edtdtchegada.Text;
       if (obj.id_projetista     <>     edtcodprojetista.Text) AND (OBJ.id_projetista<>'0') then _strDedoDuro                    :=_strDedoDuro+'PROJETISTA ALTERADO DE: '+OBJ.id_projetista +' PARA:'+edtcodprojetista.Text;
       if obj.dt_envio_projeto  <>     (edtdtenvioprojeto.Text) then _strDedoDuro                                                :=_strDedoDuro+'DATA ENVIO PROJETO ALTERADO DE: '+OBJ.dt_envio_projeto+' PARA :'+edtdtenvioprojeto.Text;
       if obj.dt_chegada_projeto <>     (edtdtretornoprojeto.Text) then _strDedoDuro                                             :=_strDedoDuro+'DATA CHEGADA PROJETO ALTERADO DE : '+OBJ.dt_chegada_projeto+' PARA:'+edtdtretornoprojeto.Text;
       if obj.dt_envio_atualizacao<>   (edtenvioatualizacao.Text) then _strDedoDuro                                              :=_strDedoDuro+'DATA ENVIO ATUALIZA��O ALTERADO DE : '+OBJ.dt_envio_atualizacao+' PARA: '+edtenvioatualizacao.Text;
       if obj.dt_chegada_atualizacao<> (edtretornoatualizacao.Text) then _strDedoDuro                                            :=_strDedoDuro+'DATA CHEGADA ATUALIZA��O DE: '+OBJ.dt_chegada_atualizacao+' PARA: '+edtretornoatualizacao.Text;
       if obj.id_tec_atualizador <>    (edtcodtecmub.Text) then _strDedoDuro                                                     :=_strDedoDuro+'ATUALIZADOR ALTERADO DE: '+OBJ.id_tec_atualizador+' PARA: '+edtcodtecmub.Text;
       if obj.qtd_post_proj_urb <>     edtqtdposteprojurbano.text then _strDedoDuro                                              :=_strDedoDuro+'QTD POSTE PROJ URB ALTERADO DE: '+OBJ.qtd_post_proj_urb+' PARA: '+edtqtdposteprojurbano.Text;
       if obj.qtd_post_proj_rur <>     edtqtdposterural.text then _strDedoDuro                                                   :=_strDedoDuro+'QTD POSTE RURAL DE :'+OBJ.qtd_post_proj_rur+' PARA: '+edtqtdposterural.Text;
       if obj.qtd_post_lev      <>     edtqtdlevantado.text then _strDedoDuro                                                    :=_strDedoDuro+'QTD POSTE LEVANTADO DE :'+OBJ.qtd_post_lev+' PARA: '+edtqtdlevantado.Text;
       if obj.qtd_post_atu      <>     edtqtdposteatualizado.text then _strDedoDuro                                              :=_strDedoDuro+'QTD POSTE ATUALIZADO DE :'+OBJ.qtd_post_atu+' PARA: '+edtqtdposteatualizado.Text;
       if obj.qtd_topografia    <>   (edtqtdtopografia.text) then _strDedoDuro                                                   :=_strDedoDuro+'QTD TOPOGRAFIA DE :'+OBJ.qtd_topografia+' PARA: '+edtqtdtopografia.Text;
       if obj.qtd_travessia     <>     (edtqttravessia.text) then _strDedoDuro                                                   :=_strDedoDuro+'QTD TRAVESSIA DE :'+OBJ.qtd_travessia+' PARA :'+edtqttravessia.Text;
       if obj.qtd_incorporacao  <>     (edtqtincorporacao.text) then _strDedoDuro                                                :=_strDedoDuro+'QTD INCORPORA��O DE: '+obj.qtd_incorporacao+' PARA: '+edtqtincorporacao.Text;
       if obj.qtd_improcedente  <>     (edtqtdimprocedente.text) then _strDedoDuro                                               :=_strDedoDuro+'QTD IMPROCEDENTE DE: '+OBJ.qtd_improcedente+' PARA: '+edtqtdimprocedente.Text;
       if obj.qtd_deslocamento  <>     (edtqtddeslocamento.text) then _strDedoDuro                                               :=_strDedoDuro+'QTD DESLOCAMENTO DE: '+OBJ.qtd_deslocamento+' PARA: '+edtqtddeslocamento.Text;
       if obj.qtd_outros        <>     (edtqtdoutros.text) then _strDedoDuro                                                     :=_strDedoDuro+'QTD OUTROS DE: '+OBJ.qtd_outros+' PARA: '+edtqtdoutros.Text;
       if obj.vl_post_proj_urb  <>     (StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll])) then _strDedoDuro     :=_strDedoDuro+'VL. POSTE PROJ URB DE: '+OBJ.vl_post_proj_urb+' PARA :'+(StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll]));
       if obj.vl_post_porj_rur  <>     (StringReplace(edtvlposterural.text,'.','',[rfReplaceAll])) then _strDedoDuro             :=_strDedoDuro+'VL. POSTE PROJ RURAL DE: '+OBJ.vl_post_porj_rur+' PARA :'+(StringReplace(edtvlposterural.text,'.','',[rfReplaceAll]));
       if obj.vl_post_lev       <>     (StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]))then _strDedoDuro               :=_strDedoDuro+'VL. POSTE LEV DE: '+obj.vl_post_lev+' PARA: '+(StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]));
       if obj.vl_post_atu       <>     (StringReplace(edtvlposteatualizado.text,'.','',[rfReplaceAll])) then _strDedoDuro        :=_strDedoDuro+'VL. POSTE ATU DE: '+obj.vl_post_atu+' PARA: '+(StringReplace(edtvlposteatualizado.text,'.','',[rfReplaceAll]));
       if obj.vl_topografia     <>     (StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll])) THEN _strDedoDuro            :=_strDedoDuro+'VL. TOPOGRAFIA DE: '+OBJ.vl_topografia +' PARA: '+(StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll]));
       if obj.vl_travessia      <>     (StringReplace(edtvltravessia.text,'.','',[rfReplaceAll])) then _strDedoDuro              :=_strDedoDuro+'VL. TRAVESSIA DE: '+OBJ.vl_travessia +' PARA: '+(StringReplace(edtvltravessia.text,'.','',[rfReplaceAll]));
       if obj.vl_incorporacao   <>     (StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll])) THEN _strDedoDuro          :=_strDedoDuro+'VL. INCORPORA��O DE: '+OBJ.vl_incorporacao+' PARA: '+(StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll]));
       if obj.vl_improcedente   <>     (StringReplace(edtedvlimprocedente.text,'.','',[rfReplaceAll])) then _strDedoDuro         :=_strDedoDuro+'VL. IMPROCEDENTE DE: '+OBJ.vl_improcedente+' PARA: '+(StringReplace(edtedvlimprocedente.text,'.','',[rfReplaceAll]));
       if obj.vl_deslocamento   <>     (StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll])) then _strDedoDuro           :=_strDedoDuro+'VL. DESLOCAMENTO DE: '+OBJ.vl_deslocamento+' PARA: '+(StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll]));
       if obj.vl_outros         <>     (StringReplace(edtvloutros.text,'.','',[rfReplaceAll])) then _strDedoDuro                 :=_strDedoDuro+'VL. OUTROS DE: '+OBJ.vl_outros+' PARA: '+(StringReplace(edtvloutros.text,'.','',[rfReplaceAll]));
       if obj.topografo         <>     edtTopografo.Text THEN _strDedoDuro                                                       :=_strDedoDuro+'TOPOGRAFO DE: '+OBJ.topografo+' PARA: '+edtTopografo.Text;
       if obj.dt_envio_topografia  <>  edtdtenvioTopografia.Text then _strDedoDuro                                               :=_strDedoDuro+'DT. ENVIO TOPOGRAFIA DE: '+OBJ.dt_envio_topografia+' PARA: '+edtdtenvioTopografia.Text;
       if obj.dt_chegada_topografia <> edtRetornoTopografia.Text THEN _strDedoDuro                                               :=_strDedoDuro+'DT. CHEGADA TOPOGRAFIA DE: '+obj.dt_chegada_topografia+ ' PARA: '+edtRetornoTopografia.Text;
       if obj.dt_devolvido          <> edtdtDevolvida.Text THEN _strDedoDuro                                                     :=_strDedoDuro+'DT. DEVOLVIDA DE: '+OBJ.dt_devolvido+' PARA: '+edtdtDevolvida.Text;
       //if obj.contrato          <>    IntToStr(ifthen(chkContrato.Checked,1,0)) then _strDedoDuro:=_strDedoDuro+ 'CONTRATO DE: '+OBJ.contrato+' PARA: '+IntToStr(ifthen(chkContrato.Checked,1,0));

       //inserir dedo duro
       if Trim(_strDedoDuro)<>EmptyStr then begin
        InsereDedoDuro(DataModule1.qryusuario.FieldByName('iduser').AsString,DataModule1.qryusuario.FieldByName('nome').AsString,_strDedoDuro,Self.FIdProjeto);
       end;

end;

procedure TfrmCadastrarProjeto.N1Click(Sender: TObject);
begin
  inherited;
  if not qrynota.IsEmpty then
  begin
    edtidnota.Text  := qrynota.FieldByName('id').AsString;
    edtnumnota.Text := qrynota.FieldByName('descricao').AsString;
  end;
end;

procedure TfrmCadastrarProjeto.N4Click(Sender: TObject);
begin
  if not qrynota.IsEmpty then
  begin
    with DataModule1.comand do
    begin
      CommandText.Add('delete from os_engenharia_notas where id='+qrynota.fieldbyname('id').AsString);
      Execute;
      CommandText.Clear;
      {consultando as notas daquela OS}
      sqlstr :=' select * from os_engenharia_notas where id_os_projeto = '+inttostr(FIdProjeto);
      ConsultaSqlFd(qrynota,sqlstr);
      edtnumnota.Clear;
      edtidnota.Clear;
      edtnumnota.SetFocus;
    end;
  end;
end;

procedure TfrmCadastrarProjeto.pngbtbtn1Click(Sender: TObject);
begin
  inherited;
  if(edtdataprorrogacao.Text='')then
  begin
    ShowMessage('Inserir Data de Prorroga��o');
    Exit;
  end;
  if(edtdataprorrogacao.Date <= edtdtlimitegeral.Date)then
  begin
    ShowMessage('Data de Prorroga��o N�o Pode Ser Inferior  ou Igual ao Limite !');
    Exit;
  end;
  if(Trim(edtdataconclusao.Text)<>'')then
  begin
    ShowMessage('Projeto com Data de Conslus�o  !');
    Exit;
  end;
  if FrmDistPeriodos = nil then
  Application.CreateForm(TFrmDistPeriodos,FrmDistPeriodos);
  FrmDistPeriodos.showModal;
end;

procedure TfrmCadastrarProjeto.pngbtbtn2Click(Sender: TObject);
begin
  inherited;
  if FrmDistPeriodos = nil then
  Application.CreateForm(TFrmDistPeriodos,FrmDistPeriodos);
  FrmDistPeriodos.showModal;
end;

procedure TfrmCadastrarProjeto.R1Click(Sender: TObject);
begin
  inherited;
  FrmRelMedicoes := TFrmRelMedicoes.Create(Self);
  FrmRelMedicoes.ShowModal;
end;

procedure TfrmCadastrarProjeto.RelatorioOsComProjetistas;
var
  qry:TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := DataModule1.ConMySql;
    try
     RelatorioProjetosComProjetistas;
    except on E: Exception do
      raise;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TfrmCadastrarProjeto.RelatrioEstudosProjetosPorStatuss1Click(
  Sender: TObject);
begin
  inherited;
  FrmRelProjEstatus := TFrmRelProjEstatus.Create(Self);
  FrmRelProjEstatus.ShowModal;
end;

procedure TfrmCadastrarProjeto.RelatrioIndicadoresGerais1Click(
  Sender: TObject);
begin
  inherited;
  FrmRelIndicadoresGerais := TFrmRelIndicadoresGerais.Create(Self);
  FrmRelIndicadoresGerais.Show;
end;

procedure TfrmCadastrarProjeto.RelatrioOSProjetar1Click(Sender: TObject);
begin
  inherited;
  RelatorioProjetosComProjetistas;
end;

procedure TfrmCadastrarProjeto.RelatrioProdutividade1Click(
  Sender: TObject);
begin
  inherited;
  FrmRelProdutividade := TFrmRelProdutividade.Create(Self);
  FrmRelProdutividade.ShowModal;
  FreeAndNil(FrmRelProdutividade);
end;

procedure TfrmCadastrarProjeto.RelatrioVinculao1Click(Sender: TObject);
begin
  inherited;
  frmRelVinculacao:=TfrmRelVinculacao.Create(Self);
  frmRelVinculacao.Show;
end;

procedure TfrmCadastrarProjeto.RemoverVinculao1Click(Sender: TObject);
var
  qryExe:TFDQuery;
begin
  inherited;
  try
    try
      qryExe            := TFDQuery.Create(nil);
      qryExe.Connection := DataModule1.ConMySql;

      {descobrir o id}
      if Trim(edtVinculacao.Text)='' then
      begin
        Application.MessageBox('N�o Foi Encontrada OS', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);
        Exit;
      end
      else
      begin
        sqlstr:='select * from os_engenharia_projeto where numero_os='+QuotedStr(Trim(edtVinculacao.Text));
        qryExe.SQL.Add(sqlstr);
        qryExe.open;
        if not qryExe.IsEmpty then
        begin
          edtVinculacao.Text:=qryExe.FieldByName('numero_os').AsString;
          FidVinculacaoOS   := qryExe.FieldByName('id').AsInteger;
        end;
        qryExe.SQL.Text := 'update os_engenharia_projeto set id_os_vinculacao =0  where  numero_os='+QuotedStr(edtnumos.Text)+' id_os_vinculacao='+IntToStr(FidVinculacaoOS);
        edtVinculacao.Clear;
      end;
    except on E: Exception do
      raise;
    end;
  finally
    FreeAndNil(qryExe);
  end;
end;

procedure TfrmCadastrarProjeto.rgimprocedenteExit(Sender: TObject);
begin
  inherited;
  //se for improcedente
 if Self.Tag<>1 then
 begin
    if(rgimprocedente.ItemIndex=0)then
    begin
      if edtdataconclusao.Text='' then
      begin
        Application.MessageBox('Inserir Data de Conclus�o !', 'Aten��o', MB_OK +
          MB_ICONWARNING);
          rgimprocedente.ItemIndex:=-1;
          edtdataconclusao.SetFocus;
        Exit;
      end;
      if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Conclu�do Improcedente');
    end;

    //pendente
    if(rgimprocedente.ItemIndex=1)then
    begin
      if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Pendente');
    end;
 end;
end;

procedure TfrmCadastrarProjeto.sbconsultarClick(Sender: TObject);
begin
  inherited;
  frmConsutarProjeto:=TfrmConsutarProjeto.Create(Self);
  frmConsutarProjeto.Show;
end;

procedure TfrmCadastrarProjeto.sbexcluirClick(Sender: TObject);
begin
  inherited;
  try
      with DataModule1.comand do
  begin
    sqlstr:='DELETE FROM os_engenharia_projeto WHERE ID='+IntToStr(FIdProjeto);
    CommandText.Text:=sqlstr;
    Execute();
    CommandText.Clear;

    //DELETAR REVISAO
    sqlstr:='DELETE FROM os_engenharia_revisao WHERE ID_PROJETO='+IntToStr(FIdProjeto);
    CommandText.Text:=sqlstr;
    Execute();
    CommandText.Clear;

    sqlstr:='DELETE FROM os_engenharia_revisao_topografia WHERE ID_PROJETO='+IntToStr(FIdProjeto);
    CommandText.Text:=sqlstr;
    Execute();
    CommandText.Clear;

    sqlstr:='DELETE FROM os_engenharia_revisao_atualizacao WHERE ID_PROJETO='+IntToStr(FIdProjeto);
    CommandText.Text:=sqlstr;
    Execute();
    CommandText.Clear;

    sqlstr:='DELETE FROM os_engenharia_revisao_servicocampo WHERE ID_PROJETO='+IntToStr(FIdProjeto);
    CommandText.Text:=sqlstr;
    Execute();
    CommandText.Clear;

    sqlstr:='DELETE FROM os_engenharia_notas WHERE ID_OS_PROJETO='+IntToStr(FIdProjeto);
    CommandText.Text:=sqlstr;
    Execute();
    CommandText.Clear;

    InicializaComponentes;

  end;
  except on E: Exception do
    CriarLog(Self,E,'Excluir Projeto Urbano');
  end;
end;

procedure TfrmCadastrarProjeto.sbgravarClick(Sender: TObject);
var
teste:Double;
begin
  inherited;
  try
      //verificando campos obrigatorios
      if Obrigatorio(Self,edtnumos,'Informe o N�mero da OS !') then Exit;
      if Obrigatorio(Self,edtsolicitante,'Informe o Solicitante !') then Exit;
      if Obrigatorio(Self,edtcodmunicipio,'Informe o Munic�pio !') then Exit;
      if Obrigatorio(Self,edtdtchegadageral,'Informe a Data de Chegada !') then Exit;
      if Obrigatorio(Self,cbbclassificacaoos,'Informe a Classifica��o !') then Exit;
      if Trim(edtnumos.Text)=Trim(edtVinculacao.Text) then
      begin
        Application.MessageBox('N�o � Poss�vel Vincular OS  Si Mesma!', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);
        Exit;
      end;

      if qrynota.IsEmpty then
      begin
        Application.MessageBox(pwidechar('Informe a Nota !'),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
      if(edtdataprorrogacao.Text<>'')then
      begin
        if(edtdataprorrogacao.Date < edtdtlimitegeral.Date)then
        begin
          Application.MessageBox('Data de Prorroga��o N�o Pode Ser Inferior ao Limite !',
            'Aten��o', MB_OK + MB_ICONINFORMATION);
          Exit;
        end;
      end;

   with DataModule1.qryCRUD do
   begin
    SQL.Clear;
    sqlstr :=' UPDATE os_engenharia_projeto SET '+
              ' numero_os =  :numero_os  ,'+
              ' doc_celtins =  :doc_celtins,' +
              ' numero_pvt =  :numero_pvt,solicitante =  :solicitante  ,endereco =  :endereco ,'+
              ' telefone =  :telefone  ,'+
              ' id_municipio =  :id_municipio ,id_crs =  :id_crs ,'+
              ' dt_limite_geral =  :dt_limite_geral  ,dt_chegada_geral =  :dt_chegada_geral,'+
              ' id_tipoos =  :id_tipoos,id_statusos =  :id_statusos,'+
              ' observacao_geral =  :observacao_geral  ,caminho_arquivo =  :caminho_arquivo,'+
              ' id_tec_campo =  :id_tec_campo,dt_liberacao_tec =  :dt_liberacao_tec ,dt_chegada_tec =  :dt_chegada_tec,'+
              ' id_projetista =  :id_projetista,dt_envio_projeto =  :dt_envio_projeto ,'+
              ' dt_chegada_projeto =  :dt_chegada_projeto ,dt_envio_atualizacao =  :dt_envio_atualizacao  ,'+
              ' dt_chegada_atualizacao =  :dt_chegada_atualizacao ,id_tec_atualizador =  :id_tec_atualizador,'+
              ' dt_novo_prazo =  :dt_novo_prazo ,vl_post_proj_urb =  :vl_post_proj_urb,vl_post_porj_rur =  :vl_post_porj_rur,'+
              ' vl_post_lev =  :vl_post_lev  ,vl_post_atu =  :vl_post_atu  ,vl_topografia =  :vl_topografia,'+
              ' vl_travessia =  :vl_travessia  ,vl_incorporacao =  :vl_incorporacao ,vl_improcedente =  :vl_improcedente ,'+
              ' vl_deslocamento =  :vl_deslocamento  ,vl_outros =  :vl_outros  ,qtd_post_proj_urb =  :qtd_post_proj_urb  ,'+
              ' qtd_post_proj_rur =  :qtd_post_proj_rur  ,qtd_post_lev =  :qtd_post_lev ,qtd_post_atu =  :qtd_post_atu ,'+
              ' qtd_topografia =  :qtd_topografia ,qtd_travessia =  :qtd_travessia ,qtd_incorporacao =:qtd_incorporacao,'+
              ' qtd_improcedente =  :qtd_improcedente  ,qtd_deslocamento =  :qtd_deslocamento ,'+
              ' qtd_outros =  :qtd_outros, improcedente = :improcedente,dt_conclusao= :dt_conclusao,topografo = :topografo,'+
              ' dt_envio_topografia = :dt_envio_topografia,'+
              ' dt_chegada_topografia = :dt_chegada_topografia,dt_devolvido = :dt_devolvido,'+
              ' contrato = :contrato,id_os_vinculacao = :id_os_vinculacao '+
              ' WHERE id ='+IntToStr(FIdProjeto);

        sql.Add(sqlstr);

        Params.ParamByName('numero_os').AsString            :=Trim(edtnumos.Text);
        Params.ParamByName('doc_celtins').AsInteger         :=rgdocceltins.ItemIndex;
        Params.ParamByName('numero_pvt').AsString           :=Trim(edtnumpvt.Text);
        Params.ParamByName('solicitante').AsString          :=Trim(edtsolicitante.Text);
        Params.ParamByName('endereco').AsString             :=edtendereco.Text;
        Params.ParamByName('telefone').AsString             :=edttelefone.Text;
        Params.ParamByName('id_municipio').AsInteger        :=StrToIntDef(edtcodmunicipio.Text,0);
        Params.ParamByName('id_crs').AsInteger              :=Integer(cbbcrs.Items.Objects[cbbcrs.ItemIndex]);
        Params.ParamByName('dt_limite_geral').AsDate        :=(edtdtlimitegeral.Date);
        Params.ParamByName('dt_chegada_geral').AsDate       :=(edtdtchegadageral.Date);
        params.ParamByName('dt_conclusao').AsDate           :=(edtdataconclusao.Date);
        Params.ParamByName('id_tipoos').AsInteger           :=Integer(cbbclassificacaoos.Items.Objects[cbbclassificacaoos.ItemIndex]);
        Params.ParamByName('id_statusos').AsInteger         :=Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex]);
        Params.ParamByName('observacao_geral').AsString     :=Trim(mmoobservacao.Text);
        Params.ParamByName('caminho_arquivo').AsString      :=Trim(edtdiretorio.Text);
        Params.ParamByName('id_tec_campo').AsInteger        :=StrToIntDef(Trim(edtcodtecnico.Text),0);
        Params.ParamByName('dt_liberacao_tec').AsDate       :=(edtdtliberacaotec.Date);
        Params.ParamByName('dt_chegada_tec').AsDate         :=(edtdtchegada.Date);
        Params.ParamByName('id_projetista').AsInteger       :=StrToIntDef(Trim(edtcodprojetista.Text),0);
        Params.ParamByName('dt_envio_projeto').AsDate       :=(edtdtenvioprojeto.Date);
        Params.ParamByName('dt_chegada_projeto').AsDate     :=(edtdtretornoprojeto.Date);
        Params.ParamByName('dt_envio_atualizacao').AsDate   :=(edtenvioatualizacao.Date);
        Params.ParamByName('dt_chegada_atualizacao').AsDate :=(edtretornoatualizacao.Date);
        Params.ParamByName('id_tec_atualizador').AsInteger  :=StrToIntDef(Trim(edtcodtecmub.Text),0);
        Params.ParamByName('dt_novo_prazo').AsDate          :=(edtdataprorrogacao.Date);
        Params.ParamByName('qtd_post_proj_urb').AsFloat     :=StrTofloatDef(edtqtdposteprojurbano.text,0);
        Params.ParamByName('qtd_post_proj_rur').AsFloat     :=StrTofloatDef(edtqtdposterural.text,0);
        Params.ParamByName('qtd_post_lev').AsFloat          :=StrTofloatDef(edtqtdlevantado.text,0);
        Params.ParamByName('qtd_post_atu').AsFloat          :=StrTofloatDef(edtqtdposteatualizado.text,0);
        Params.ParamByName('qtd_topografia').AsFloat        :=StrTofloatDef(edtqtdtopografia.text,0);
        Params.ParamByName('qtd_travessia').AsFloat         :=StrTofloatDef(edtqttravessia.text,0);
        Params.ParamByName('qtd_incorporacao').AsFloat      :=StrTofloatDef(edtqtincorporacao.text,0);
        Params.ParamByName('qtd_improcedente').AsFloat      :=StrTofloatDef(edtqtdimprocedente.text,0);
        Params.ParamByName('qtd_deslocamento').AsFloat      :=StrTofloatDef(edtqtddeslocamento.text,0);
        Params.ParamByName('qtd_outros').AsFloat            :=StrTofloatDef(edtqtdoutros.text,0);
        Params.ParamByName('vl_post_proj_urb').AsFloat      :=StrToFloatDef(StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_porj_rur').AsFloat      :=StrToFloatDef(StringReplace(edtvlposterural.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_lev').AsFloat           :=StrToFloatDef(StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_atu').AsFloat           :=StrToFloatDef(StringReplace(edtvlposteatualizado.text,'.','',[rfReplaceAll]) ,0.0);
        Params.ParamByName('vl_topografia').AsFloat         :=StrToFloatDef(StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_travessia').AsFloat          :=StrToFloatDef(StringReplace(edtvltravessia.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_incorporacao').AsFloat       :=StrToFloatDef(StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_improcedente').AsFloat       :=StrToFloatDef(StringReplace(edtedvlimprocedente.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_deslocamento').AsFloat       :=StrToFloatDef(StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_outros').AsFloat             :=StrToFloatDef(StringReplace(edtvloutros.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('improcedente').AsInteger        :=rgimprocedente.ItemIndex;
        params.ParamByName('topografo').AsString            :=edtTopografo.Text;
        params.ParamByName('dt_envio_topografia').AsDate    :=edtdtenvioTopografia.Date;
        params.ParamByName('dt_chegada_topografia').AsDate  :=edtRetornoTopografia.Date;
        params.ParamByName('dt_devolvido').AsDate           :=edtdtDevolvida.Date;
        params.ParamByName('contrato').AsInteger            :=ifthen(chkContrato.Checked,1,0);
        //verificar se esta vazia
        if edtVinculacao.Text='' then
        FidVinculacaoOS                                     :=0;
        params.ParamByName('id_os_vinculacao').AsInteger           :=Self.FidVinculacaoOS;
        //sqlstr:= CommandText.Text;

        Execute();
        //CommandText.Clear;
   end;

      if objetoLocal<>nil then
           objetoLocal.Free;
        //objetoLocal:=TProjetoUrbano.Create;
        if objConsulta<>nil then
        begin
          MontarObjLocal(objConsulta);
          FreeAndNil(objConsulta);
        end;

         InicializaComponentes;
        BuscaId;

          with DataModule1.comand do
          begin
            CommandText.Clear;
            CommandText.Add('insert into os_engenharia_projeto (id)values('+inttostr(FIdProjeto)+')');
            Execute();
            CommandText.Clear;
          end;
          sbnovo.Enabled      :=  false;
          sbgravar.Enabled    :=  true;
          sbconsultar.Enabled :=  true;
          sbexcluir.Enabled   :=  true;
  except on E: Exception do
    CriarLog(Self,E,'Alterar Cadastro Projeto');
  end;
end;

procedure TfrmCadastrarProjeto.sbnovoClick(Sender: TObject);
var
I:Integer;
begin
  inherited;
     try
    try
      //verificando campos obrigatorios
      if Obrigatorio(Self,edtnumos,'Informe o N�mero da OS !') then Exit;
      if Obrigatorio(Self,edtsolicitante,'Informe o Solicitante !') then Exit;
      if Obrigatorio(Self,edtcodmunicipio,'Informe o Munic�pio !') then Exit;
      if Obrigatorio(Self,edtdtchegadageral,'Informe a Data de Chegada !') then Exit;
      if qrynota.IsEmpty then
      begin
        Application.MessageBox(pwidechar('Informe a Nota !'),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        Exit;
      end;

      //definir outros campos obrigatorios

      with DataModule1.qryCRUD do
      begin
        SQL.Text:= ' INSERT INTO os_engenharia_projeto '+
                      ' (numero_os,doc_celtins,numero_pvt, '+
                      ' solicitante,endereco,telefone,id_municipio,'+
                      ' id_crs,dt_limite_geral,dt_chegada_geral,'+
                      ' id_tipoos,id_statusos,observacao_geral,'+
                      ' caminho_arquivo,id_tec_campo,dt_liberacao_tec,'+
                      ' dt_chegada_tec,id_projetista,dt_envio_projeto,'+
                      ' dt_chegada_projeto,dt_envio_atualizacao,dt_chegada_atualizacao,'+
                      ' id_tec_atualizador,dt_novo_prazo,'+
                      ' vl_post_proj_urb,vl_post_porj_rur,vl_post_lev,vl_post_atu,'+
                      ' vl_topografia,vl_travessia,vl_incorporacao,'+
                      ' vl_improcedente,vl_deslocamento,vl_outros,'+
                      ' qtd_post_proj_urb,qtd_post_proj_rur,qtd_post_lev, '+
                      ' qtd_post_atu,qtd_topografia,qtd_travessia,'+
                      ' qtd_incorporacao,qtd_improcedente,qtd_deslocamento,qtd_outros,'+
                      ' improcedente,id_func_cad,dt_conclusao,topografo,dt_envio_topografia,dt_chegada_topografia,dt_devolvido,contrato ) '+
                      ' values (:numero_os,:doc_celtins,:numero_pvt,'+
                      ' :solicitante,:endereco,:telefone,:idmunicipio,'+
                      ' :id_crs,:dt_limite_geral,:dt_chegada_geral,'+
                      ' :id_tipoos,:id_statusos,:observacao_geral,'+
                      ' :caminho_arquivo,:id_tec_campo,:dt_liberacao_tec,'+
                      ' :dt_chegada_tec,:id_projetista,:dt_envio_projeto,'+
                      ' :dt_chegada_projeto,:dt_envio_atualizacao,:dt_chegada_atualizacao,'+
                      ' :id_tec_atualizador,:dt_novo_prazo, '+
                      ' :vl_post_proj_urb,:vl_post_porj_rur,:vl_post_lev,:vl_post_atu,'+
                      ' :vl_topografia,:vl_travessia,:vl_incorporacao,'+
                      ' :vl_improcedente,:vl_deslocamento,:vl_outros,'+
                      ' :qtd_post_proj_urb,:qtd_post_proj_rur,:qtd_post_lev, '+
                      ' :qtd_post_atu,:qtd_topografia,:qtd_travessia,'+
                      ' :qtd_incorporacao,:qtd_improcedente,:qtd_deslocamento,:qtd_outros,'+
                      ' :improcedente,:id_func_cad,:dt_conclusao,:topografo,:dt_envio_topografia,:dt_chegada_topografia,:dt_devolvido,:contrato) ';

        ParamByName('numero_os').AsString              :=trim(edtnumos.Text);
        ParamByName('doc_celtins').AsInteger           :=rgdocceltins.ItemIndex;
        ParamByName('numero_pvt').AsString             :=Trim(edtnumpvt.Text);
        ParamByName('solicitante').AsString            :=Trim(edtsolicitante.Text);
        ParamByName('endereco').AsString               :=Trim(edtendereco.Text);
        ParamByName('telefone').AsString               :=Trim(edttelefone.Text);
        ParamByName('idmunicipio').AsInteger            :=StrToInt(edtcodmunicipio.Text);
        ParamByName('id_crs').AsInteger                 :=Integer(cbbcrs.Items.Objects[cbbcrs.ItemIndex]);
        ParamByName('dt_limite_geral').AsDate        :=(edtdtlimitegeral.Date);
        ParamByName('dt_chegada_geral').AsDate       :=(edtdtchegadageral.Date);
        ParamByName('dt_conclusao').AsDate            :=(edtdataconclusao.Date);
        ParamByName('id_tipoos').AsInteger              :=Integer(cbbclassificacaoos.Items.Objects[cbbclassificacaoos.ItemIndex]);
        ParamByName('id_statusos').AsInteger            :=Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex]);
        ParamByName('observacao_geral').AsString       :=Trim(mmoobservacao.Text);
        ParamByName('caminho_arquivo').AsString        :=Trim(edtdiretorio.Text);
        ParamByName('id_tec_campo').Value           := edtcodtecnico.Text;
        ParamByName('dt_liberacao_tec').AsDate       :=(edtdtliberacaotec.date);
        ParamByName('dt_chegada_tec').AsDate         :=(edtdtchegada.date);
        ParamByName('id_projetista').Value          :=Trim(edtcodprojetista.Text);
        ParamByName('dt_envio_projeto').AsDate       :=(edtdtenvioprojeto.date);
        ParamByName('dt_chegada_projeto').AsDate     :=(edtdtretornoprojeto.date);
        ParamByName('dt_envio_atualizacao').AsDate   :=(edtenvioatualizacao.date);
        ParamByName('dt_chegada_atualizacao').AsDate :=(edtretornoatualizacao.date);
        ParamByName('id_tec_atualizador').Value     :=Trim(edtcodtecmub.Text);
        ParamByName('dt_novo_prazo').AsDate          :=(edtdataprorrogacao.date);

        Params.ParamByName('qtd_post_proj_urb').AsFloat      :=StrTofloatDef(edtqtdposteprojurbano.text,0);
        Params.ParamByName('qtd_post_proj_rur').AsFloat      :=StrTofloatDef(edtqtdposterural.text,0);
        Params.ParamByName('qtd_post_lev').AsFloat           :=StrTofloatDef(edtqtdlevantado.text,0);
        Params.ParamByName('qtd_post_atu').AsFloat          :=StrTofloatDef(edtqtdposteatualizado.text,0);
        Params.ParamByName('qtd_topografia').AsFloat         :=StrTofloatDef(edtqtdtopografia.text,0);
        Params.ParamByName('qtd_travessia').AsFloat          :=StrTofloatDef(edtqttravessia.text,0);
        Params.ParamByName('qtd_incorporacao').AsFloat      :=StrTofloatDef(edtqtincorporacao.text,0);
        Params.ParamByName('qtd_improcedente').AsFloat       :=StrTofloatDef(edtqtdimprocedente.text,0);
        Params.ParamByName('qtd_deslocamento').AsFloat       :=StrTofloatDef(edtqtddeslocamento.text,0);
        Params.ParamByName('qtd_outros').AsFloat             :=StrTofloatDef(edtqtdoutros.text,0);

        Params.ParamByName('vl_post_proj_urb').AsFloat       :=StrToFloatDef(StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_porj_rur').AsFloat       :=StrToFloatDef(StringReplace(edtvlposterural.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_lev').AsFloat            :=StrToFloatDef(StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_atu').AsFloat            :=StrToFloatDef(StringReplace(edtvlposteatualizado.text,'.','',[rfReplaceAll]) ,0.0);
        Params.ParamByName('vl_topografia').AsFloat          :=StrToFloatDef(StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_travessia').AsFloat           :=StrToFloatDef(StringReplace(edtvltravessia.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_incorporacao').AsFloat        :=StrToFloatDef(StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_improcedente').AsFloat        :=StrToFloatDef(StringReplace(edtedvlimprocedente.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_deslocamento').AsFloat        :=StrToFloatDef(StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_outros').AsFloat              :=StrToFloatDef(StringReplace(edtvloutros.text,'.','',[rfReplaceAll]),0.0);

        ParamByName('improcedente').AsInteger       :=rgimprocedente.ItemIndex;
        ParamByName('id_func_cad').AsInteger        :=DataModule1.qryusuario.FieldByName('iduser').AsInteger;
        ParamByName('topografo').AsString           :=edtTopografo.Text;
        ParamByName('dt_envio_topografia').AsDate   :=edtdtenvioTopografia.Date;
        ParamByName('dt_chegada_topografia').AsDate :=edtRetornoTopografia.Date;
        ParamByName('dt_devolvido').AsDate          :=edtdtDevolvida.Date;
        ParamByName('contrato').AsInteger           :=ifthen(chkContrato.Checked,1,0);
        ExecSQL();

      end;
    except on E: Exception do
        CriarLog(Self,E,'Inserir Projeto Urbano');
    end;
  finally
  end;
end;

procedure TfrmCadastrarProjeto.sbrelatoriosClick(Sender: TObject);
begin
  inherited;
  pmrelatorio.Popup(Self.Left+3+sbrelatorios.Left,Self.Top+sbrelatorios.Top+sbrelatorios.Height+28);
end;

procedure TfrmCadastrarProjeto.SpeedButton1Click(Sender: TObject);
var
i:Integer;
begin
  inherited;
   InicializaComponentes;
   BuscaId;

     sqlstr :=' select * from os_engenharia_projeto order by id desc limit 1';
  if ConsultaSqlFd(DataModule1.query01,sqlstr)  then
  begin
    if Trim(DataModule1.query01.FieldByName('numero_os').AsString) = '' then
    begin
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_projeto where id ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_notas where id_os_projeto ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;

    end;
  end;



  BuscaId;
  //gravar id
  with DataModule1.comand do
  begin
    CommandText.Add('insert into os_engenharia_projeto(id)values('+inttostr(FIdProjeto)+')');
    Execute();
    CommandText.Clear;
  end;
  sbnovo.Enabled      :=  false;
  sbgravar.Enabled    :=  true;
  sbconsultar.Enabled :=  true;
  sbexcluir.Enabled   :=  true;

  if objConsulta<>nil then
  FreeAndNil(objConsulta);

end;

procedure TfrmCadastrarProjeto.BuscaConfig(paramentro: Integer);
begin
   sqlstr := ''+
  'select * from os_config where cod_os_tipo ='+inttostr(paramentro);
  ConsultasqlFD(qryconfigdias,sqlstr);
end;

procedure TfrmCadastrarProjeto.BuscaConfig();
begin
  sqlstr := ''+
  'select * from os_config where cod_os_tipo ='+inttostr(Integer(cbbclassificacaoos.Items.Objects[cbbclassificacaoos.ItemIndex]));
  ConsultasqlFD(qryconfigdias,sqlstr);
end;

procedure TfrmCadastrarProjeto.BuscaId;
var
qrylocal:TFDQuery;
begin
try
  qrylocal              := TFDQuery.Create(nil);
  qrylocal.Connection   := DataModule1.ConMySql;
  with qrylocal do
  begin
    sqlstr :='select (max(id)+ 1) as id from os_engenharia_projeto';
    if ConsultaSqlFd(qrylocal,sqlstr)  then
    begin
        if trim(qrylocal.fieldbyname('id').AsString)='' then
          FIdProjeto  := 1
        else
          FIdProjeto  :=  qrylocal.fieldbyname('id').AsInteger;
    end
    else
      FIdProjeto  := 1;
    Close;
  end;
finally
  qrylocal.free;
end;
end;

procedure TfrmCadastrarProjeto.dbgrd1DblClick(Sender: TObject);
begin
  if not qrynota.IsEmpty then
  begin
    edtidnota.Text  := qrynota.FieldByName('id').AsString;
    edtnumnota.Text := qrynota.FieldByName('descricao').AsString;
  end;
end;

procedure TfrmCadastrarProjeto.EditarObservao1Click(Sender: TObject);
begin
  inherited;
  //verificar perfil de usu�rio
  mmoobservacao.ReadOnly:=False;
end;

procedure TfrmCadastrarProjeto.C2Click(Sender: TObject);
begin
  inherited;
  FrmCadCrs:= TFrmCadCrs.Create(Self);
  FrmCadCrs.Tag:=1;
  FrmCadCrs.ShowModal;
  FreeAndNil(FrmCadCrs);
end;

procedure TfrmCadastrarProjeto.C3Click(Sender: TObject);
begin
  inherited;
  if(FrmConsultaRapida=nil)then
  begin
    FrmConsultaRapida:=TFrmConsultaRapida.Create(Self);
    FrmConsultaRapida.ShowModal;
  end;
  FreeAndNil(FrmConsultaRapida);
end;

procedure TfrmCadastrarProjeto.C4Click(Sender: TObject);
begin
  inherited;
  if FrmObservacao=nil then
  begin
    FrmObservacao := TFrmObservacao.Create(Self);
    FrmObservacao.ShowModal;
  end;
    FreeAndNil(FrmObservacao);
end;

function TfrmCadastrarProjeto.CalculaPrazo(_data,_dataFinal,_qtdprazo:String):String;
var
qrylocal:TFDQuery;
begin
  try
    qrylocal              := TFDQuery.Create(nil);
    qrylocal.Connection   := DataModule1.ConMySql;
    if((_dataFinal<>''))then
    begin
      sqlstr :=' SELECT to_days(date_add('+quotedstr(FormataDataMysql(_data))+', interval  '+_qtdprazo+' DAY)) - to_days('+quotedstr(FormataDataMysql(_dataFinal))+') as prazo';
    end
    else
    begin
      sqlstr :=' SELECT to_days(date_add('+quotedstr(FormataDataMysql(_data))+', interval  '+_qtdprazo+' DAY)) - to_days(now()) as prazo';
    end;
    if ConsultaSqlFd(qrylocal,sqlstr) then
      Result :='Prazo de '+qrylocal.FieldByName('prazo').AsString+' Dias'
    else
      Result :='Prazo de '+_qtdprazo+' Dias';
  finally
    qrylocal.Free;
  end;
end;

function TfrmCadastrarProjeto.CalculaPrazoSemLabel(_data,_dataFinal,_qtdprazo:String):String;
var
qrylocal:TFDQuery;
begin
  try
    qrylocal              := TFDQuery.Create(nil);
    qrylocal.Connection   := DataModule1.ConMySql;
    if((_dataFinal<>''))then
    begin
      sqlstr :=' SELECT to_days(date_add('+quotedstr(FormataDataMysql(_data))+', interval  '+_qtdprazo+' DAY)) - to_days('+quotedstr(FormataDataMysql(_dataFinal))+') as prazo';
    end
    else
    begin
      sqlstr :=' SELECT to_days(date_add('+quotedstr(FormataDataMysql(_data))+', interval  '+_qtdprazo+' DAY)) - to_days(now()) as prazo';
    end;
    if ConsultaSqlFd(qrylocal,sqlstr) then
      Result :=qrylocal.FieldByName('prazo').AsString
    else
      Result :=_qtdprazo;
  finally
    qrylocal.Free;
  end;
end;

procedure TfrmCadastrarProjeto.ChamarConsultaVinculados;
begin
  if Label9.Font.Color = clBlue then
  begin
    FrmExibirVinculacoes := TFrmExibirVinculacoes.Create(Self, FIdProjeto, edtnumos.Text);
    FrmExibirVinculacoes.ShowModal;
    FreeAndNil(FrmExibirVinculacoes);
  end
  else
  begin
    Application.MessageBox('OS Selecionada N�o Tem Registros Vinculados !', 'Aten��o', MB_OK + MB_ICONINFORMATION);
  end;
end;

function TfrmCadastrarProjeto.CalculaPrazo2(_data, _dataFinal,
  _qtdPrazo: String): string;
  var
  dtFinal:TDateTime;
  diasPrazo:Integer;
begin
  //verificar se existe data final
  if(_dataFinal='')then
  begin
   diasPrazo:= DaysBetween(Now,IncDay(StrToDate(_data),StrToInt(_qtdPrazo)));
  end
  else
  begin
   diasPrazo:= DaysBetween(StrToDate(_data),StrToDate(_dataFinal));
  end;
  Result := IntToStr(diasPrazo);
end;

procedure TfrmCadastrarProjeto.cbbclassificacaoosExit(Sender: TObject);
var
  qryTemp:TFDQuery;
  qtdDiasProrrogacao:Integer;
begin
  inherited;
  if (Trim(cbbclassificacaoos.text)<>'') and (edtdtchegadageral.Text<>'') then
  begin
    qryTemp:=TFDQuery.Create(nil);
    qryTemp.Connection:=DataModule1.ConMySql;
    sqlstr:='select * from os_config where cod_os_tipo='+IntToStr(Integer(cbbclassificacaoos.Items.Objects[cbbclassificacaoos.ItemIndex]));
    //verificar se a data inicial foi inserida
    //buscanco Configura��es  do Config
    BuscaConfig();
    if((edtdtchegadageral.Text<>'') and (edtdataconclusao.Text=''))then
    begin
      if(ConsultaSqlFd(qryTemp,sqlstr)) then
      begin
        edtdtlimitegeral.Text:= FormatDateTime('dd/mm/yyyy',IncDay(edtdtchegadageral.Date+(qryconfigdias.FieldByName('dias_geral').AsInteger-1)));
      end;
    end;

    if(cbbclassificacaoos.ItemIndex=1)then
      grpCampo.Enabled:=False
    else
    grpCampo.Enabled:=true;

    if(edtdataprorrogacao.Date > edtdtlimitegeral.Date)then
    qtdDiasProrrogacao:=DaysBetween(edtdataprorrogacao.Date,edtdtlimitegeral.Date)
    else
    qtdDiasProrrogacao:=0;

    //INSERIR DATA DE LIMITE
    if ((Trim(edtdtlimitegeral.text) <> '') and (Trim(edtdataconclusao.Text)='') and (Trim(edtdataprorrogacao.Text)='')) then
      lblprazogeral.Caption := CalculaPrazo(edtdtchegadageral.text,'',qryconfigdias.FieldByName('dias_geral').AsString)
    else if (Trim(edtdtlimitegeral.text) <> '') and (Trim(edtdataconclusao.Text)<>'') then
      lblprazogeral.Caption := CalculaPrazo(edtdtchegadageral.text,edtdataconclusao.Text,qryconfigdias.FieldByName('dias_geral').AsString)
    else if (Trim(edtdtlimitegeral.text) <> '') and (Trim(edtdataprorrogacao.Text)<>'') then
      lblprazogeral.Caption := CalculaPrazo(edtdtchegadageral.text,'',IntToStr(qryconfigdias.FieldByName('dias_geral').AsInteger + qtdDiasProrrogacao));

      //bloqueando topografia
      if cbbclassificacaoos.ItemIndex<>2 then
      begin
        grpTopografia.Enabled:=False;
      end;
  end
  else
  begin
    Application.MessageBox('Inserir Data de Chegada !', 'Informa��o', MB_OK +MB_ICONWARNING);
  end;
end;

procedure TfrmCadastrarProjeto.ControleAcesso;
begin

  //desatiavando tudo
  grpCampo.Enabled:=False;
  grpAtualizacao.Enabled:=False;
  grpProjeto.Enabled:=False;
  grpValores.Enabled:=False;

  edtvlposteprojurbano.ReadOnly:=true;
  edtvlposterural.ReadOnly:=true;
  edtvllevantado.ReadOnly:=true;
  edtvlposteatualizado.ReadOnly:=true;
  edtvlrtopografia.ReadOnly:=true;
  edtvltravessia.ReadOnly:=true;
  edtvlrincorporacao.ReadOnly:=true;
  edtvldeslocamento.ReadOnly:=true;
  edtvldeslocamento.ReadOnly:=true;
  edtvloutros.ReadOnly:=true;

  //liberar edit tec
  if(DataModule1.qryusuario.FieldByName('serv_camp').AsInteger=1)then
  begin
    grpCampo.Enabled:=True;
  end;
  if(DataModule1.qryusuario.FieldByName('serv_proj').AsInteger=1)then
  begin
    grpProjeto.Enabled:=True;
  end;
  if(DataModule1.qryusuario.FieldByName('serv_atu').AsInteger=1)then
  begin
    grpAtualizacao.Enabled:=True;
  end;
  if(DataModule1.qryusuario.FieldByName('serv_edt_vl').AsInteger=1)then
  begin
      edtvlposteprojurbano.ReadOnly:=False;
      edtvlposterural.ReadOnly:=False;
      edtvllevantado.ReadOnly:=False;
      edtvlposteatualizado.ReadOnly:=False;
      edtvlrtopografia.ReadOnly:=False;
      edtvltravessia.ReadOnly:=False;
      edtvlrincorporacao.ReadOnly:=False;
      edtvldeslocamento.ReadOnly:=False;
      edtvldeslocamento.ReadOnly:=False;
      edtvloutros.ReadOnly:=False;
  end;

  if( DataModule1.qryusuario.FieldByName('serv_vl').AsInteger=1)then
  begin
      grpValores.Enabled:=True;
  end;

  if( DataModule1.qryusuario.FieldByName('serv_vl').AsInteger<>1)then
  begin
      //mascarando valores
      edtvlposteprojurbano.PasswordChar:='l';
      edtvlposterural.PasswordChar:='l';
      edtvllevantado.PasswordChar:='l';
      edtvlposteatualizado.PasswordChar:='l';
      edtvlrtopografia.PasswordChar:='l';
      edtvltravessia.PasswordChar:='l';
      edtvlrincorporacao.PasswordChar:='l';
      edtedvlimprocedente.PasswordChar:='l';
      edtvldeslocamento.PasswordChar:='l';
      //edtvloutros.PasswordChar:='1';
      edtvloutros.PasswordChar:='l';
      //grpValores.Enabled:=False;
  end;


  //relatorios
  if( DataModule1.qryusuario.FieldByName('exibir_rel_produtividade').AsInteger<>1)then
  begin
    pmrelatorio.Items[5].Visible:=false;
  end;

  if( DataModule1.qryusuario.FieldByName('exibir_rel_indicadores').AsInteger<>1)then
  begin
    pmrelatorio.Items[4].Visible:=false;
  end;

end;


function TfrmCadastrarProjeto.VerificarSeExisteValor:Boolean;
begin

  Result := False;

  if (edtqtdposterural.Text<>'0') and (edtqtdposterural.Text<>'')  then
    Result := true;

    if (edtqtdposteprojurbano.Text<>'0') and (edtqtdposteprojurbano.Text<>'') then
    Result := true;

    if (edtqtdlevantado.Text<>'') and (edtqtdlevantado.Text<>'0') then
    Result := true;

    if (edtqtdposteatualizado.Text<>'0') and (edtqtdposteatualizado.Text<>'') then
    Result := true;

    if (edtqtdtopografia.Text<>'0') and (edtqtdtopografia.Text<>'') then
    Result := true;

    if (edtqtdimprocedente.Text<>'') and (edtqtdimprocedente.Text<>'0') then
    Result := true;

    if (edtqtddeslocamento.Text<>'0') and (edtqtddeslocamento.Text<>'') then
    Result := true;

    if (edtqtddeslocamento.Text<>'0') and (edtqtddeslocamento.Text<>'')  then
    Result := true;

end;

procedure TfrmCadastrarProjeto.RelatorioProjetosComProjetistas;
var
  qry:TFDQuery;
begin
  try
    qry := TFDQuery.Create(nil);
    qry.Connection := DataModule1.ConMySql;
    try
      if  CabecalhoRelProjetistas(qry) then
      begin
          CorpoRelProjetistas(qry);
          RodapeProjetistas(qry);
      end
      else
      begin
        SemRegistros;
      end;
    except on E: Exception do
      CriarLog(Self,E,'Gerar Relatorio Projetista');
    end;
  finally
    FreeAndNil(qry);
  end;
end;

function TfrmCadastrarProjeto.CabecalhoRelProjetistas(qry:tfdquery):Boolean;
begin
  sqlstr := 'SELECT os.dt_chegada_geral,os.numero_os, '+
            '  s.descricao AS status, tp.descricao , os.dt_limite_geral '+
            ' , os.id, fu.nome_razaosocial, os.dt_envio_projeto,os.dt_chegada_geral '+
       ' FROM os_engenharia_projeto AS os '+
       ' INNER JOIN os_engenharia_status AS s '+
       ' ON (os.id_statusos = s.id) '+
       ' INNER JOIN os_engenharia_tipo AS tp  '+
       ' ON (tp.id = os.id_tipoos)  '+
       ' inner JOIN cad_funcionarios fu  '+
       ' ON (os.id_projetista = fu.id)  '+
       ' WHERE  '+
       '  (os.dt_envio_projeto IS not NULL)  '+
       '  AND (os.dt_chegada_projeto <'+QuotedStr('2000-01-01')+')'+
       '  AND (os.id_statusos NOT IN (7, 8, 10, 3)) ';

     Result :=  ConsultaSqlFd(qry,sqlstr);
     if Result then
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
        rdprnt1.impf(01,40,'CNPJ: '+datamodule1.qryempresa.Fieldbyname('cnpj').asstring,[comp17,negrito]);
        rdprnt1.impf(01,60,RetornaDataMysqlComHora(),[comp17,negrito]);
        rdprnt1.imp(02,01,_traco137);
        rdprnt1.impf(03,01,'RELAT�RIO DE OS COM PROJETISTAS ',[comp17,negrito]);
        rdprnt1.imp(04,01,_traco137);
     end;
end;

procedure TfrmCadastrarProjeto.CorpoRelProjetistas(qry:tfdquery);
begin

    {iniciando corpo}
    rdprnt1.ImpF(05,01,'N�MERO OS',[comp17,negrito]);
    rdprnt1.ImpF(05,20,'NOTA',[comp17,negrito]);
    rdprnt1.impF(05,30,'PROJETISTA',[comp17,negrito]);
    rdprnt1.ImpF(05,60,'DT.CHEGADA',[comp17,negrito]);
    rdprnt1.ImpF(05,75,'ENV.PROJE',[comp17,negrito]);
    rdprnt1.ImpF(05,90,'STATUS',[comp17,negrito]);
    rdprnt1.ImpF(05,110,'CLASSIFICA��O',[comp17,negrito]);
    rdprnt1.imp(06,01,_traco137);
    linha  :=7;
    while(not qry.Eof)do
    begin
      rdprnt1.ImpF(Linha,01,qry.FieldByName('numero_os').AsString,[comp17,negrito]);
      rdprnt1.ImpF(Linha,20,qry.FieldByName('numero_os').AsString,[comp17,negrito]);
      rdprnt1.impF(Linha,30,copy(qry.FieldByName('nome_razaosocial').AsString,1,28),[comp17,negrito]);
      rdprnt1.ImpF(Linha,60,qry.FieldByName('dt_chegada_geral').AsString,[comp17,negrito]);
      rdprnt1.ImpF(Linha,75,qry.FieldByName('dt_envio_projeto').AsString,[comp17,negrito]);
      rdprnt1.ImpF(Linha,90,qry.FieldByName('status').AsString,[comp17,negrito]);
      rdprnt1.ImpF(Linha,110,qry.FieldByName('descricao').AsString,[comp17,negrito]);
      Inc(linha);
      qry.Next;
    end;
end;

procedure TfrmCadastrarProjeto.RodapeProjetistas(qry:TFDQuery);
begin
  rdprnt1.impf(linha,01,_traco137,[comp17]);
  Inc(linha);
  rdprnt1.impf(linha,01,'Total de Projetos',[comp17]);
  rdprnt1.impf(linha,75,inttostr(qry.RecordCount),[comp17]);
  rdprnt1.Fechar;
end;
end.
