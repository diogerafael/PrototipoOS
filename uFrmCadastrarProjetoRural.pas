unit uFrmCadastrarProjetoRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.Math, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoNovo, Vcl.Menus,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxButtons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, PngBitBtn, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, FireDAC.Comp.Client,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,System.DateUtils,
  UCadObservacao, URelMedicoesRural, UFrmConsultaRapidaRural, cxGraphics,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;


  type
        TProjetoRural = class
        numero_os:string;
        doc_celtins_passagem:Int16;
        doc_celtins_terra:int16;
        doc_celtins_rural:int16;
        doc_celtins_pessoais:int16;
        solicitante:string;
        cpf:string;
        endereco:string;
        enderecorural:string;
        caminho_arquivo:string;
        telefone:string;
        id_municipio:string;
        id_crs:string;
        dt_limite_geral:string;
        universalizacao:string;
        dt_chegada_geral:string;
        dt_solicitacao_topografia:string;
        id_statusos:string;
        observacao_geral:string;
        id_tec_campo:string;
        dt_liberacao_tec:string;
        dt_chegada_tec:string;
        id_projetista:string;
        dt_envio_projeto:string;
        dt_chegada_projeto:string;
        dt_envio_topografia:string;
        dt_chegada_topografia:string;
        id_topografo:string;
        vl_post_proj_urb:string;
        vl_post_porj_rur:string;
        vl_post_lev:string;
        vl_post_atu:string;
        vl_topografia:string;
        vl_travessia:string;
        vl_incorporacao:string;
        vl_improcedente:string;
        vl_deslocamento:string;
        vl_outros:string;
        qtd_post_proj_urb:string;
        qtd_post_proj_rur:string;
        qtd_post_lev:string;
        qtd_post_atu:string;
        qtd_topografia:string;
        qtd_travessia:string;
        qtd_incorporacao:string;
        qtd_improcedente:string;
        qtd_deslocamento:string;
        qtd_outros:string;
        dt_conclusao:string;
        improcedente:Int16;
        dias_topografia:int16;
        dt_devolvida:string;
        ativo_passivo:Int16;
        qtd_levantamento:string;
        vl_levantamento:string;
        topografo:string;
        end;

type
  TfrmCadastrarProjetoRural = class(TFrmCadPadraoNovoGrande)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl32: TLabel;
    lbl2: TLabel;
    lbl11: TLabel;
    lblProrroga��o: TLabel;
    lblprazogeral: TLabel;
    grp6: TGroupBox;
    edtidnota: TEdit;
    edtnumos: TEdit;
    edtnumnota: TEdit;
    edtdescmunicipio: TEdit;
    edtcodmunicipio: TEdit;
    edtdtsolicitacaoTopografia: TcxDateEdit;
    edtdiretorio: TEdit;
    edtdiretorioarquivo: TPngBitBtn;
    edtendereco: TEdit;
    edtdtchegadageral: TcxDateEdit;
    edtdtprorrogacao: TcxDateEdit;
    cbbcrs: TComboBox;
    cbbstatus: TComboBox;
    dbgrid_notas_rural: TDBGrid;
    btn1: TcxButton;
    edtdtlimitegeral: TcxDateEdit;
    edtpngbtbtn1: TPngBitBtn;
    lbl12: TLabel;
    edtEnderecoRural: TEdit;
    lbl10: TLabel;
    grpCampo: TGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lblprazoservico: TLabel;
    edtdtliberacaotec: TcxDateEdit;
    edtdtchegada: TcxDateEdit;
    edtcodtecnico: TEdit;
    edtdesctecnico: TEdit;
    grpAtualizacao: TGroupBox;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lblprazomub: TLabel;
    edtenviotopografia: TcxDateEdit;
    edtretornotopografia: TcxDateEdit;
    edtcodtopografo: TEdit;
    edtdesctopografo: TEdit;
    grpProjeto: TGroupBox;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lblprazoprojeto: TLabel;
    btninserirrevisao: TPngSpeedButton;
    edtdtenvioprojeto: TcxDateEdit;
    edtdtretornoprojeto: TcxDateEdit;
    dbgrdlistarevisao: TDBGrid;
    edtcodprojetista: TEdit;
    edtdescprojetista: TEdit;
    grp2: TGroupBox;
    mmoobservacao: TMemo;
    qrynota_rural: TFDQuery;
    dsnota_rural: TDataSource;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    GroupBox1: TGroupBox;
    chkPassagem: TCheckBox;
    chkTerra: TCheckBox;
    chkRural: TCheckBox;
    chkDocumentosPessoais: TCheckBox;
    dlgOpen1: TOpenDialog;
    lbl20: TLabel;
    Label1: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl27: TLabel;
    rgimprocedente: TRadioGroup;
    lbl31: TLabel;
    edtdtconclusao: TcxDateEdit;
    grp3: TGroupBox;
    edtDiasTopografia: TEdit;
    qryconfigdias: TFDQuery;
    edtUniversalizaca: TEdit;
    dsrevisao: TDataSource;
    pmrelatorio: TPopupMenu;
    RelatrioEstudosProjetosPorStatuss1: TMenuItem;
    E1: TMenuItem;
    lbl37: TLabel;
    edtdtDevolvida: TcxDateEdit;
    lbl5: TLabel;
    edtAtendido: TEdit;
    dbgrdUser: TDBGrid;
    lbl6: TLabel;
    lbl16: TLabel;
    qrySolicitante: TFDQuery;
    dsSolicitante: TDataSource;
    pmSolicitante: TPopupMenu;
    btnSolicitante: TcxButton;
    D1: TMenuItem;
    pmOpcoes: TPopupMenu;
    C2: TMenuItem;
    rgAtvPassivo: TRadioGroup;
    C1: TMenuItem;
    gridLevantamento: TDBGrid;
    btn2: TPngSpeedButton;
    dbgrd1: TDBGrid;
    btn3: TPngSpeedButton;
    qryLevantamento: TFDQuery;
    qryTopografia: TFDQuery;
    dsLevantamento: TDataSource;
    dsTopografia: TDataSource;
    R1: TMenuItem;
    C3: TMenuItem;
    grpValores: TGroupBox;
    lbl21: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lblTravessia: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl41: TLabel;
    lbl36: TLabel;
    lbl42: TLabel;
    lbl15: TLabel;
    edtqtdposterural: TEdit;
    edtqtdposteprojurbano: TEdit;
    edtqtdlevantado: TEdit;
    edtqtdlevantamento: TEdit;
    edtqtdtopografia: TEdit;
    edtqttravessia: TEdit;
    edtqtincorporacao: TEdit;
    edtqtddeslocamento: TEdit;
    edtvlposteprojurbano: TEdit;
    edtvlposterural: TEdit;
    edtvllevantado: TEdit;
    edtvllevantamento: TEdit;
    edtvlrtopografia: TEdit;
    edtvltravessia: TEdit;
    edtvlrincorporacao: TEdit;
    edtvldeslocamento: TEdit;
    edtqtdoutros: TEdit;
    edtvloutros: TEdit;
    PopupMenu2: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pm2: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    pm3: TPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    DedoDuro1: TMenuItem;
    lblDedoDuro: TLabel;
    RelatorioAnomalias1: TMenuItem;
    Label2: TLabel;
    dtLibTop: TcxDateEdit;
    btVinculacao: TcxButton;
    EditarObservao1: TMenuItem;
    CadastrarAssentamento1: TMenuItem;
    RemoverNota1: TMenuItem;
    RelatrioAssentamentos1: TMenuItem;
    Relatrio1: TMenuItem;
    Label9: TLabel;
    edtVinculacao: TEdit;
    shp5: TShape;
    lblapagar: TLabel;
    shp2: TShape;
    lbljapagas: TLabel;
    shp4: TShape;
    lblvencehoje: TLabel;
    PopupMenu3: TPopupMenu;
    RemoverVinculao1: TMenuItem;
    ExibirOSVinculadas1: TMenuItem;
    AlterarAnoUniversalizao1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure sbgravarClick(Sender: TObject);
    procedure edtnumosExit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodtopografoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodprojetistaKeyPress(Sender: TObject; var Key: Char);
    procedure btninserirrevisaoClick(Sender: TObject);
    procedure edtdiretorioarquivoClick(Sender: TObject);
    procedure sbconsultarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbexcluirClick(Sender: TObject);
    procedure sbsairClick(Sender: TObject);
    procedure edtpngbtbtn1Click(Sender: TObject);
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

    procedure btnDiasTopografiaClick(Sender: TObject);
    procedure edtdtchegadageralExit(Sender: TObject);
    procedure edtdtliberacaotecExit(Sender: TObject);
    procedure edtdtsolicitacaoTopografiaExit(Sender: TObject);
    procedure edtdtenvioprojetoExit(Sender: TObject);
    procedure edtdtchegadaExit(Sender: TObject);
    procedure edtretornotopografiaExit(Sender: TObject);
    procedure edtdtretornoprojetoExit(Sender: TObject);
    procedure sbnovoClick(Sender: TObject);
    procedure edtenviotopografiaExit(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure sbrelatoriosClick(Sender: TObject);
    procedure rgimprocedenteExit(Sender: TObject);
    procedure RelatrioEstudosProjetosPorStatuss1Click(Sender: TObject);
    procedure edtdtDevolvidaExit(Sender: TObject);
    procedure btnSolicitanteClick(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure btnopcoesClick(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure rgAtvPassivoExit(Sender: TObject);
    procedure rgimprocedenteClick(Sender: TObject);
    procedure rgAtvPassivoClick(Sender: TObject);
    procedure edtdtconclusaoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtqtdlevantamentoKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DedoDuro1Click(Sender: TObject);
    procedure RelatorioAnomalias1Click(Sender: TObject);
    procedure dtLibTopExit(Sender: TObject);
    procedure btVinculacaoClick(Sender: TObject);
    procedure edtVinculacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditarObservao1Click(Sender: TObject);
    procedure CadastrarAssentamento1Click(Sender: TObject);
    procedure RemoverNota1Click(Sender: TObject);
    procedure RelatrioAssentamentos1Click(Sender: TObject);
    procedure RemoverVinculao1Click(Sender: TObject);
    procedure ExibirOSVinculadas1Click(Sender: TObject);
    procedure AlterarAnoUniversalizao1Click(Sender: TObject);
  private
    { Private declarations }
    FDiasProjeto:Integer;
    FDiasTopografia:Integer;
    procedure InicializaComponentes;
    procedure BuscaId;
    procedure ControleAcesso;
    procedure limparID;
    procedure GerarNovoId;
    procedure ApagarId;
    procedure VerificarDedoDuro(obj:TProjetoRural);
    function VerificarSeExisteValor: Boolean;
    procedure ChamarConsultaVinculados;
  public
    { Public declarations }
    ObjConsulta:TProjetoRural;
    FIdProjeto:Integer;
    FIdUsuarioCad:Integer;
    FidVinculacaoOS: Integer;
    procedure AtualizarGrid;
    procedure AtualizarGridSolicitante;
    procedure BuscarConfig;
    function  CalculaPrazo(_data,_dataFinal,_qtdprazo:String):String;
    procedure AtualizarCrs;
  end;

var
  frmCadastrarProjetoRural: TfrmCadastrarProjetoRural;

implementation

{$R *.dfm}

uses DataModule, u_conscodmunicipio, UConsFuncionario,
  uFrmCadastrarRevisaoRural, Winapi.ShellAPI, uConsProjetoRural,
  UDistPeriodosRural, URelProjetoPorStatusRural, uCadSolicitante, uCadCrs,
  UFrmDedoDuroRural, UCad_Assentamento, uFrmRemoverNota, URelAssentamento,
  URelAnomalias, UExibirVinculacoes, UAlterarAnoUniversalizacao;

procedure TfrmCadastrarProjetoRural.AlterarAnoUniversalizao1Click(
  Sender: TObject);
begin
  inherited;
  FrmAlterarUniversalizacao := TFrmAlterarUniversalizacao.Create(Self);
  FrmAlterarUniversalizacao.ShowModal;
  FreeAndNil(FrmAlterarUniversalizacao);
end;

procedure TfrmCadastrarProjetoRural.ApagarId;
begin
    if (Trim(edtnumos.Text) = '') and (Trim(edtdtchegadageral.Text)='') and qrynota_rural.IsEmpty then
    begin
     with DataModule1.comand do
     begin
     CommandText.Clear;
      CommandText.Add('delete from os_engenharia_projeto_rural where id ='+IntToStr(Self.FIdProjeto));
      execute;
      CommandText.clear;
     end;
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_notas_rural where id_os_projeto ='+inttostr(Self.FIdProjeto));
      execute;
      CommandText.clear;
     end;

     with DataModule1.comand do
     begin
      CommandText.Clear;
      CommandText.Add('DELETE from os_engenharia_clientes_rural where id_projeto = '+inttostr(Self.FIdProjeto));
      Execute();
     end;
    end;
end;

procedure TfrmCadastrarProjetoRural.AtualizarCrs;
begin
  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_crs order by descricao');
  DataModule1.qryCRUD.First;
  //if frmCadastrarProjetoRural = nil then
  cbbcrs.Clear;
  while not DataModule1.qryCRUD.Eof do
  begin
    cbbcrs.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
    DataModule1.qryCRUD.Next;
  end;
end;

procedure TfrmCadastrarProjetoRural.GerarNovoId;
begin
  //limparID;
  //gravar id

  with DataModule1.comand do
  begin
    CommandText.clear;
    CommandText.Add('insert into os_engenharia_projeto_rural (id) values(0)');
    sqlstr := CommandText.Text;
    Execute;
    CommandText.Clear;
  end;
  BuscaId;
  sbnovo.Enabled := false;
  sbgravar.Enabled := true;
  sbconsultar.Enabled := true;
  sbexcluir.Enabled := true;
end;

procedure TfrmCadastrarProjetoRural.AtualizarGrid;
begin
  DataModule1.qryrevisaoos_rural.Close;
  DataModule1.qryrevisaoos_rural.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  DataModule1.qryrevisaoos_rural.Open();

  qryLevantamento.Close;//levantamento
  qryLevantamento.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  qryLevantamento.Open();

  qryTopografia.Close;//topografia
  qryTopografia.Params.ParamByName('PRCODPROJETO').AsInteger:=FIdProjeto;
  qryTopografia.Open();
end;


procedure TfrmCadastrarProjetoRural.AtualizarGridSolicitante;
begin
  qrySolicitante.Close;
  qrySolicitante.Params.ParamByName('id_projeto').AsInteger:=FIdProjeto;
  qrySolicitante.Open();
end;

procedure TfrmCadastrarProjetoRural.btn1Click(Sender: TObject);
var
  qrylocal:TFDQuery;
begin
  inherited;
  qrylocal:= TFDQuery.Create(nil);
  qrylocal.Connection := DataModule1.ConMySql;
  if(edtnumnota.Text<>'')then
  begin
    //verificar se a nota ja foi inserida
    if(ConsultaSqlFd(qrylocal, 'select * from os_engenharia_notas_rural where descricao='+trim(QuotedStr(edtnumnota.Text))))then
    begin
      ShowMessage('N�mero de Nota J� Cadastrardo !');
      Exit;
    end;

    if trim(edtidnota.Text) = '' then
    begin
      with DataModule1.comand do
      begin
        CommandText.Clear;
        CommandText.Add('insert into os_engenharia_notas_rural (descricao,id_os_projeto) VALUES (:descricao,:id_os_projeto)');
        Params.ParamByName('descricao').Value     := Trim(edtnumnota.Text);
        Params.ParamByName('id_os_projeto').Value := FIdProjeto;
        Execute;
        CommandText.Clear;
        {consultando as notas daquela OS}
        sqlstr :=' select * from os_engenharia_notas_rural where id_os_projeto = '+inttostr(FIdProjeto);
        ConsultaSqlFd(qrynota_rural,sqlstr);
        edtnumnota.Clear;
        edtnumnota.SetFocus;
      end;
    end
    else
    begin
      with DataModule1.comand do
      begin
        CommandText.Clear;
        CommandText.Add('update os_engenharia_notas_rural set descricao=:descricao where id='+edtidnota.Text);
        Params.ParamByName('descricao').Value     := edtnumnota.Text;
        Execute;
        CommandText.Clear;
        {consultando as notas daquela OS}
        sqlstr :=' select * from os_engenharia_notas_rural where id_os_projeto = '+inttostr(FIdProjeto);
        ConsultaSqlFd(qrynota_rural,sqlstr);
        edtnumnota.Clear;
        edtidnota.Clear;
        edtnumnota.SetFocus;
      end;
    end;
  end;

end;

procedure TfrmCadastrarProjetoRural.btn2Click(Sender: TObject);
begin
  inherited;
  frmCadastrarRevisaoRural:=TfrmCadastrarRevisaoRural.Create(Self);
  frmCadastrarRevisaoRural.Tag:=1;
  frmCadastrarRevisaoRural.ShowModal;
  FreeAndNil(frmCadastrarRevisaoRural);
end;

procedure TfrmCadastrarProjetoRural.btn3Click(Sender: TObject);
begin
  inherited;
    frmCadastrarRevisaoRural := TfrmCadastrarRevisaoRural.Create(Self);
    frmCadastrarRevisaoRural.Tag:=2;
    frmCadastrarRevisaoRural.Show;
    //FreeAndNil(frmCadastrarRevisaoRural);
end;

procedure TfrmCadastrarProjetoRural.btnDiasTopografiaClick(
  Sender: TObject);
begin
  inherited;
  FDiasTopografia := StrToIntDef(edtDiasTopografia.Text,0);
end;

procedure TfrmCadastrarProjetoRural.btninserirrevisaoClick(
  Sender: TObject);
begin
  inherited;
    frmCadastrarRevisaoRural := TfrmCadastrarRevisaoRural.Create(Self);
    frmCadastrarRevisaoRural.Tag:=0;
    frmCadastrarRevisaoRural.Show;
    //FreeAndNil(frmCadastrarRevisaoRural);
end;

procedure TfrmCadastrarProjetoRural.btnopcoesClick(Sender: TObject);
begin
  inherited;
  pmOpcoes.Popup(Self.Left+3+sbrelatorios.Left,Self.Top+sbrelatorios.Top+sbrelatorios.Height+28);
end;

procedure TfrmCadastrarProjetoRural.btnSolicitanteClick(Sender: TObject);
var
  qryLocal:TFDQuery;
begin
  inherited;
  if Obrigatorio(Self,edtnumos,'Informar N�mero de OS!')then Exit;
  if qrynota_rural.IsEmpty then
  begin
    Application.MessageBox('Informar Nota !',
    'Aten��o', MB_OK + MB_ICONQUESTION);
    Exit;
  end;

  FrmCadSolicitante := TFrmCadSolicitante.Create(Self);
  FrmCadSolicitante.ShowModal;
  FreeAndNil(FrmCadSolicitante);
end;

procedure TfrmCadastrarProjetoRural.btVinculacaoClick(Sender: TObject);
var
qry:TFDQuery;
sqlstr:string;
begin
  inherited;
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
    sqlstr:='select * from os_engenharia_projeto_rural where numero_os='+QuotedStr(Trim(edtVinculacao.Text));
    qry.SQL.Add(sqlstr);
    qry.open;
    if not qry.IsEmpty then
    begin
      edtVinculacao.Text:=qry.FieldByName('numero_os').AsString;
      FidVinculacaoOS   := qry.FieldByName('id').AsInteger;
      Exit;
    end
    else
    begin
      Application.MessageBox('N�o Foi Encontrada OS', 'Informa��o', MB_OK +
        MB_ICONINFORMATION);
        Exit;
    end;

    //verificar se a note e pai
    sqlstr:='select * from os_engenharia_projeto_rural where id_os_vinculacao='+QuotedStr(Trim(edtnumos.Text));
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


    Application.MessageBox('OS Pode Ser Vinculada, Grave a OS Para Vincula��o!', 'Informa��o', MB_OK +MB_ICONINFORMATION);

  finally
    FreeAndNil(qry);
  end;
end;

procedure TfrmCadastrarProjetoRural.BuscaId;
var
qrylocal:TFDQuery;
begin
try
  qrylocal              := TFDQuery.Create(nil);
  qrylocal.Connection   := DataModule1.ConMySql;
  with qrylocal do
  begin
    sqlstr :='select LAST_INSERT_ID() as id from os_engenharia_projeto_rural';
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


procedure TfrmCadastrarProjetoRural.BuscarConfig;
begin
  sqlstr := ''+
  'select * from os_config where id=4';
  ConsultasqlFD(qryconfigdias,sqlstr);
end;

procedure TfrmCadastrarProjetoRural.C1Click(Sender: TObject);
begin
  inherited;
  if FrmObservacao=nil then
    begin
      FrmObservacao := TFrmObservacao.Create(Self);
      FrmObservacao.Tag:=1;
      FrmObservacao.ShowModal;
    end;
    FreeAndNil(FrmObservacao);
end;

procedure TfrmCadastrarProjetoRural.C2Click(Sender: TObject);
begin
  inherited;
  FrmCadCrs:= TFrmCadCrs.Create(Self);
  FrmCadCrs.Tag:=0;
  FrmCadCrs.ShowModal;
  FreeAndNil(FrmCadCrs);
end;

procedure TfrmCadastrarProjetoRural.C3Click(Sender: TObject);
begin
  inherited;
  FrmConsultaRapidaRural:=TFrmConsultaRapidaRural.Create(Self);
  FrmConsultaRapidaRural.ShowModal;
  FreeAndNil(FrmConsultaRapidaRural);
end;

procedure TfrmCadastrarProjetoRural.CadastrarAssentamento1Click(
  Sender: TObject);
begin
  inherited;
  if FrmCadAssentamento=nil then
  begin
    FrmCadAssentamento:=TFrmCadAssentamento.Create(Self);
    FrmCadAssentamento.ShowModal;
  end;

end;

function TfrmCadastrarProjetoRural.CalculaPrazo(_data, _dataFinal,
  _qtdprazo: String): String;
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
    if ConsultaSqlFd(qrylocal,sqlstr)  then
      Result :='Prazo de '+qrylocal.FieldByName('prazo').AsString+' Dias'
    else
      Result :='Prazo de '+_qtdprazo+' Dias';
  finally
    qrylocal.Free;
  end;

end;

procedure TfrmCadastrarProjetoRural.ControleAcesso;
begin
//
 //desatiavando tudo
  grpCampo.Enabled:=False;
  grpAtualizacao.Enabled:=False;
  grpProjeto.Enabled:=False;
  grpValores.Enabled:=False;

      edtvlposteprojurbano.ReadOnly:=true;
      edtvlposterural.ReadOnly:=true;
      edtvllevantado.ReadOnly:=true;
      //edtvlposteatualizado.ReadOnly:=true;
      edtvlrtopografia.ReadOnly:=true;
      edtvltravessia.ReadOnly:=true;
      edtvlrincorporacao.ReadOnly:=true;
      edtvldeslocamento.ReadOnly:=true;
      edtvldeslocamento.ReadOnly:=true;
      edtvloutros.ReadOnly:=true;
      edtvllevantamento.ReadOnly:=True;
  //liberar edit tec
  if(DataModule1.qryusuario.FieldByName('ser_campo_rural').AsInteger=1)then
  begin
    grpCampo.Enabled:=True;
  end;
  if(DataModule1.qryusuario.FieldByName('ser_proj_rural').AsInteger=1)then
  begin
    grpProjeto.Enabled:=True;
  end;
  if(DataModule1.qryusuario.FieldByName('serv_topografia').AsInteger=1)then
  begin
    grpAtualizacao.Enabled:=True;
  end;
  if(DataModule1.qryusuario.FieldByName('serv_edt_vl_rural').AsInteger=1)then
  begin
      edtvlposteprojurbano.ReadOnly:=False;
      edtvlposterural.ReadOnly:=False;
      edtvllevantado.ReadOnly:=False;
      //edtvlposteatualizado.ReadOnly:=False;
      edtvlrtopografia.ReadOnly:=False;
      edtvltravessia.ReadOnly:=False;
      edtvlrincorporacao.ReadOnly:=False;
      edtvldeslocamento.ReadOnly:=False;
      edtvllevantamento.ReadOnly:=False;
      edtvloutros.ReadOnly:=False;
  end;

  if( DataModule1.qryusuario.FieldByName('ser_vl_rural').AsInteger=1)then
  begin
      grpValores.Enabled:=True;
  end;

  if( DataModule1.qryusuario.FieldByName('ser_vl_rural').AsInteger<>1)then
  begin
      //mascarando valores
      edtvlposteprojurbano.PasswordChar:='l';
      edtvlposterural.PasswordChar:='l';
      edtvllevantado.PasswordChar:='l';
      //edtvlposteatualizado.PasswordChar:='l';
      edtvlrtopografia.PasswordChar:='l';
      edtvltravessia.PasswordChar:='l';
      edtvlrincorporacao.PasswordChar:='l';
      edtvllevantamento.PasswordChar:='l';
      edtvldeslocamento.PasswordChar:='l';
      edtvloutros.PasswordChar:='l';

  end;
end;

procedure TfrmCadastrarProjetoRural.D1Click(Sender: TObject);
begin
  inherited;
  if(not qrySolicitante.IsEmpty)then
  begin
    with DataModule1.comand do
    begin
      CommandText.Clear;
      CommandText.Add('delete os_engenharia_clientes_rural where id_projeto  = :id_projeto');
      Params.ParamByName('id_projeto').AsInteger := qrySolicitante.FieldByName('id_projeto').AsInteger;
      Execute();      
    end;
      AtualizarGridSolicitante;
      
  end;
end;

procedure TfrmCadastrarProjetoRural.DedoDuro1Click(Sender: TObject);
begin
  inherited;
  FrmDedoDuroRural:=TFrmDedoDuroRural.Create(Self);
  FrmDedoDuroRural.ShowModal;
end;

procedure TfrmCadastrarProjetoRural.dtLibTopExit(Sender: TObject);
begin
  inherited;
    if Self.Tag<>1 then
  begin
    if(edtdtconclusao.Text='') and (edtdtsolicitacaoTopografia.Text<>'') and (dtLibTop.Text<>'') then
    begin
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Topografia Liberada');
    end
    else if edtdtconclusao.Text<>'' then
    begin        Application.MessageBox('Projeto J� Conclu�do !', 'Informa��o',
       MB_OK + MB_ICONINFORMATION);

    end
    else if (dtLibTop.Text<>'') then
    begin
      Application.MessageBox('Inserir Data Solicita��o Topografia !', 'Informa��o',
       MB_OK + MB_ICONINFORMATION);
       edtdtsolicitacaoTopografia.SetFocus;
    end;
  end;
end;

procedure TfrmCadastrarProjetoRural.E1Click(Sender: TObject);
begin
  inherited;
  if not DataModule1.qryrevisaoos.IsEmpty then
  begin
    with DataModule1.comand do
    begin
      CommandText.Add('delete from os_engenharia_revisao_rural where id='+DataModule1.qryrevisaoos.fieldbyname('id').AsString);
      Execute;
      CommandText.Clear;
      {consultando as notas daquela OS}
      AtualizarGrid;
    end;
    Application.MessageBox('Revis�o Removida com Sucesso !', 'Informa��o',
       MB_OK + MB_ICONINFORMATION);

  end;
end;

procedure TfrmCadastrarProjetoRural.E2Click(Sender: TObject);
begin
  inherited;
  try
    
  except on E: Exception do
  end;
end;

procedure TfrmCadastrarProjetoRural.EditarObservao1Click(Sender: TObject);
begin
  inherited;
  mmoobservacao.ReadOnly:=False;
end;

procedure TfrmCadastrarProjetoRural.edtcodmunicipioKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
   if key = #13 then
  begin
    if trim(edtcodmunicipio.text)='' then
    begin
      if frmconscidade = nil then
        application.createform(tfrmconscidade,frmconscidade);
      frmconscidade.edtopcao.text := edtcodmunicipio.text;
      frmconscidade.tag :=  2 ;
      frmconscidade.showmodal;
    end
    else
    begin
       sqlstr:= ' '+
       ' select * from municipios where cod_municipio = '+quotedstr(edtcodmunicipio.text);
      if consultasqlFD(datamodule1.Qry20,sqlstr)  then
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

procedure TfrmCadastrarProjetoRural.edtcodprojetistaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
    if key = #13 then
  begin
    if trim(edtcodprojetista.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=8;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodprojetista.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=8;
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

procedure TfrmCadastrarProjetoRural.edtcodtopografoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if key = #13 then
  begin
    if trim(edtcodtopografo.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=7;
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
        FrmConsFuncionario.Tag :=7;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtcodtopografo.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdesctopografo.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
    end;
  end;

end;


procedure TfrmCadastrarProjetoRural.edtdiretorioarquivoClick(
  Sender: TObject);
begin
  inherited;
  if(edtdiretorio.Text='')then begin
    if(dlgOpen1.Execute())then
    begin
      edtdiretorio.Text:=dlgOpen1.FileName;
    end;
  end
  else
  begin
    ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(edtdiretorio.Text)),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtdtchegadaExit(Sender: TObject);
begin
  inherited;
  if Self.Tag<>1 then
  begin
    ValidarDataMenor(edtdtliberacaotec,edtdtchegada);
    if not ValidarDataMenorAno(edtdtchegada.Text) then
    begin
      Application.MessageBox('Data Inferior  a 01/01/2000 !','Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;
    if not ValidarDataHoje(edtdtchegada.text) then
    begin
      Application.MessageBox('Data Superir a Data Hoje !','Aviso', MB_OK + MB_ICONINFORMATION);
      (Sender as TcxDateEdit).Clear;
      (Sender as TcxDateEdit).SetFocus;
      Exit;
    end;

   if((edtdtliberacaotec.Text<>'') and (edtdtchegadageral.Text<>'') and (edtdtchegada.Text<>'') and (rgAtvPassivo.ItemIndex=0))then
   begin
    lblprazoservico.Caption := 'Dura��o do Servi�o: ';
    lblprazoservico.Caption := lblprazoservico.Caption + IntToStr(DaysBetween(edtdtliberacaotec.Date,edtdtchegada.Date)) +' Dias';
   end;
  end;


end;

procedure TfrmCadastrarProjetoRural.edtdtchegadageralExit(Sender: TObject);
var
qryTemp :TFDQuery;
qtdDiasProrrogacao:Integer;
begin
  inherited;
  if((edtdtchegadageral.Text <>'') and (edtdtliberacaotec.Text='') and (edtdtenvioprojeto.Text='') and (edtenviotopografia.Text='') and (edtdtDevolvida.Text=''))then
  begin
    cbbstatus.ItemIndex:= cbbstatus.Items.IndexOf('Cadastrada');
  end;

  BuscarConfig;
  if(rgAtvPassivo.ItemIndex=0)then begin


  {Carregar Prazo}
  if(edtdtchegadageral.Text<>'')then
  begin
    qryTemp:=TFDQuery.Create(nil);
    qryTemp.Connection:=DataModule1.ConMySql;
    sqlstr:='select * from os_config where id=4';
   //INSERIR DATA DE LIMITE
   if((edtdtchegadageral.Text<>'') and (edtdtconclusao.Text=''))then
    begin
      if(ConsultaSqlFd(qryTemp,sqlstr)) then
      begin
        edtdtlimitegeral.Text:= FormatDateTime('dd/mm/yyyy',IncDay(edtdtchegadageral.Date+((qryconfigdias.FieldByName('dias_geral').AsInteger+StrToIntDef(edtDiasTopografia.Text,0)-1))));
      end;
    end;

    if(edtdtprorrogacao.Date > edtdtlimitegeral.Date)then
    qtdDiasProrrogacao:=DaysBetween(edtdtprorrogacao.Date,edtdtlimitegeral.Date)
    else
    qtdDiasProrrogacao:=0;

    //prazo
    if ((Trim(edtdtlimitegeral.text) <> '') and (Trim(edtdtconclusao.Text)='') and (Trim(edtdtprorrogacao.Text)='')) then
      lblprazogeral.Caption := CalculaPrazo(edtdtchegadageral.text,'',IntToStr(qryconfigdias.FieldByName('dias_geral').AsInteger+StrToIntDef(edtDiasTopografia.Text,0)))
    else if (Trim(edtdtlimitegeral.text) <> '') and (Trim(edtdtconclusao.Text)<>'') then
      lblprazogeral.Caption := CalculaPrazo(edtdtchegadageral.text,edtdtconclusao.Text,IntToStr(qryconfigdias.FieldByName('dias_geral').AsInteger+StrToIntDef(edtDiasTopografia.Text,0)))
    else if (Trim(edtdtlimitegeral.text) <> '') and (Trim(edtdtprorrogacao.Text)<>'') then
      lblprazogeral.Caption := CalculaPrazo(edtdtchegadageral.text,'',IntToStr(qryconfigdias.FieldByName('dias_geral').AsInteger + qtdDiasProrrogacao+StrToIntDef(edtDiasTopografia.Text,0)));

  end;
  end;
end;

procedure TfrmCadastrarProjetoRural.edtdtconclusaoExit(Sender: TObject);
begin
  inherited;
  if Self.Tag<>1 then
  begin
    if((edtdtconclusao.Text<>'') and (rgimprocedente.ItemIndex<>0))then
    begin
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Conclu�do');
    end;
    if((edtdtconclusao.Text<>'') and (rgimprocedente.ItemIndex=0))then
    begin
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Conclu�do Improcedente');
    end;
  end;
end;

procedure TfrmCadastrarProjetoRural.edtdtDevolvidaExit(Sender: TObject);
begin
  inherited;
  if(edtdtDevolvida.Text<>'')then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Devolvida');
  end;
end;

procedure TfrmCadastrarProjetoRural.edtdtenvioprojetoExit(Sender: TObject);
begin
  inherited;
   //mudando o status do projeto
if Self.Tag<>1 then
begin
  if((edtdtenvioprojeto.Text<>'') and (edtenviotopografia.Text<>'') and (edtdtchegadageral.Text<>''))then
    begin
      if not ValidarDataMenorAno(edtdtenvioprojeto.Text) then
      begin
        Application.MessageBox('Data Inferior  a 01/01/2000 !','Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
        (Sender as TcxDateEdit).SetFocus;
        Exit;
      end;
      if not ValidarDataHoje(edtdtenvioprojeto.text) then
      begin
        Application.MessageBox('Data Superir a Data Hoje !','Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
        (Sender as TcxDateEdit).SetFocus;
        Exit;
      end;
      if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Elabora��o Projeto');
    end;
  if(rgAtvPassivo.ItemIndex =0)then begin
      {Data envio Projeto}
      if Trim(edtdtenvioprojeto.text) <> '' then
      lblprazoprojeto.Caption := CalculaPrazo(edtdtenvioprojeto.text,'',qryconfigdias.FieldByName('dias_projeto').AsString);
  end;
end;

end;

procedure TfrmCadastrarProjetoRural.edtdtliberacaotecExit(Sender: TObject);
begin
  inherited;
   //mudando o status do projeto
    if((edtdtenvioprojeto.Text='') and (edtenviotopografia.Text='') and (edtdtchegadageral.Text<>'') and (edtdtchegada.Text=''))then
    begin
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

      if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Levantamento de Campo');
    end;

    //visualizacao
    if Self.Tag<>1 then
    begin
      if(rgAtvPassivo.ItemIndex=0)then
      begin
         if(Trim(edtdtliberacaotec.text) <> '') and (Trim(edtdtchegada.Text)='')then
         begin
          lblprazoservico.Caption := CalculaPrazo(edtdtliberacaotec.Text,edtdtchegada.Text,qryconfigdias.FieldByName('dias_campo').AsString);
         end;
         if(Trim(edtdtliberacaotec.text) <> '') and (Trim(edtdtchegada.Text)<>'')then
         begin
          lblprazoservico.Caption := CalculaPrazo(edtdtliberacaotec.Text,edtdtchegada.Text,qryconfigdias.FieldByName('dias_campo').AsString);
         end;
      end;
    end;

end;

procedure TfrmCadastrarProjetoRural.edtdtretornoprojetoExit(
  Sender: TObject);
begin
  inherited;
  if Self.Tag<>1 then
  begin
    if(rgAtvPassivo.ItemIndex=0)then begin
      if((edtdtretornoprojeto.Text<>'') and (edtdtenvioprojeto.Text<>''))then
      begin
        lblprazoprojeto.Caption := 'Dura��o do Servi�o: ';
        lblprazoprojeto.Caption := lblprazoprojeto.Caption + IntToStr(DaysBetween(edtdtenvioprojeto.Date,edtdtretornoprojeto.Date)) +' Dias';
      end;
  end;
  end;

end;

procedure TfrmCadastrarProjetoRural.edtdtsolicitacaoTopografiaExit(
  Sender: TObject);
begin
  inherited;
   //mudando o status do projeto
    if((edtdtenvioprojeto.Text='') and (edtenviotopografia.Text='') and (edtdtchegadageral.Text<>'') and (edtdtsolicitacaoTopografia.Text<>'') and (edtdtliberacaotec.Text<>''))then
    begin
      cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Solicita��o Topografia');
    end
    else
    if (edtdtliberacaotec.Text='') and (edtdtchegada.Text='') then
    begin
      Application.MessageBox('Para Inserir Solicita��o de Topografia, Deve Existir Levantamento !',
        'Aten��o', MB_OK + MB_ICONINFORMATION);

    end;

end;

procedure TfrmCadastrarProjetoRural.edtenviotopografiaExit(
  Sender: TObject);
begin
  inherited;

  if(rgAtvPassivo.ItemIndex=0)then
  begin
    if(edtDiasTopografia.Text='')then
    begin
      Application.MessageBox('Inserir Quantidade de Dias Topografia !','Aten��o', MB_OK + MB_ICONINFORMATION);
      edtenviotopografia.Clear;
      edtDiasTopografia.SetFocus;
      Exit;
     end;
    if(edtdtsolicitacaoTopografia.Text='')then
    begin
      Application.MessageBox('Inserir Data de Solicita��o de Topografia !','Aten��o', MB_OK + MB_ICONINFORMATION);
      edtenviotopografia.Clear;
      Exit;
    end;
    if Trim(edtenviotopografia.text) <> '' then
      lblprazomub.Caption := CalculaPrazo(edtenviotopografia.text,'',edtDiasTopografia.Text);
  end;

  if Self.Tag<>1 then
  begin
    //tratando status  da atualizacao
   if((edtenviotopografia.Text<>'') and (edtdtchegadageral.Text<>''))then
   begin
    if MessageDlg('Deseja Alterar Status ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Topografia');
   end;
  end;

end;

procedure TfrmCadastrarProjetoRural.edtcodtecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if trim(edtcodtecnico.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=6;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodtecnico.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr) then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=6;
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

procedure TfrmCadastrarProjetoRural.edtnumosExit(Sender: TObject);
var
qrylocal:TFDQuery;
str:string;
begin
  inherited;
  if trim(edtnumos.text) <> '' then
  begin
    try
      try
        str:=Trim(edtnumos.Text);
        qrylocal              := TFDQuery.Create(nil);
        qrylocal.Connection   := DataModule1.ConMySql;
        sqlstr                := 'select * from os_engenharia_projeto_rural where numero_os = '+str;
      if (ConsultaSqlFd(qrylocal,sqlstr) ) then
      begin
          {if((qrynota_rural.IsEmpty) and (edtsolicitante.Text=qrylocal.FieldByName('solicitante').AsString) and (edtdtchegadageral.Text='') )then
          begin
            Application.MessageBox('Aten��o, OS j� existente!',PChar(Application.Title), MB_OK + MB_ICONWARNING);
            edtnumos.SetFocus;
            Abort;
          end; }
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

procedure TfrmCadastrarProjetoRural.edtpngbtbtn1Click(Sender: TObject);
begin
  inherited;
   if(edtdtprorrogacao.Text='')then
  begin
    ShowMessage('Inserir Data de Prorroga��o');
    Exit;
  end;
  if(edtdtprorrogacao.Date <= edtdtlimitegeral.Date)then
  begin
    ShowMessage('Data de Prorroga��o N�o Pode Ser Inferior  ou Igual ao Limite !');
    Exit;
  end;
  if(Trim(edtdtconclusao.Text)<>'')then
  begin
    ShowMessage('Projeto com Data de Conslus�o  !');
    Exit;
  end;
  if FrmDistPeriodosRural = nil then
  Application.CreateForm(TFrmDistPeriodosRural,FrmDistPeriodosRural);
  FrmDistPeriodosRural.showModal;
end;

procedure TfrmCadastrarProjetoRural.edtqtddeslocamentoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(9);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdimprocedenteKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(8);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdlevantadoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(3);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdlevantamentoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
  begin
    CalcularValoresProjeto(11);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdoutrosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(10);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdposteatualizadoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(4);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdposteprojurbanoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(1);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdposteruralKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(2);
  end;
end;

procedure TfrmCadastrarProjetoRural.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {if (Trim(edtnumos.Text) = '') and (Trim(edtdtchegadageral.Text)='') and qrynota_rural.IsEmpty then
    begin
     with DataModule1.comand do
     begin
     CommandText.Clear;
      CommandText.Add('delete from os_engenharia_projeto_rural where id ='+IntToStr(Self.FIdProjeto));
      execute;
      CommandText.clear;
     end;
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_notas_rural where id_os_projeto ='+inttostr(Self.FIdProjeto));
      execute;
      CommandText.clear;
     end;

     with DataModule1.comand do
     begin
      CommandText.Clear;
      CommandText.Add('DELETE from os_engenharia_clientes_rural where id_projeto = '+inttostr(Self.FIdProjeto));
      Execute();
     end;
    end;}
    ApagarId;
end;

procedure TfrmCadastrarProjetoRural.FormCreate(Sender: TObject);
begin
  inherited;
  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_crs order by descricao');
  DataModule1.qryCRUD.First;
  while not DataModule1.qryCRUD.Eof do
  begin
    cbbcrs.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
    DataModule1.qryCRUD.Next;
  end;

  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_status_rural');
  DataModule1.qryCRUD.First;
  while not DataModule1.qryCRUD.Eof do
  begin
    cbbstatus.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
    DataModule1.qryCRUD.Next;
  end;

 //controle de usuario
// ControleAcesso;
// BuscarConfig;
end;

procedure TfrmCadastrarProjetoRural.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Self.Tag <>1 then
 begin
    if VK_F4 = key then
    if FrmObservacao=nil then
    begin
      FrmObservacao := TFrmObservacao.Create(Self);
      FrmObservacao.Tag:=1;
      FrmObservacao.ShowModal;
    end;
    FreeAndNil(FrmObservacao);
 end;
end;

procedure TfrmCadastrarProjetoRural.FormShow(Sender:Tobject);
begin
  inherited;
  GerarNovoId;


//  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_crs order by descricao');
//  DataModule1.qryCRUD.First;
//  cbbcrs.Clear;
//  while not DataModule1.qryCRUD.Eof do
//  begin
//    cbbcrs.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
//    DataModule1.qryCRUD.Next;
//  end;
//
//  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_status_rural');
//  DataModule1.qryCRUD.First;
//  cbbstatus.Clear;
//  while not DataModule1.qryCRUD.Eof do
//  begin
//    cbbstatus.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
//    DataModule1.qryCRUD.Next;
//  end;

 //controle de usuario
 ControleAcesso;
 BuscarConfig;
end;

procedure TfrmCadastrarProjetoRural.InicializaComponentes;
var
i:Integer;
begin
//
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
    end
    else if(Components[i] is TCheckBox)then
    begin
      (Components[i] as TCheckBox).Checked:=False;
    end;

         //HABILITA PESQUISA
  sbnovo.Enabled      := True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;
  //edttelefone.EditMask:='!\(999\)0000-0000;0;';
  qrynota_rural.Close;
  DataModule1.qryrevisaoos.Close;
  qrySolicitante.Close;


  if ObjConsulta<>nil then
    FreeAndNil(ObjConsulta);

    if not mmoobservacao.ReadOnly then
    mmoobservacao.ReadOnly:=True;

  //if ObjConsulta <> nil then
  //  ObjConsulta.Free;

end;

procedure TfrmCadastrarProjetoRural.limparID;
begin
//
 sqlstr :=' select * from os_engenharia_projeto_rural order by id desc limit 1';
  if ConsultaSqlFd(DataModule1.query01,sqlstr) then
  begin
    if (Trim(DataModule1.query01.FieldByName('numero_os').AsString) = '') and (Trim(DataModule1.query01.FieldByName('dt_chegada_geral').AsString) ='') then
    begin
     with DataModule1.comand do
     begin
     CommandText.Clear;
      CommandText.Add('delete from os_engenharia_projeto_rural where id ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;
     with DataModule1.comand do
     begin
      CommandText.Add('delete from os_engenharia_notas_rural where id_os_projeto ='+DataModule1.query01.FieldByName('id').AsString);
      execute;
      CommandText.clear;
     end;

     with DataModule1.comand do
     begin
      CommandText.Clear;
      CommandText.Add('DELETE from os_engenharia_clientes_rural where id_projeto = '+DataModule1.query01.FieldByName('id').AsString);
      Execute();
     end;
      
    end;
  end;
end;

procedure TfrmCadastrarProjetoRural.MenuItem11Click(Sender: TObject);
begin
  inherited;
  with DataModule1.comand do
  begin
    CommandText.Clear;
    sqlstr:='DELETE from os_engenharia_revisao_rural_topografia WHERE os_engenharia_revisao_rural_topografia.id = :id';
    CommandText.Add(sqlstr);
    ParamByName('id').Value:=qryTopografia.FieldByName('id').AsInteger;
    Execute();
  end;
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_rural_topografia os '+
              'left JOIN cad_funcionarios  cad on os.cod_projetista = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjetoRural.FIdProjeto);
     ConsultaSqlFd(qryTopografia,sqlstr);
end;

procedure TfrmCadastrarProjetoRural.MenuItem8Click(Sender: TObject);
begin
  inherited;
  with DataModule1.comand do
  begin
    CommandText.Clear;
    sqlstr:='DELETE from os_engenharia_revisao_rural_servicocampo WHERE os_engenharia_revisao_rural_servicocampo.id = :id';
    CommandText.Add(sqlstr);
    ParamByName('id').AsInteger:=qryLevantamento.FieldByName('id').AsInteger;
    Execute();
  end;
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_rural_servicocampo os '+
              'left JOIN cad_funcionarios  cad on os.id_tecnico = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjetoRural.FIdProjeto);
     ConsultaSqlFd(qryLevantamento,sqlstr);
end;

procedure TfrmCadastrarProjetoRural.N1Click(Sender: TObject);
begin
  inherited;
  if not qrynota_rural.IsEmpty then
  begin
    edtidnota.Text  := qrynota_rural.FieldByName('id').AsString;
    edtnumnota.Text := qrynota_rural.FieldByName('descricao').AsString;
  end;
end;

procedure TfrmCadastrarProjetoRural.N4Click(Sender: TObject);
begin
  inherited;
   if not qrynota_rural.IsEmpty then
  begin
    with DataModule1.comand do
    begin
      CommandText.Clear;
      CommandText.Add('delete from os_engenharia_notas_rural where id='+qrynota_rural.fieldbyname('id').AsString);
      Execute;
      CommandText.Clear;
      {consultando as notas daquela OS}
      sqlstr :=' select * from os_engenharia_notas_rural where id_os_projeto = '+inttostr(FIdProjeto);
      ConsultaSqlFd(qrynota_rural,sqlstr);
      edtnumnota.Clear;
      edtidnota.Clear;
      edtnumnota.SetFocus;
    end;
  end;
end;

procedure TfrmCadastrarProjetoRural.R1Click(Sender: TObject);
begin
  inherited;
 //
 FrmRelMedicoesRural := TFrmRelMedicoesRural.Create(Self);
 FrmRelMedicoesRural.ShowModal;
end;

procedure TfrmCadastrarProjetoRural.RelatorioAnomalias1Click(Sender: TObject);
begin
  inherited;
  try
   FrmRelAnomalias := TFrmRelAnomalias.Create(Self);
   FrmRelAnomalias.ShowModal;
  except on E: Exception do
  end;
end;

procedure TfrmCadastrarProjetoRural.RelatrioAssentamentos1Click(
  Sender: TObject);
begin
  inherited;
  FrmRelAssentamento:=TFrmRelAssentamento.Create(Self);
  FrmRelAssentamento.ShowModal;
  FreeAndNil(FrmRelAssentamento);
end;

procedure TfrmCadastrarProjetoRural.RelatrioEstudosProjetosPorStatuss1Click(
  Sender: TObject);
begin
  inherited;
  FrmRelProjetoStatusRural:=TFrmRelProjetoStatusRural.Create(Self);
  FrmRelProjetoStatusRural.ShowModal;
end;

procedure TfrmCadastrarProjetoRural.RemoverNota1Click(Sender: TObject);
begin
  inherited;
  FrmExcluirNotasRural:=TFrmExcluirNotasRural.Create(nil);
  FrmExcluirNotasRural.ShowModal;
  FreeAndNil(FrmExcluirNotasRural);
end;

procedure TfrmCadastrarProjetoRural.RemoverVinculao1Click(Sender: TObject);
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
        sqlstr:='select * from os_engenharia_projeto_rural where numero_os='+QuotedStr(Trim(edtVinculacao.Text));
        qryExe.SQL.Add(sqlstr);
        qryExe.open;
        if not qryExe.IsEmpty then
        begin
          edtVinculacao.Text:=qryExe.FieldByName('numero_os').AsString;
          FidVinculacaoOS   := qryExe.FieldByName('id').AsInteger;
        end;
        qryExe.SQL.Text := 'update os_engenharia_projeto_rural set id_os_vinculacao =0  where  numero_os='+QuotedStr(edtnumos.Text)+' id_os_vinculacao='+IntToStr(FidVinculacaoOS);
        edtVinculacao.Clear;
      end;
    except on E: Exception do
      raise;
    end;
  finally
    FreeAndNil(qryExe);
  end;
end;

procedure TfrmCadastrarProjetoRural.rgAtvPassivoClick(Sender: TObject);
begin
  inherited;
  if(rgAtvPassivo.ItemIndex=1)then
  begin
    edtdtlimitegeral.Clear;
    edtdtchegadageral.Clear;
  end;
end;

procedure TfrmCadastrarProjetoRural.rgAtvPassivoExit(Sender: TObject);
begin
  inherited;
  //controle de ativo  e passivo
  if(rgAtvPassivo.ItemIndex=0)then
  begin
    //edtdtchegadageral.Enabled:=True;
    //edtdtlimitegeral.Enabled:=True;
  end
  else
  begin if(rgAtvPassivo.ItemIndex=1)then
    //edtdtchegadageral.Enabled:=False;
    //edtdtlimitegeral.Enabled:=False;
    lblprazogeral.Caption := 'Prazo';
  end;
end;

procedure TfrmCadastrarProjetoRural.rgimprocedenteClick(Sender: TObject);
begin
  inherited;
   if(rgimprocedente.ItemIndex=0)then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Improcedente');
    edtdtconclusao.SetFocus;
  end;
  if(rgimprocedente.ItemIndex=1)then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Elabora��o Projeto');
  end;
  if(rgimprocedente.ItemIndex=2) and (edtdtsolicitacaoTopografia.Text<>'') then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Solicita��o Topografia');
  end;
end;

procedure TfrmCadastrarProjetoRural.rgimprocedenteExit(Sender: TObject);
begin
  inherited;
  if(rgimprocedente.ItemIndex=0)then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Improcedente');
  end;
  if(rgimprocedente.ItemIndex=1)then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Elabora��o Projeto');
  end;
  if(rgimprocedente.ItemIndex=2)then
  begin
    cbbstatus.ItemIndex:=cbbstatus.Items.IndexOf('Solicita��o Topografia');
  end;
end;

procedure TfrmCadastrarProjetoRural.sbconsultarClick(Sender: TObject);
begin
  inherited;
  ApagarId;
  frmConsProjetoRural := TfrmConsProjetoRural.Create(Self);
  frmConsProjetoRural.Tag:=1;
  frmConsProjetoRural.Show;
end;

procedure TfrmCadastrarProjetoRural.sbexcluirClick(Sender: TObject);
begin
  inherited;
  try
       with DataModule1.comand do
        begin
          sqlstr:='DELETE FROM os_engenharia_projeto_rural WHERE ID='+IntToStr(FIdProjeto);
          CommandText.Text:=sqlstr;
          Execute();
          CommandText.Clear;

          //DELETAR REVISAO
          sqlstr:='DELETE FROM os_engenharia_revisao_rural WHERE ID_PROJETO='+IntToStr(FIdProjeto);
          CommandText.Text:=sqlstr;
          Execute();
          CommandText.Clear;

          sqlstr:='DELETE FROM os_engenharia_revisao_rural_topografia WHERE ID_PROJETO='+IntToStr(FIdProjeto);
          CommandText.Text:=sqlstr;
          Execute();
          CommandText.Clear;

          sqlstr:='DELETE FROM os_engenharia_revisao_rural_servicocampo WHERE ID_PROJETO='+IntToStr(FIdProjeto);
          CommandText.Text:=sqlstr;
          Execute();
          CommandText.Clear;


          sqlstr:='DELETE FROM os_engenharia_notas_rural WHERE ID_OS_PROJETO='+IntToStr(FIdProjeto);
          CommandText.Text:=sqlstr;
          Execute();
          CommandText.Clear;

          CommandText.Clear;
          CommandText.Add('DELETE from os_engenharia_clientes_rural where id_projeto = :id');
          Params.ParamByName('id').AsInteger := FIdProjeto;
          Execute();

          InicializaComponentes;

          GerarNovoId;

        end;
  except on E: Exception do
        CriarLog(Self,E,'Excluir Projeto Rural');
  end;
end;

procedure TfrmCadastrarProjetoRural.sbgravarClick(Sender: TObject);
begin
  inherited;
  try
      //verificando campos obrigatorios
      if Obrigatorio(Self,edtnumos,'Informe o N�mero da OS !') then Exit;
      if Obrigatorio(Self,edtcodmunicipio,'Informe o Munic�pio !') then Exit;
      if rgAtvPassivo.ItemIndex=0 then
      if Obrigatorio(Self,edtdtchegadageral,'Informe a Data de Chegada !') then Exit;
      if Obrigatorio(Self,cbbcrs,'Informe o Crs !') then Exit;
      if Obrigatorio(Self,cbbstatus,'Informe Status !') then Exit;
      if ValidarDataRetorno(edtdtliberacaotec,edtdtchegada) then
      begin
        MessageDlg('Verificar Data de Libera��o do Levantador !',
          mtInformation, [mbOK], 0);
        edtdtliberacaotec.SetFocus;
        Exit;
      end;
      if ValidarDataRetorno(edtenviotopografia,edtretornotopografia) then
      begin
        MessageDlg('Verificar Data de Libera��o do Topografo !',mtInformation, [mbOK], 0);
        edtenviotopografia.SetFocus;
        Exit;
      end;

      with DataModule1.comand do
      begin
        sqlstr:='';
        sqlstr:=' UPDATE os_engenharia_projeto_rural '+
                ' SET '+
                ' numero_os = :numero_os ,'+
                ' doc_celtins_passagem = :doc_celtins_passagem ,'+
                ' doc_celtins_rural = :doc_celtins_rural ,'+
                ' doc_celtins_terra = :doc_celtins_terra ,'+
                ' doc_celtins_pessoais = :doc_celtins_pessoais,'+
                ' solicitante = :solicitante ,'+
                ' solicitanteatendido = :solicitanteatendido ,'+
                ' endereco = :endereco ,'+
                ' enderecorural = :enderecorural ,'+
                ' id_municipio = :id_municipio ,'+
                ' id_crs = :id_crs ,'+
                ' dt_limite_geral = :dt_limite_geral,'+
                ' universalizacao = :universalizacao,'+
                ' dt_chegada_geral = :dt_chegada_geral,'+
                ' dt_solicitacao_topografia = :dt_solicitacao_topografia,'+
                ' id_statusos = :id_statusos,'+
                ' observacao_geral = :observacao_geral ,'+
                ' caminho_arquivo = :caminho_arquivo , '+
                ' id_tec_campo = :id_tec_campo ,'+
                ' dt_liberacao_tec = :dt_liberacao_tec,'+
                ' dt_chegada_tec = :dt_chegada_tec,'+
                ' id_projetista = :id_projetista ,  '+
                ' dt_envio_projeto = :dt_envio_projeto ,'+
                ' dt_chegada_projeto = :dt_chegada_projeto ,'+
                ' dt_envio_topografia = :dt_envio_topografia ,'+
                ' dt_chegada_topografia = :dt_chegada_topografia ,'+
                ' id_topografo = :id_topografo ,topografo= :topografo,'+
                ' vl_post_proj_urb = :vl_post_proj_urb ,'+
                ' vl_post_porj_rur = :vl_post_porj_rur,'+
                ' vl_post_lev = :vl_post_lev,'+
               // ' vl_post_atu = :vl_post_atu,'+
                ' vl_topografia = :vl_topografia,'+
                ' vl_travessia = :vl_travessia, '+
                ' vl_incorporacao = :vl_incorporacao ,'+
               // ' vl_improcedente = :vl_improcedente ,'+
                ' vl_deslocamento = :vl_deslocamento ,'+
                ' vl_outros = :vl_outros ,'+
                ' vl_levantamento= :vl_levantamento,'+
                ' qtd_post_proj_urb = :qtd_post_proj_urb,'+
                ' qtd_post_proj_rur = :qtd_post_proj_rur ,'+
                ' qtd_post_lev = :qtd_post_lev ,'+
              //  ' qtd_post_atu = :qtd_post_atu ,'+
                ' qtd_topografia = :qtd_topografia ,'+
                ' qtd_travessia = :qtd_travessia , '+
                ' qtd_incorporacao = :qtd_incorporacao ,'+
              //  ' qtd_improcedente = :qtd_improcedente ,'+
                ' qtd_deslocamento = :qtd_deslocamento ,'+
                ' qtd_outros = :qtd_outros ,  '+
                ' qtd_levantamento= :qtd_levantamento,'+
                ' id_func_cad = :id_func_cad,'+
                ' dt_conclusao = :dt_conclusao,improcedente = :improcedente,'+
                'dias_topografia = :dias_topografia,dt_devolvida = :dt_devolvida, dt_liberacao_top= :dt_liberacao_top,'+
                ' ativo_passivo = :ativo_passivo,id_os_vinculacao= :id_os_vinculacao '+
                ' WHERE id ='+IntToStr(FIdProjeto);

       CommandText.Clear;
       CommandText.Text:= sqlstr;

       {PASSANDO PARAMETROS}
        Params.ParamByName('numero_os').AsString             := Trim(edtnumos.Text);
        Params.ParamByName('doc_celtins_passagem').AsInteger := ifthen(chkPassagem.Checked,1,0);
        Params.ParamByName('doc_celtins_rural').AsInteger    := ifthen(chkRural.Checked,1,0);
        Params.ParamByName('doc_celtins_terra').AsInteger    := ifthen(chkTerra.Checked,1,0);
        Params.ParamByName('doc_celtins_pessoais').AsInteger := ifthen(chkDocumentosPessoais.Checked,1,0);
        Params.ParamByName('solicitante').AsString           := '';//Trim(edtsolicitante.Text);
        Params.ParamByName('solicitanteatendido').AsString   :=Trim(edtAtendido.Text);
        //Params.ParamByName('cpf').AsString                 :='';//Trim(edtCpf.Text);
        Params.ParamByName('endereco').AsString              :=Trim(edtendereco.Text);
        Params.ParamByName('enderecorural').AsString         :=Trim(edtEnderecoRural.Text);
        //Params.ParamByName('telefone').AsString            :=Trim(edttelefone.Text);
        Params.ParamByName('id_municipio').AsInteger         :=StrToInt(Trim(edtcodmunicipio.Text));
        Params.ParamByName('id_crs').AsInteger               :=Integer(cbbcrs.Items.Objects[cbbcrs.ItemIndex]);
        ParamByName('universalizacao').AsString              :=edtUniversalizaca.Text;
        ParamByName('dt_chegada_geral').AsDate               :=(edtdtchegadageral.Date);
        ParamByName('dt_limite_geral').AsDate                :=(edtdtlimitegeral.Date);
        ParamByName('dt_solicitacao_topografia').AsDate      := edtdtsolicitacaoTopografia.Date;
        ParamByName('dt_conclusao').AsDate                   :=(edtdtconclusao.Date);
        ParamByName('id_statusos').AsInteger                 :=Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex]);
        ParamByName('caminho_arquivo').AsString              :=edtdiretorio.Text;
        ParamByName('observacao_geral').AsString             :=mmoobservacao.Text;
        ParamByName('improcedente').AsInteger                := rgimprocedente.ItemIndex;
        ParamByName('dt_devolvida').AsDate                   :=edtdtDevolvida.Date;
        {Tec campo}
        ParamByName('id_tec_campo').AsInteger                := StrToIntDef(edtcodtecnico.Text,0);
        ParamByName('dt_liberacao_tec').AsDate               :=(edtdtliberacaotec.date);
        ParamByName('dt_chegada_tec').AsDate                 :=(edtdtchegada.date);
        {Topografia}
        ParamByName('id_topografo').AsInteger                := StrToIntDef(edtcodtopografo.Text,0);
        ParamByName('topografo').AsString                    :=edtdesctopografo.Text;
        ParamByName('dt_envio_topografia').AsDate            :=(edtenviotopografia.date);
        ParamByName('dt_chegada_topografia').AsDate          :=(edtretornotopografia.date);
        {Projeto}
        ParamByName('id_projetista').AsInteger               :=StrToIntDef(edtcodprojetista.Text,0);
        ParamByName('dt_envio_projeto').AsDate               :=(edtdtenvioprojeto.date);
        ParamByName('dt_chegada_projeto').AsDate             :=(edtdtretornoprojeto.date);

        {Valores}
        Params.ParamByName('qtd_post_proj_urb').AsFloat      :=StrTofloatDef(edtqtdposteprojurbano.text,0);
        Params.ParamByName('qtd_post_proj_rur').AsFloat      :=StrTofloatDef(edtqtdposterural.text,0);
        Params.ParamByName('qtd_post_lev').AsFloat           :=StrTofloatDef(edtqtdlevantado.text,0);
        //Params.ParamByName('qtd_post_atu').AsFloat         :=StrTofloatDef(edtqtdposteatualizado.text,0);
        Params.ParamByName('qtd_topografia').AsFloat         :=StrTofloatDef(edtqtdtopografia.text,0);
        Params.ParamByName('qtd_travessia').AsFloat          :=StrTofloatDef(edtqttravessia.text,0);
        Params.ParamByName('qtd_incorporacao').AsFloat       :=StrTofloatDef(edtqtincorporacao.text,0);
        //Params.ParamByName('qtd_improcedente').AsFloat     :=StrTofloatDef(edtqtdimprocedente.text,0);
        Params.ParamByName('qtd_deslocamento').AsFloat       :=StrTofloatDef(edtqtddeslocamento.text,0);
        Params.ParamByName('qtd_outros').AsFloat             :=StrTofloatDef(edtqtdoutros.text,0);
        Params.ParamByName('qtd_levantamento').AsFloat       :=StrTofloatDef(edtqtdlevantamento.Text,0);
        Params.ParamByName('vl_post_proj_urb').AsFloat       :=StrToFloatDef(StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_porj_rur').AsFloat       :=StrToFloatDef(StringReplace(edtvlposterural.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_post_lev').AsFloat            :=StrToFloatDef(StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]),0.0);
        //Params.ParamByName('vl_post_atu').AsFloat          :=StrToFloatDef(StringReplace(edtvlposteatualizado.text,'.','',[rfReplaceAll]) ,0.0);
        Params.ParamByName('vl_topografia').AsFloat          :=StrToFloatDef(StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_travessia').AsFloat           :=StrToFloatDef(StringReplace(edtvltravessia.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_incorporacao').AsFloat        :=StrToFloatDef(StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll]),0.0);
        //Params.ParamByName('vl_improcedente').AsFloat      :=StrToFloatDef(StringReplace(edtedvlimprocedente.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_deslocamento').AsFloat        :=StrToFloatDef(StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_outros').AsFloat              :=StrToFloatDef(StringReplace(edtvloutros.text,'.','',[rfReplaceAll]),0.0);
        Params.ParamByName('vl_levantamento').AsFloat        :=StrToFloatDef(StringReplace(edtvllevantamento.Text,'.','',[rfReplaceAll]),0.0);
        {Func}
        ParamByName('id_func_cad').AsInteger                 :=DataModule1.qryusuario.FieldByName('iduser').AsInteger;
        ParamByName('dias_topografia').AsInteger             := StrToIntDef(edtDiasTopografia.Text,0);
        ParamByName('dt_liberacao_top').AsDate           := dtLibTop.Date;
        ParamByName('ativo_passivo').AsInteger               := rgAtvPassivo.ItemIndex;
        if edtVinculacao.Text='' then
        FidVinculacaoOS:=0;
        ParamByName('id_os_vinculacao').AsInteger            :=Self.FidVinculacaoOS;
        Execute();

        CommandText.Clear;


        //verificar alteracao
        //ObjConsulta:=TProjetoRural.Create;
        if ObjConsulta<>nil then
        begin
          VerificarDedoDuro(ObjConsulta);
          FreeAndNil(ObjConsulta);
        end;
        InicializaComponentes;
        //limparID;

        GerarNovoId;

      end;
  except on E: Exception do
        CriarLog(Self,E,'Alterar Cadastro Rural');
  end;

end;

procedure TfrmCadastrarProjetoRural.sbnovoClick(Sender: TObject);
begin
  inherited;
        try
            if Obrigatorio(Self,edtnumos,'Informe o N�mero da OS !') then Exit;
            //if Obrigatorio(Self,edtsolicitante,'Informe o Solicitante !') then Exit;
            if Obrigatorio(Self,edtcodmunicipio,'Informe o Munic�pio !') then Exit;
            if Obrigatorio(Self,cbbcrs,'Informe o Crs !') then Exit;
            if rgAtvPassivo.ItemIndex=0 then
             if Obrigatorio(Self,edtdtchegadageral,'Informe a Data de Chegada !') then Exit;

            if Obrigatorio(Self,cbbstatus,'Informe Status !') then Exit;

           with DataModule1.comand do
           begin
            CommandText.Clear;
            CommandText.Add(' INSERT INTO supoc.os_engenharia_projeto_rural '+
                            ' (numero_os,doc_celtins_passagem,doc_celtins_terra, '+
                            '  doc_celtins_rural,doc_celtins_pessoais,  '+
                            '  solicitanteatendido,endereco,enderecorural,'+
                            '  caminho_arquivo,id_municipio,id_crs,   '+
                            '  dt_limite_geral,universalizacao,dt_chegada_geral,'+
                            '  dt_solicitacao_topografia,id_statusos,observacao_geral,'+
                            '  id_tec_campo,dt_liberacao_tec,dt_chegada_tec,id_projetista,'+
                            '  dt_envio_projeto,dt_chegada_projeto,dt_envio_topografia,'+
                            '  dt_chegada_topografia,id_topografo,topografo,vl_post_proj_urb,    '+
                            '  vl_post_porj_rur,vl_post_lev,vl_topografia,'+
                            '  vl_travessia,vl_incorporacao,vl_deslocamento,'+
                            '  vl_outros,qtd_post_proj_urb,qtd_post_proj_rur,qtd_post_lev,'+
                            '  qtd_topografia,qtd_travessia,qtd_incorporacao,'+
                            '  qtd_deslocamento,qtd_outros,id_func_cad,'+
                            '  dt_conclusao,improcedente,dias_topografia,dt_devolvida,qtd_levantamento,vl_levantamento)'+
                            '  VALUES '+
                            '  (:numero_os,:doc_celtins_passagem,:doc_celtins_terra,'+
                            '  :doc_celtins_rural,:doc_celtins_pessoais,:solicitante,:solicitanteatendido ,'+
                            '  :cpf,:endereco ,:enderecorural,:caminho_arquivo,:telefone,'+
                            '  :id_municipio,:id_crs,:dt_limite_geral,:universalizacao,'+
                            ' :dt_chegada_geral,:dt_solicitacao_topografia ,'+
                            ' :id_statusos,:observacao_geral,:id_tec_campo,:dt_liberacao_tec,'+
                            ' :dt_chegada_tec,:id_projetista,:dt_envio_projeto,         '+
                            ' :dt_chegada_projeto,:dt_envio_topografia,                '+
                            '  :dt_chegada_topografia,:id_topografo,:topografo,:vl_post_proj_urb ,'+
                            '  :vl_post_porj_rur,:vl_post_lev,'+
                            //' :vl_post_atu,'+
                            '  :vl_topografia,:vl_travessia ,:vl_incorporacao,'+
                            //'  :vl_improcedente,'+
                            '  :vl_deslocamento,:vl_outros ,:qtd_post_proj_urb,:qtd_post_proj_rur,'+
                            '  :qtd_post_lev,'+
                            //':qtd_post_atu,'+
                            ' :qtd_topografia,:qtd_travessia,'+
                            '  :qtd_incorporacao,'+
                           // '  :qtd_improcedente,  '+
                            '  :qtd_deslocamento,  '+
                            '  :qtd_outros,        '+
                            '  :id_func_cad,:dt_conclusao,:improcedente,:dias_topografia,:dt_devolvida,:qtd_levantamento,:vl_levantamento)');
                {Parametros}
              Params.ParamByName('numero_os').AsString             := Trim(edtnumos.Text);
              Params.ParamByName('doc_celtins_passagem').AsInteger := ifthen(chkPassagem.Checked,1,0);
              Params.ParamByName('doc_celtins_rural').AsInteger    := ifthen(chkRural.Checked,1,0);
              Params.ParamByName('doc_celtins_terra').AsInteger    := ifthen(chkTerra.Checked,1,0);
              Params.ParamByName('doc_celtins_pessoais').AsInteger := ifthen(chkDocumentosPessoais.Checked,1,0);
              Params.ParamByName('solicitanteatendido').AsString   :=Trim(edtAtendido.Text);
              Params.ParamByName('endereco').AsString              :=Trim(edtendereco.Text);
              Params.ParamByName('enderecorural').AsString         :=Trim(edtEnderecoRural.Text);
              Params.ParamByName('id_municipio').AsInteger         :=StrToInt(Trim(edtcodmunicipio.Text));
              Params.ParamByName('id_crs').AsInteger               :=Integer(cbbcrs.Items.Objects[cbbcrs.ItemIndex]);
              ParamByName('universalizacao').AsString              :=edtUniversalizaca.Text;
              ParamByName('dt_chegada_geral').AsDate               :=(edtdtchegadageral.Date);
              ParamByName('dt_limite_geral').AsDate                :=(edtdtlimitegeral.Date);
              ParamByName('dt_solicitacao_topografia').AsDate       := edtdtsolicitacaoTopografia.Date;
              ParamByName('dt_conclusao').AsDate                   :=(edtdtconclusao.Date);
              ParamByName('id_statusos').AsInteger                 :=Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex]);
              ParamByName('caminho_arquivo').AsString             :=edtdiretorio.Text;
              ParamByName('observacao_geral').AsString             :=mmoobservacao.Text;
              ParamByName('improcedente').AsInteger                := rgimprocedente.ItemIndex;
              ParamByName('dt_devolvida').AsDate                   :=edtdtDevolvida.Date;
              {Tec campo}
              ParamByName('id_tec_campo').AsInteger                := StrToIntDef(edtcodtecnico.Text,0);
              ParamByName('dt_liberacao_tec').AsDate               :=(edtdtliberacaotec.date);
              ParamByName('dt_chegada_tec').AsDate                 :=(edtdtchegada.date);
              {Topografia}
              ParamByName('id_topografo').AsInteger                := StrToIntDef(edtcodtopografo.Text,0);
              ParamByName('topografo').AsString                    :=edtdesctopografo.Text;
              ParamByName('dt_envio_topografia').AsDate            :=(edtenviotopografia.date);
              ParamByName('dt_chegada_topografia').AsDate          :=(edtretornotopografia.date);
              {Projeto}
              ParamByName('id_projetista').AsInteger               :=StrToIntDef(edtcodprojetista.Text,0);
              ParamByName('dt_envio_projeto').AsDate               :=(edtdtenvioprojeto.date);
              ParamByName('dt_chegada_projeto').AsDate             :=(edtdtretornoprojeto.date);

              {Valores}
              Params.ParamByName('qtd_post_proj_urb').AsFloat :=StrTofloatDef(edtqtdposteprojurbano.text,0);
              Params.ParamByName('qtd_post_proj_rur').AsFloat :=StrTofloatDef(edtqtdposterural.text,0);
              Params.ParamByName('qtd_post_lev').AsFloat      :=StrTofloatDef(edtqtdlevantado.text,0);
              //Params.ParamByName('qtd_post_atu').AsFloat      :=StrTofloatDef(edtqtdposteatualizado.text,0);
              Params.ParamByName('qtd_topografia').AsFloat    :=StrTofloatDef(edtqtdtopografia.text,0);
              Params.ParamByName('qtd_travessia').AsFloat     :=StrTofloatDef(edtqttravessia.text,0);
              Params.ParamByName('qtd_incorporacao').AsFloat  :=StrTofloatDef(edtqtincorporacao.text,0);
              //Params.ParamByName('qtd_improcedente').AsFloat  :=StrTofloatDef(edtqtdimprocedente.text,0);
              Params.ParamByName('qtd_deslocamento').AsFloat  :=StrTofloatDef(edtqtddeslocamento.text,0);
              Params.ParamByName('qtd_outros').AsFloat        :=StrTofloatDef(edtqtdoutros.text,0);
              Params.ParamByName('qtd_levantamento').AsFloat        :=StrTofloatDef(edtqtdlevantamento.text,0);
              {
              Params.ParamByName('vl_post_proj_urb').AsFloat    :=StrToFloatDef(edtvlposteprojurbano.text,0.0);
              Params.ParamByName('vl_post_porj_rur').AsFloat    :=StrToFloatDef(edtvlposterural.text,0.0);
              Params.ParamByName('vl_post_lev').AsFloat         :=StrToFloatDef(edtvllevantado.text,0.0);
              Params.ParamByName('vl_post_atu').AsFloat         :=StrToFloatDef(edtvlposteatualizado.text,0.0);
              Params.ParamByName('vl_topografia').AsFloat       :=StrToFloatDef(edtvlrtopografia.text,0.0);
              Params.ParamByName('vl_travessia').AsFloat        :=StrToFloatDef(edtvltravessia.text,0.0);
              Params.ParamByName('vl_incorporacao').AsFloat     :=StrToFloatDef(edtvlrincorporacao.text,0.0);
              Params.ParamByName('vl_improcedente').AsFloat     :=StrToFloatDef(edtedvlimprocedente.text,0.0);
              Params.ParamByName('vl_deslocamento').AsFloat     :=StrToFloatDef(edtvldeslocamento.text,0.0);
              Params.ParamByName('vl_outros').AsFloat           :=StrToFloatDef(edtvloutros.text,0.0);}
              Params.ParamByName('vl_post_proj_urb').AsFloat       :=StrToFloatDef(StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll]),0.0);
              Params.ParamByName('vl_post_porj_rur').AsFloat       :=StrToFloatDef(StringReplace(edtvlposterural.text,'.','',[rfReplaceAll]),0.0);
              Params.ParamByName('vl_post_lev').AsFloat            :=StrToFloatDef(StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]),0.0);
              //Params.ParamByName('vl_post_atu').AsFloat            :=StrToFloatDef(StringReplace(edtvlposteatualizado.text,'.','',[rfReplaceAll]) ,0.0);
              Params.ParamByName('vl_topografia').AsFloat          :=StrToFloatDef(StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll]),0.0);
              Params.ParamByName('vl_travessia').AsFloat           :=StrToFloatDef(StringReplace(edtvltravessia.text,'.','',[rfReplaceAll]),0.0);
              Params.ParamByName('vl_incorporacao').AsFloat        :=StrToFloatDef(StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll]),0.0);
              //Params.ParamByName('vl_improcedente').AsFloat        :=StrToFloatDef(StringReplace(edtedvlimprocedente.text,'.','',[rfReplaceAll]),0.0);
              Params.ParamByName('vl_deslocamento').AsFloat        :=StrToFloatDef(StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll]),0.0);
              Params.ParamByName('vl_outros').AsFloat              :=StrToFloatDef(StringReplace(edtvloutros.text,'.','',[rfReplaceAll]),0.0);
              Params.ParamByName('vl_levantamento').AsFloat              :=StrToFloatDef(StringReplace(edtvllevantamento.text,'.','',[rfReplaceAll]),0.0);
              {Func}
              ParamByName('id_func_cad').AsInteger        :=DataModule1.qryusuario.FieldByName('iduser').AsInteger;
              ParamByName('dias_topografia').AsInteger    := StrToIntDef(edtDiasTopografia.Text,0);
              ParamByName('ativo_passivo').AsInteger      := rgAtvPassivo.ItemIndex;
              Execute();


              CommandText.Clear;
              InicializaComponentes;
              //limparID;
              //BuscaId;

                GerarNovoId;

                sbnovo.Enabled      :=  false;
                sbgravar.Enabled    :=  true;
                sbconsultar.Enabled :=  true;
                sbexcluir.Enabled   :=  true;

           end;
        except on E: Exception do
                CriarLog(Self,E,'Inserir Projeto Rural');
        end;
end;

procedure TfrmCadastrarProjetoRural.sbrelatoriosClick(Sender: TObject);
begin
  inherited;
  pmrelatorio.Popup(Self.Left+3+sbrelatorios.Left,Self.Top+sbrelatorios.Top+sbrelatorios.Height+28);
end;

procedure TfrmCadastrarProjetoRural.sbsairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfrmCadastrarProjetoRural.SpeedButton1Click(Sender: TObject);
var
i:Integer;
begin
  inherited;
   ApagarId;
   InicializaComponentes;
  // BuscaId;
  //gravar id
  GerarNovoId;
end;

procedure TfrmCadastrarProjetoRural.VerificarDedoDuro(obj: TProjetoRural);
var
_strDedoDuro:string;
begin
try
  try
    _strDedoDuro:='';
    if obj.numero_os            <> Trim(edtnumos.Text) then _strDedoDuro                                                  :=_strDedoDuro+ ' NUMERO OS ALTERADO DE :'+obj.numero_os +'PARA :'+edtnumos.Text;;
    //Params.ParamByName('cpf').AsString                                                                                  :='';//Trim(edtCpf.Text);
    if obj.endereco             <> Trim(edtendereco.Text) then _strDedoDuro                                               :=_strDedoDuro+' ENDERE�O ALTERADO DE: '+OBJ.endereco+' PARA: '+edtendereco.Text;
    if obj.enderecorural        <> Trim(edtEnderecoRural.Text) then _strDedoDuro                                          :=_strDedoDuro+' ENDERE�O RURAL ALTERADO DE: '+OBJ.enderecorural+' PARA: '+edtEnderecoRural.Text;
    if obj.id_municipio         <> (Trim(edtcodmunicipio.Text)) then _strDedoDuro                                         :=_strDedoDuro+' COD MUNICIPIO ALTERADO DE: '+OBJ.id_municipio+' PARA: '+edtcodmunicipio.Text;
    if obj.dt_chegada_geral     <>(edtdtchegadageral.Text) then _strDedoDuro                                              :=_strDedoDuro+' DT. RECEBIMENTO ALTERADO DE: '+OBJ.dt_chegada_geral+' PARA: '+edtdtchegadageral.Text;
    if obj.dt_solicitacao_topografia       <> edtdtsolicitacaoTopografia.Text then _strDedoDuro                           :=_strDedoDuro+' DT. SOL. TOP. ALTERADO DE: '+OBJ.dt_solicitacao_topografia+' PARA: '+edtdtsolicitacaoTopografia.Text;
    if obj.dt_conclusao         <>       (edtdtconclusao.Text) then _strDedoDuro                                          :=_strDedoDuro+' DT. CONCLUS�O ALTERADO DE: '+OBJ.dt_conclusao+' PARA: '+edtdtconclusao.Text;
    if obj.id_statusos          <>      IntToStr(Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex])) then _strDedoDuro         :=_strDedoDuro+' STATUS ALTERADO DE: '+OBJ.id_statusos+' PARA: '+IntToStr(Integer(cbbstatus.Items.Objects[cbbstatus.ItemIndex]));
    if obj.improcedente          <>       rgimprocedente.ItemIndex then _strDedoDuro                                      :=_strDedoDuro+' IMPROCEDENTE MODIFICADO';
    if obj.dt_devolvida          <>         edtdtDevolvida.text then _strDedoDuro                                         :=_strDedoDuro+' DT. DEVOLVIDA DE: '+OBJ.dt_devolvida+' PARA: '+edtdtDevolvida.Text;
    {Tec campo}
    if  obj.id_tec_campo         <>    edtcodtecnico.Text then _strDedoDuro                                               :=_strDedoDuro+' LEVANTADOR ALTERADO DE: '+OBJ.id_tec_campo+' PARA: '+edtcodtecnico.Text;
    if obj.dt_liberacao_tec      <>               (edtdtliberacaotec.Text) then _strDedoDuro                              :=_strDedoDuro+' DT. LIBERA��O TEC ALTERADO DE: '+OBJ.dt_liberacao_tec+' PARA: '+edtdtliberacaotec.Text ;
    if obj.dt_chegada_tec        <>(edtdtchegada.Text) then _strDedoDuro                                                  :=_strDedoDuro+' DT. CHEGADA TEC ALTERADO DE: '+OBJ.dt_chegada_tec+' PARA: '+edtdtchegada.Text;
    {Topografia}
    if (obj.id_topografo             <>   (edtcodtopografo.Text)) and (obj.id_topografo<>'0') then _strDedoDuro           :=_strDedoDuro+' TOPOGRAFO ALTERADO DE: '+OBJ.id_topografo+' PARA: '+edtcodtopografo.Text;
    if obj.dt_envio_topografia    <> (edtenviotopografia.Text) then _strDedoDuro                                          :=_strDedoDuro+' DT. ENVIO TOPOGRAFIA ALTERADO DE: '+OBJ.dt_envio_topografia+' PARA: '+edtenviotopografia.Text;
    if obj.dt_chegada_topografia  <>       (edtretornotopografia.Text) then _strDedoDuro                                  :=_strDedoDuro+' DT. CHEGADA TOPOGRAFIA ALTERADO DE: '+OBJ.dt_chegada_topografia+' PARA: '+edtretornotopografia.Text;
    {Projeto}
    if (obj.id_projetista           <>    (edtcodprojetista.Text)) and (obj.id_projetista <>'0') then _strDedoDuro        :=_strDedoDuro+' PROJETISTA ALTERADO DE: '+OBJ.id_projetista+' PARA: '+edtcodprojetista.Text;
    if obj.dt_envio_projeto        <>      (edtdtenvioprojeto.Text) then _strDedoDuro                                     :=_strDedoDuro+' DT. ENVIO PROJETO ALTERADO DE: '+OBJ.dt_envio_projeto+' PARA: '+edtdtenvioprojeto.Text;
    if obj.dt_chegada_projeto      <>       (edtdtretornoprojeto.Text) then _strDedoDuro                                  :=_strDedoDuro+' DT. CHEGADA PROJETO ALTERADO DE: '+OBJ.dt_chegada_projeto+' PARA: '+edtdtretornoprojeto.Text;

    {Valores}
    if obj.qtd_post_proj_urb <> (edtqtdposteprojurbano.text) then _strDedoDuro                                            :=_strDedoDuro+' QTD. POSTE PROJ.URB. ALTERADO DE: '+OBJ.qtd_post_proj_urb+' PARA: '+edtqtdposteprojurbano.Text;
    if obj.qtd_post_proj_rur <>(edtqtdposterural.text)then _strDedoDuro                                                   :=_strDedoDuro+'QTD. POSTE PROJ. RUR. ALTERADO DE: '+OBJ.qtd_post_proj_rur+' PARA: '+edtqtdposterural.Text;
    if obj.qtd_post_lev   <>   (edtqtdlevantado.text)then _strDedoDuro                                                    :=_strDedoDuro+' QTD. POSTE LEV. ALTERADO DE: '+OBJ.qtd_post_lev+' PARA: '+edtqtdlevantado.Text;
    if obj.qtd_topografia    <>edtqtdtopografia.text THEN _strDedoDuro                                                    :=_strDedoDuro+' QTD. TOPOGRAFIA ALTERADO DE: '+OBJ.qtd_topografia+' PARA: '+edtqtdtopografia.Text;
    if obj.qtd_travessia     <>(edtqttravessia.text) then _strDedoDuro                                                    :=_strDedoDuro+' QTD. TRAVESSIA ALTERADO DE: '+OBJ.qtd_travessia+' PARA: '+edtqttravessia.Text;
    if obj.qtd_incorporacao  <>(edtqtincorporacao.text) then _strDedoDuro                                                 :=_strDedoDuro+' QTD. INCORPORA��O ALTERADO DE: '+OBJ.qtd_incorporacao+ ' PARA: '+edtqtincorporacao.Text;
    if obj.qtd_deslocamento  <>(edtqtddeslocamento.text) THEN _strDedoDuro                                                :=_strDedoDuro+' QTD. DESLOCAMENTO ALTERADO DE: '+OBJ.qtd_deslocamento+' PARA: '+edtqtddeslocamento.Text;
    if obj.qtd_outros        <> (edtqtdoutros.text) then _strDedoDuro                                                     :=_strDedoDuro+' QTD. OUTROS ALTERADO DE: '+OBJ.qtd_outros+' PARA: '+edtqtdoutros.Text;
    if obj.qtd_levantamento  <>      (edtqtdlevantamento.Text) then _strDedoDuro                                          :=_strDedoDuro+' QTD. LEVANTAMENTO ALTERADO DE: '+OBJ.qtd_levantamento+' PARA: '+edtqtdlevantamento.Text;

    if obj.vl_post_proj_urb  <>     (StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll])) then _strDedoDuro :=_strDedoDuro+' VL. POSTE PROJ. URB ALTERADO DE: '+OBJ.vl_post_proj_urb+' PARA: '+(StringReplace(edtvlposteprojurbano.text, '.', '', [rfReplaceAll]));
    if obj.vl_post_porj_rur  <>    (StringReplace(edtvlposterural.text,'.','',[rfReplaceAll])) then _strDedoDuro          :=_strDedoDuro+'VL. POSTE PROJ RUR ALTERADO DE: '+OBJ.vl_post_porj_rur+' PARA: '+(StringReplace(edtvlposterural.text,'.','',[rfReplaceAll]));
    if obj.vl_levantamento   <>   (StringReplace(edtvllevantado.text,'.','',[rfReplaceAll])) then  _strDedoDuro           :=_strDedoDuro+'VL. POST. LEVANTADO ALTERADO DE: '+obj.vl_levantamento+(StringReplace(edtvllevantado.text,'.','',[rfReplaceAll]));
    if obj.vl_topografia     <>    (StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll])) then _strDedoDuro         :=_strDedoDuro+'VL. TOPOGRAFIA ALTERADO DE:  '+obj.vl_topografia+' PARA: '+(StringReplace(edtvlrtopografia.text,'.','',[rfReplaceAll]));
    if obj.vl_travessia      <>     (StringReplace(edtvltravessia.text,'.','',[rfReplaceAll])) then _strDedoDuro          :=_strDedoDuro+'VL. TRAVESSIA ALTERADO DE:  '+OBJ.vl_travessia+' PARA: '+(StringReplace(edtvltravessia.text,'.','',[rfReplaceAll]));
    if obj.vl_incorporacao   <> (StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll])) then _strDedoDuro          :=_strDedoDuro+'VL. INCORPORA��O ALTERADO DE: '+OBJ.vl_incorporacao+' PARA: '+(StringReplace(edtvlrincorporacao.text,'.','',[rfReplaceAll]));
    if obj.vl_deslocamento   <>     (StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll])) then _strDedoDuro       :=_strDedoDuro+'VL DESLOCAMENTO ALTERADO DE: '+OBJ.vl_deslocamento+' PARA :'+(StringReplace(edtvldeslocamento.text,'.','',[rfReplaceAll]));
    if obj.vl_outros         <> (StringReplace(edtvloutros.text,'.','',[rfReplaceAll])) then _strDedoDuro                 :=_strDedoDuro+'VL. OUTROS ALTERADO DE: '+OBJ.vl_outros+' PARA: '+(StringReplace(edtvloutros.text,'.','',[rfReplaceAll]));
    if obj.vl_levantamento   <>  (StringReplace(edtvllevantamento.Text,'.','',[rfReplaceAll])) then _strDedoDuro          :=_strDedoDuro+'VL. LEVANTAMENTO DE: '+OBJ.vl_levantamento+' PARA: '+(StringReplace(edtvllevantamento.Text,'.','',[rfReplaceAll]));
    {Func}
   // if obj.dias_topografia   <>    StrToIntDef(edtDiasTopografia.Text,0);
    if obj.ativo_passivo     <>    rgAtvPassivo.ItemIndex then _strDedoDuro                                               :=_strDedoDuro+'ATIVO PASSIVO ALTERADO DE: ';
   if _strDedoDuro<>'' then
    InsereDedoDuroRural(DataModule1.qryusuario.FieldByName('iduser').AsString,DataModule1.qryusuario.FieldByName('nome').AsString,_strDedoDuro,Self.FIdProjeto);

  except on E: Exception do
    CriarLog(Self,E,'Verificacao Dedo Duro');
  end;
finally

end;
end;

procedure TfrmCadastrarProjetoRural.edtqtdtopografiaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(5);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqtincorporacaoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(7);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtqttravessiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key = #13)then
  begin
   CalcularValoresProjeto(6);
  end;
end;

procedure TfrmCadastrarProjetoRural.edtretornotopografiaExit(
  Sender: TObject);
begin
  inherited;
  if Self.Tag<>1 then
  begin
   if((edtretornotopografia.Text<>'')and(edtenviotopografia.Text<>'') and (rgAtvPassivo.ItemIndex=0))then
    begin
      if not ValidarDataMenorAno(edtretornotopografia.Text) then
      begin
        Application.MessageBox('Data Inferior  a 01/01/2000 !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
        (Sender as TcxDateEdit).SetFocus;
        Exit;
      end;
      if not ValidarDataHoje(edtretornotopografia.text) then
      begin
        Application.MessageBox('Data Superir a Data Hoje !',
        'Aviso', MB_OK + MB_ICONINFORMATION);
        (Sender as TcxDateEdit).Clear;
        (Sender as TcxDateEdit).SetFocus;
        Exit;
      end;
      lblprazomub.Caption := 'Dura��o do Servi�o: ';
      lblprazomub.Caption := lblprazomub.Caption + IntToStr(DaysBetween(edtenviotopografia.Date,edtretornotopografia.Date)) +' Dias';
    end;
  end;
end;

procedure TfrmCadastrarProjetoRural.edtVinculacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key =#13 then
  begin
    if edtVinculacao.Text='' then
    begin{chama consulta de os}
      frmConsProjetoRural:=TfrmConsProjetoRural.Create(Self);
      frmConsProjetoRural.Tag := 3;
      frmConsProjetoRural.Show;
    end
    else
    begin
      btVinculacaoClick(Self);
    end;
   end;
end;


procedure TfrmCadastrarProjetoRural.ExibirOSVinculadas1Click(
  Sender: TObject);
begin
  inherited;
  ChamarConsultaVinculados;
end;

procedure TfrmCadastrarProjetoRural.ChamarConsultaVinculados;
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

function TfrmCadastrarProjetoRural.VerificarSeExisteValor:Boolean;
begin

  Result := False;

  if (edtqtdposterural.Text<>'0') and (edtqtdposterural.Text<>'')  then
    Result := true;

    if (edtqtdposteprojurbano.Text<>'0') and (edtqtdposteprojurbano.Text<>'') then
    Result := true;

    if (edtqtdlevantado.Text<>'') and (edtqtdlevantado.Text<>'0') then
    Result := true;

    if (edtqtdlevantamento.Text<>'0') and (edtqtdlevantamento.Text<>'') then
    Result := true;

    if (edtqtdtopografia.Text<>'0') and (edtqtdtopografia.Text<>'') then
    Result := true;

    if (edtqtdlevantado.Text<>'') and (edtqtdlevantado.Text<>'0') then
    Result := true;

    if (edtqtddeslocamento.Text<>'0') and (edtqtddeslocamento.Text<>'') then
    Result := true;

    if (edtqtddeslocamento.Text<>'0') and (edtqtddeslocamento.Text<>'')  then
    Result := true;

end;




end.
