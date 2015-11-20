  unit UFrmConsultaRapida;

  interface

  uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
    FireDAC.Stan.Option, FireDAC.Stan.Param,
    FireDAC.Stan.Error, FireDAC.DatS,
    FireDAC.Stan.Async, FireDAC.DApt, cxControls,
    cxContainer, cxEdit, Vcl.ComCtrls,













    cxTextEdit,
    cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Menus, Data.DB,
    FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
    Vcl.Buttons, PngSpeedButton, UConsFuncionario,System.StrUtils,
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
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;

  type
    TFrmConsultaRapida = class(TForm)
      shp1: TShape;
      lbl1: TLabel;
      img10: TImage;
      lbltipo: TLabel;
      edtnome: TEdit;
      lbl2: TLabel;
      cbbopcao: TComboBox;
      dbgrd1: TDBGrid;
      qry: TFDQuery;
      ds1: TDataSource;
      pm1: TPopupMenu;
      itemCalculadoraF81: TMenuItem;
      itemN3: TMenuItem;
      itemConsultarPorNome1: TMenuItem;
      itemN1: TMenuItem;
      itemConsultarPorCPFCNPJ1: TMenuItem;
      itemN2: TMenuItem;
      itemConsultar1: TMenuItem;
      grp1: TGroupBox;
      lbl3: TLabel;
      lbl4: TLabel;
      edtini: TcxDateEdit;
      edtfim: TcxDateEdit;
      grp2: TGroupBox;
      chkcadastrada: TCheckBox;
      chkLevantamento: TCheckBox;
      chkAtualizar: TCheckBox;
      chkProjetar: TCheckBox;
      chkTopografia: TCheckBox;
      chkDevolvida: TCheckBox;
      chkEnviadoCeltins: TCheckBox;
      chkConcluido: TCheckBox;
      chkTodos: TCheckBox;
      rgGroup: TRadioGroup;
      grpFuncionario: TGroupBox;
      edtdesctecnico: TEdit;
      edtcodtecnico: TEdit;
      grpClassificacao: TGroupBox;
      cbbclassificacao: TComboBox;
      sbconsultar: TPngSpeedButton;
    lbl8: TLabel;
    edtcodmunicipio: TEdit;
    edtdescmunicipio: TEdit;
    rgTpPeriodo: TRadioGroup;
    chkPendente: TCheckBox;
    PopupMenu1: TPopupMenu;
      procedure dbgrd1DblClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure edtnomeKeyPress(Sender: TObject; var Key: Char);
      procedure sbconsultarClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1KeyPress(Sender: TObject; var Key: Char);
    private
      { Private declarations }
      function pegarstatus:string;
      procedure carregaDados(prForm:TForm);
    public
      { Public declarations }
    end;

  var
    FrmConsultaRapida: TFrmConsultaRapida;

  implementation

  {$R *.dfm}

  uses uFrmCadastrarProjeto, DataModule,
  u_conscodmunicipio;

  procedure TFrmConsultaRapida.carregaDados(prForm:TForm);
  begin
    //controlando o menu
  (prForm as TfrmCadastrarProjeto).sbnovo.Enabled                     := False;
  (prForm as TfrmCadastrarProjeto).sbgravar.Enabled                   := True;
  (prForm as TfrmCadastrarProjeto).sbexcluir.Enabled                  := True;
  if(not qry.IsEmpty)then
  begin
    (prForm as TfrmCadastrarProjeto).FIdProjeto                       := qry.FieldByName('id').AsInteger;
    (prForm as TfrmCadastrarProjeto).edtnumos.Text                    := qry.FieldByName('numero_os').AsString;
    frmCadastrarProjeto.edtnumpvt.Text                   := qry.FieldByName('numero_pvt').AsString;
    (prForm as TfrmCadastrarProjeto).edtsolicitante.Text              := qry.FieldByName('solicitante').AsString;
    (prForm as TfrmCadastrarProjeto).edtendereco.Text                 := qry.FieldByName('endereco').AsString;
    (prForm as TfrmCadastrarProjeto).edttelefone.EditMask:='';
    (prForm as TfrmCadastrarProjeto).edttelefone.Text                 := qry.FieldByName('telefone').AsString;
    (prForm as TfrmCadastrarProjeto).edtcodmunicipio.Text             := qry.FieldByName('id_municipio').AsString;
    (prForm as TfrmCadastrarProjeto).edtdescmunicipio.Text            :=qry.FieldByName('nome_municipio').AsString;
    (prForm as TfrmCadastrarProjeto).cbbstatus.ItemIndex:= frmCadastrarProjeto.cbbstatus.Items.IndexOf(qry.FieldByName('status_desc').AsString);
    (prForm as TfrmCadastrarProjeto).edtdtlimitegeral.Date        := qry.FieldByName('dt_limite_geral').AsDateTime;
    (prForm as TfrmCadastrarProjeto).edtdtchegadageral.Text           := qry.FieldByName('dt_chegada_geral').AsString;
    (prForm as TfrmCadastrarProjeto).edtdataconclusao.Text            :=qry.FieldByName('dt_conclusao').AsString;
    (prForm as TfrmCadastrarProjeto).cbbclassificacaoos.ItemIndex:= frmCadastrarProjeto.cbbclassificacaoos.Items.IndexOf(qry.FieldByName('os_classificacao').AsString);
    (prForm as TfrmCadastrarProjeto).cbbcrs.ItemIndex:= frmCadastrarProjeto.cbbcrs.Items.IndexOf(qry.FieldByName('crs_desc').AsString);
    (prForm as TfrmCadastrarProjeto).rgdocceltins.ItemIndex           :=qry.FieldByName('doc_celtins').AsInteger  ;
    (prForm as TfrmCadastrarProjeto).mmoobservacao.Text               := qry.FieldByName('observacao_geral').AsString;
    (prForm as TfrmCadastrarProjeto).edtdiretorio.Text                := qry.FieldByName('caminho_arquivo').AsString;

    if(qry.FieldByName('id_tec_campo').AsString <>'0')then frmCadastrarProjeto.edtcodtecnico.Text   := qry.FieldByName('id_tec_campo').AsString;
    (prForm as TfrmCadastrarProjeto).edtdesctecnico.Text              := qry.FieldByName('nometec').AsString;

    (prForm as TfrmCadastrarProjeto).edtdtliberacaotec.Text           := qry.FieldByName('dt_liberacao_tec').AsString;
    (prForm as TfrmCadastrarProjeto).edtdtchegada.Text                := qry.FieldByName('dt_chegada_tec').AsString;

    (prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.Text           := qry.FieldByName('dt_envio_projeto').AsString;
    (prForm as TfrmCadastrarProjeto).edtdtretornoprojeto.Text         := qry.FieldByName('dt_chegada_projeto').AsString;

    (prForm as TfrmCadastrarProjeto).edtenvioatualizacao.Text         := qry.FieldByName('dt_envio_atualizacao').AsString;
    (prForm as TfrmCadastrarProjeto).edtretornoatualizacao.Text       := qry.FieldByName('dt_chegada_atualizacao').AsString;

    (prForm as TfrmCadastrarProjeto).BuscaConfig(qry.FieldByName('id_tipoos').AsInteger);
    sqlstr:='select * from os_cargahoraria where id_projeto ='+qry.FieldByName('id').AsString+' order by id desc limit 1 ';

    //carregar prorrogacao
    if(ConsultaSqlFd(DataModule1.qryprorrogacao,sqlstr))then
    begin
      //inserir prorrogacao
      (prForm as TfrmCadastrarProjeto).edtdataprorrogacao.Text:=DataModule1.qryprorrogacao.FieldByName('prorrogacao').AsString;

      if Trim(frmCadastrarProjeto.edtdtchegada.Text) = '' then
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtdtliberacaotec.text) <> '' then
          (prForm as TfrmCadastrarProjeto).lblprazoservico.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo(frmCadastrarProjeto.edtdtliberacaotec.text,''
          ,FloatToStr(frmCadastrarProjeto.qryconfigdias.FieldByName('dias_campo').AsFloat+DataModule1.qryprorrogacao.FieldByName('servcampo').AsFloat));
      end
      else
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtdtliberacaotec.text) <> '' then
          (prForm as TfrmCadastrarProjeto).edtdtchegadaExit(Self);
      end;

      //data projeto
      if Trim((prForm as TfrmCadastrarProjeto).edtdtretornoprojeto.Text) = '' then
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.text) <> '' then
          (prForm as TfrmCadastrarProjeto).lblprazoprojeto.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.text,''
          ,FloatToStr((prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('dias_projeto').AsFloat+DataModule1.qryprorrogacao.FieldByName('projeto').AsFloat));
      end
      else
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.text) <> '' then
          (prForm as TfrmCadastrarProjeto).edtdtretornoprojetoExit(Self);
      end;
      //mub
       if Trim((prForm as TfrmCadastrarProjeto).edtretornoatualizacao.Text) = '' then
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtenvioatualizacao.text) <> '' then
          (prForm as TfrmCadastrarProjeto).lblprazomub.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtenvioatualizacao.text,''
          ,FloatToStr((prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('dias_mub').AsFloat+DataModule1.qryprorrogacao.FieldByName('atualizacaomub').AsFloat));
      end
      else
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtenvioatualizacao.text) <> '' then
          (prForm as TfrmCadastrarProjeto).edtretornoatualizacaoExit(Self);
      end;

       //topografia
      if Trim((prForm as TfrmCadastrarProjeto).edtRetornoTopografia.Text) = '' then
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.text) <> '' then
          (prForm as TfrmCadastrarProjeto).lblprazoTopografia.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.text,''
          ,FloatToStr((prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('topografia').AsFloat+DataModule1.qryprorrogacao.FieldByName('topografia').AsFloat));
      end
      else
      begin
        if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.text) <> '' then
          (prForm as TfrmCadastrarProjeto).edtRetornoTopografiaExit(Self);
      end;

    end
    else //sem prorrogacao
    begin
      if Trim((prForm as TfrmCadastrarProjeto).edtdtchegada.Text) = '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtdtliberacaotec.text) <> '' then
            (prForm as TfrmCadastrarProjeto).lblprazoservico.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtdtliberacaotec.text,'',(prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('dias_campo').AsString);
      end;

      if Trim((prForm as TfrmCadastrarProjeto).edtdtchegada.Text) <> '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtdtliberacaotec.text) <> '' then
            (prForm as TfrmCadastrarProjeto).edtdtchegadaExit(Self);
      end;

       //projeto
      if Trim((prForm as TfrmCadastrarProjeto).edtdtretornoprojeto.Text) = '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.text) <> '' then
            (prForm as TfrmCadastrarProjeto).lblprazoprojeto.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.text,'',(prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('dias_projeto').AsString);
      end;

      if Trim((prForm as TfrmCadastrarProjeto).edtdtretornoprojeto.Text) <> '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioprojeto.text) <> '' then
            (prForm as TfrmCadastrarProjeto).edtdtretornoprojetoExit(Self);
      end;

      //mmub
      if Trim((prForm as TfrmCadastrarProjeto).edtretornoatualizacao.Text) = '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtenvioatualizacao.text) <> '' then
            (prForm as TfrmCadastrarProjeto).lblprazomub.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtenvioatualizacao.text,'',(prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('dias_mub').AsString);
      end;

      if Trim((prForm as TfrmCadastrarProjeto).edtretornoatualizacao.Text) <> '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtenvioatualizacao.text) <> '' then
            (prForm as TfrmCadastrarProjeto).edtretornoatualizacaoExit(Self);
      end;

      //topografia
      if Trim((prForm as TfrmCadastrarProjeto).edtRetornoTopografia.Text) = '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.text) <> '' then
            (prForm as TfrmCadastrarProjeto).lblprazoTopografia.Caption := (prForm as TfrmCadastrarProjeto).CalculaPrazo((prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.text,'',(prForm as TfrmCadastrarProjeto).qryconfigdias.FieldByName('dias_topografia').AsString);
      end;

      if Trim((prForm as TfrmCadastrarProjeto).edtRetornoTopografia.Text) <> '' then
      begin
          if Trim((prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.text) <> '' then
            (prForm as TfrmCadastrarProjeto).edtretornoatualizacaoExit(Self);
      end;
    end;


    if qry.FieldByName('id_projetista').AsString<>'0' then (prForm as TfrmCadastrarProjeto).edtcodprojetista.Text := qry.FieldByName('id_projetista').AsString;
    (prForm as TfrmCadastrarProjeto).edtdescprojetista.Text        := qry.FieldByName('nome_projetista').AsString;

    if qry.FieldByName('id_tec_atualizador').AsString <>'0' then (prForm as TfrmCadastrarProjeto).edtcodtecmub.Text   := qry.FieldByName('id_tec_atualizador').AsString;
    (prForm as TfrmCadastrarProjeto).edtdesctecmub.Text            :=qry.FieldByName('nome_atualizador').AsString;

    //frmCadastrarProjeto.edtdataprorrogacao.Text          := qry.FieldByName('dt_novo_prazo').AsString;
    {*************************carregando valores e quantidade projeto******************}
    (prForm as TfrmCadastrarProjeto).edtqtdposteprojurbano.Text       :=qry.FieldByName('qtd_post_proj_urb').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtdposterural.Text            :=qry.FieldByName('qtd_post_proj_rur').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtdlevantado.Text             :=qry.FieldByName('qtd_post_lev').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtdposteatualizado.Text       :=qry.FieldByName('qtd_post_atu').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtdtopografia.Text            :=qry.FieldByName('qtd_topografia').AsString;
    (prForm as TfrmCadastrarProjeto).edtqttravessia.Text              :=qry.FieldByName('qtd_travessia').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtincorporacao.Text           :=qry.FieldByName('qtd_incorporacao').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtdimprocedente.Text          :=qry.FieldByName('qtd_improcedente').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtddeslocamento.Text          :=qry.FieldByName('qtd_deslocamento').AsString;
    (prForm as TfrmCadastrarProjeto).edtqtdoutros.Text                :=qry.FieldByName('qtd_outros').AsString;
    (prForm as TfrmCadastrarProjeto).edtvlposteprojurbano.Text        :=FormatFloat(',.00',qry.FieldByName('vl_post_proj_urb').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvlposterural.Text             :=FormatFloat(',.00',qry.FieldByName('vl_post_porj_rur').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvllevantado.Text              :=FormatFloat(',.00',qry.FieldByName('vl_post_lev').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvlposteatualizado.Text        :=FormatFloat(',.00',qry.FieldByName('vl_post_atu').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvlrtopografia.Text            :=FormatFloat(',.00',qry.FieldByName('vl_topografia').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvltravessia.Text              :=FormatFloat(',.00',qry.FieldByName('vl_travessia').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvlrincorporacao.Text          :=FormatFloat(',.00',qry.FieldByName('vl_incorporacao').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtedvlimprocedente.Text         :=FormatFloat(',.00',qry.FieldByName('vl_improcedente').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvldeslocamento.Text           :=FormatFloat(',.00',qry.FieldByName('vl_deslocamento').AsFloat);
    (prForm as TfrmCadastrarProjeto).edtvloutros.Text                 :=FormatFloat(',.00',qry.FieldByName('vl_outros').AsFloat);

    if (qry.FieldByName('improcedente').AsInteger=1) and (qry.FieldByName('status_desc').AsString='Pendente')then
    (prForm as TfrmCadastrarProjeto).rgimprocedente.ItemIndex         :=qry.FieldByName('improcedente').AsInteger;

    if (qry.FieldByName('improcedente').AsInteger=0)then
    (prForm as TfrmCadastrarProjeto).rgimprocedente.ItemIndex         :=qry.FieldByName('improcedente').AsInteger;


    (prForm as TfrmCadastrarProjeto).FIdUsuarioCad                    :=qry.FieldByName('id_func_cad').AsInteger;

    (prForm as TfrmCadastrarProjeto).edtTopografo.Text                :=qry.FieldByName('topografo').AsString;
    (prForm as TfrmCadastrarProjeto).edtdtenvioTopografia.Text        :=qry.FieldByName('dt_envio_topografia').AsString;
    (prForm as TfrmCadastrarProjeto).edtRetornoTopografia.Text        :=qry.FieldByName('dt_chegada_topografia').AsString;

    (prForm as TfrmCadastrarProjeto).edtdtDevolvida.Text              :=qry.FieldByName('dt_devolvido').AsString;

    (prForm as TfrmCadastrarProjeto).chkContrato.Checked              :=StrToBool( ifthen((qry.FieldByName('contrato').AsInteger<>0),'True','False') );
    //carregar labels de prazo
    (prForm as TfrmCadastrarProjeto).cbbclassificacaoosExit(Self);
    //frmCadastrarProjeto.edtdtliberacaotecExit(Self);

    //DataModule1.qryrevisaoos.Text:=' SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao os  left JOIN cad_funcionarios  cad on os.cod_projetista = cad.id WHERE os.id_projeto=:prcodprojeto';
    DataModule1.qryrevisaoos.ParamByName('prcodprojeto').AsInteger :=qry.FieldByName('id').AsInteger;
    DataModule1.qryrevisaoos.Open();

    sqlstr :=' select * from os_engenharia_notas where id_os_projeto = '+inttostr((prForm as TfrmCadastrarProjeto).FIdProjeto);
    //carregar tabela de notas
    ConsultaSqlFd((prForm as TfrmCadastrarProjeto).qrynota,sqlstr);
    //frmCadastrarProjeto.qrynota.Open();

    (prForm as TfrmCadastrarProjeto).AtualizarGrid;
  end;
  end;

  procedure TFrmConsultaRapida.chkTodosClick(Sender: TObject);
var
i:Integer;
  begin
  if(chkTodos.Checked)then
  begin
    for  i:=0 to (ComponentCount - 1) do
    begin
      if(Components[i] is TCustomCheckBox)then
      begin
        (Components[i] as TCheckBox).Checked:=True;
      end;
    end;
  end
  else
  begin
  for  i:=0 to (ComponentCount - 1) do
    begin
      if(Components[i] is TCustomCheckBox)then
      begin
        (Components[i] as TCheckBox).Checked:=False;
      end;
    end;
  end;
end;

procedure TFrmConsultaRapida.dbgrd1DblClick(Sender: TObject);
  var
  frm:TfrmCadastrarProjeto;
  begin
    if not qry.IsEmpty then
    begin
      Self.Tag:=1;
      frm:=TfrmCadastrarProjeto.Create(Self);
      carregaDados(frm);
      //frm.Enabled:=False;
      frm.Tag:=1;//tag para nao validar mudanca de status
      frm.Caption:='Visualiza��o R�pida';
      {frm.Panel1.Visible:=False;
      frm.grp1.Top :=3;
      frm.grpCampo.Top:=(frm.grp1.Height-frm.Height+2);}
      frm.Show;
      frm.sbconsultar.Enabled:=False;
      frm.sbgravar.Enabled:=False;
      frm.sbnovo.Enabled:=False;
      frm.sbexcluir.Enabled:=False;
      frm.sbrelatorios.Enabled:=False;
      frm.btnopcoes.Enabled:=False;
      frm.SpeedButton1.Enabled:=False;
    end;
  end;

  procedure TFrmConsultaRapida.dbgrd1KeyPress(Sender: TObject;
  var Key: Char);
    var
  frm:TfrmCadastrarProjeto;
begin
  if Key=#13 then
  begin
    if not qry.IsEmpty then
    begin
      Self.Tag:=1;
      frm:=TfrmCadastrarProjeto.Create(Self);
      carregaDados(frm);
      //frm.Enabled:=False;
      frm.Tag:=1;//tag para nao validar mudanca de status
      frm.Caption:='Visualiza��o R�pida';
      {frm.Panel1.Visible:=False;
      frm.grp1.Top :=3;
      frm.grpCampo.Top:=(frm.grp1.Height-frm.Height+2);}
      frm.Show;
      frm.sbconsultar.Enabled:=False;
      frm.sbgravar.Enabled:=False;
      frm.sbnovo.Enabled:=False;
      frm.sbexcluir.Enabled:=False;
      frm.sbrelatorios.Enabled:=False;
      frm.btnopcoes.Enabled:=False;
      frm.SpeedButton1.Enabled:=False;
    end;
  end;

end;

procedure TFrmConsultaRapida.edtcodmunicipioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin
    if trim(edtcodmunicipio.text)='' then
    begin
      if frmconscidade = nil then
        application.createform(tfrmconscidade,frmconscidade);
      frmconscidade.edtopcao.text := edtcodmunicipio.text;
      frmconscidade.tag := 3 ;
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
      end
      else
      begin
        SemRegistros;
        edtcodmunicipio.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmConsultaRapida.edtcodtecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key=#13)then
  begin
    if(Trim(edtcodtecnico.Text)='')then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=13;
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
        FrmConsFuncionario.Tag :=13;
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

procedure TFrmConsultaRapida.edtnomeKeyPress(Sender: TObject;
  var Key: Char);
  var
  consulta,qlstr:string;
  begin
 
  end;

  procedure TFrmConsultaRapida.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
    if key = vk_escape then
      Close;
  end;

  procedure TFrmConsultaRapida.FormShow(Sender: TObject);
  begin
    edtini.Text:=funcRetornaPrimeiroDiaMes;
    edtfim.Text:=funcRetornaUltimoDiaMes;
    cbbopcao.ItemIndex:=0;
     if ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_tipo')then
     begin
      DataModule1.qryCRUD.First;
      while not DataModule1.qryCRUD.Eof do
      begin
        cbbclassificacao.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
        DataModule1.qryCRUD.Next;
      end;
      cbbclassificacao.AddItem('Todos',ObjectMenuItem);
      cbbclassificacao.ItemIndex:=3;
     end;

  end;

  function TFrmConsultaRapida.pegarstatus: string;
  begin
    If(chkcadastrada.Checked)then
    begin
      Result:='6';
    end;
    If(chkLevantamento.Checked)then
    begin
      if(Result='')then Result:='1' else Result := Result+',1';
    end;
    If(chkAtualizar.Checked)then
    begin
      if(Result='')then Result:='4' else Result := Result+',4';
    end;
    If(chkProjetar.Checked)then
    begin
      if(Result='')then Result:='2' else Result := Result+',2';
    end;
    If(chkTopografia.Checked)then
    begin
      if(Result='')then Result:='9' else Result := Result+',9';
    end;
    If(chkEnviadoCeltins.Checked)then
    begin
      if(Result='')then Result:='8' else Result := Result+',8';
    end;
    If(chkDevolvida.Checked)then
    begin
      if(Result='')then Result:='7' else Result := Result+',7';
    end;
    If(chkConcluido.Checked)then
    begin
      if(Result='')then Result:='10' else Result := Result+',10';
    end;
    if (chkPendente.Checked) then
  begin
    if Result='' then Result:='11'else Result:=Result+',11';
  end;
  end;

procedure TFrmConsultaRapida.sbconsultarClick(Sender: TObject);
var
  consulta:string;
begin
 try
  sqlstr:=' SELECT distinct os.id,os.id_tipoos,'+
          ' os.numero_os,os.numero_pvt,os.doc_celtins,'+
          ' os.solicitante,os.endereco,os.telefone,os.id_municipio,'+
          ' m.nome_municipio,os.id_crs,crs.descricao as crs_desc ,os.dt_limite_geral,'+
          ' os.dt_chegada_geral,os.id_tipoos,os_tp.descricao as os_classificacao,os.id_statusos,'+
          ' os_st.descricao as status_desc,os.observacao_geral,os.caminho_arquivo,os.id_tec_campo, fun.nome_razaosocial as nometec,'+
          ' os.dt_liberacao_tec,os.dt_chegada_tec,os.id_projetista, fu.nome_razaosocial as nome_projetista,'+
          ' os.dt_envio_projeto,os.dt_chegada_projeto,os.dt_envio_atualizacao,'+
          ' os.dt_chegada_atualizacao,os.id_tec_atualizador , f.nome_razaosocial as nome_atualizador,os.dt_novo_prazo, '+
          ' os.qtd_deslocamento,os.qtd_improcedente,os.qtd_incorporacao,os.qtd_outros,'+
          ' os.qtd_post_atu,os.qtd_post_lev,os.qtd_post_proj_rur,os.qtd_post_proj_urb,'+
          ' os.qtd_topografia,os.qtd_travessia,os.vl_deslocamento,os.vl_improcedente,'+
          ' os.vl_incorporacao,os.vl_outros,os.vl_post_atu,os.vl_post_lev,os.vl_post_porj_rur,'+
          ' os.vl_post_proj_urb,os.vl_topografia,os.vl_travessia,os.improcedente,os.id_func_cad,os.dt_conclusao,'+
          ' os.topografo,os.dt_envio_topografia,os.dt_chegada_topografia,os.dt_devolvido,contrato '+
          ' from os_engenharia_projeto os '+
          ' left join municipios m on(os.id_municipio = m.cod_municipio) '+
          ' left join os_engenharia_crs  crs on (os.id_crs=crs.id)'+
          ' left join os_engenharia_tipo os_tp on (os.id_tipoos = os_tp.id) '+
          ' left join os_engenharia_status os_st on (os.id_statusos = os_st.id)'+
          ' left join cad_funcionarios fun on (os.id_tec_campo = fun.id)'+
          ' left join cad_funcionarios fu on (os.id_projetista = fu.id)'+
          ' left join cad_funcionarios f on (os.id_tec_atualizador = f.id) where  (os.numero_os <> NULL  or trim(os.numero_os) <> '+QuotedStr('')+')';
          //pegando data
          case rgTpPeriodo.ItemIndex of
              0:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
              1:begin
                  sqlstr:=sqlstr+' and os.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
              2:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
              3:begin
                  sqlstr:=sqlstr+' and os.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
              4:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
              5:begin
                  sqlstr:=sqlstr+' and os.dt_envio_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
              6:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
               7:begin
                  sqlstr:=sqlstr+' and os.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
                end;
            end;
          //verificar se edit esta vazio
          if(Trim(edtnome.Text)<>'')then
          begin
            if cbbopcao.ItemIndex=0 then
            begin
              //consulta:=  ' and os.id= (select  o.id_os_projeto from os_engenharia_notas o where o.descricao ='+QuotedStr(edtnome.Text)+')';
              sqlstr:=sqlstr+ consulta;
            end;
            if cbbopcao.ItemIndex=1 then
            begin
             consulta:= ' and os.numero_os = '+Trim(edtnome.Text);
             sqlstr:=sqlstr;//+ consulta;
            end;
            if cbbopcao.ItemIndex=2 then
            begin
              consulta := ' and (solicitante like '+QuotedStr('%'+edtnome.Text+'%')+')';
              sqlstr :=sqlstr;//+ consulta;
            end;
          end
          else if(Trim(edtnome.Text)='')then//se nao for digitado nenhuma informacao no parametro edit
          begin
            //data
            //consulta:= ' and os.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
            sqlstr:=sqlstr;//+ consulta;
            //funcionario
            if(Trim(edtcodtecnico.Text)<>'') and (rgGroup.ItemIndex<>3)then
            begin
              //case para verificar qual perfil de funcionario sera usado na pesquisa
              case rgGroup.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and( os.id_tec_campo = '+edtcodtecnico.Text+')';
                 end;
               1:begin
                  sqlstr:=sqlstr+' and( os.id_tec_atualizador = '+edtcodtecnico.Text+')';
                  end;
               2:begin
                  sqlstr:=sqlstr+' and( os.id_projetista = '+edtcodtecnico.Text+')';
                end;
              end;
            end;
            //pegando status
            if(Trim(pegarstatus)<>'')then
            sqlstr:=sqlstr+' and os.id_statusos in('+pegarStatus+')';

            //tipo os
            if cbbclassificacao.ItemIndex<>3 then //classificao Todos
            begin
              sqlstr:=sqlstr+ ' and os.id_tipoos in('+inttostr(Integer(cbbclassificacao.Items.Objects[cbbclassificacao.ItemIndex]))+')'
            end
            else
            sqlstr:=sqlstr+ ' and os.id_tipoos in(1,2,3)';

            //pegando cidade
            if Trim(edtcodmunicipio.Text)<>'' then
            begin
              sqlstr:=sqlstr+' and os.id_municipio='+Trim(edtcodmunicipio.Text);
            end;
          end;
          if not ConsultaSqlFd(qry,sqlstr) then
          begin
            semregistros;
            edtnome.SetFocus;
          end;

 except on E: Exception do
  CriarLog(Self,E,'Consulta R�pida Urbano');
 end;

end;

end.
