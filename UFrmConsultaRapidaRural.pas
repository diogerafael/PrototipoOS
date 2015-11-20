unit UFrmConsultaRapidaRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons, PngSpeedButton,
  DataModule, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
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
  TFrmConsultaRapidaRural = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    img10: TImage;
    edtnome: TEdit;
    lbltipo: TLabel;
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
    rgTpPeriodo: TRadioGroup;
    rgTipo: TRadioGroup;
    rgGroup: TRadioGroup;
    grpFuncionario: TGroupBox;
    grp3: TGroupBox;
    edtUniversalizacao: TEdit;
    grp1: TGroupBox;
    lbl3: TLabel;
    Label1: TLabel;
    edtini: TcxDateEdit;
    edtfim: TcxDateEdit;
    sbconsultar: TPngSpeedButton;
    grp2: TGroupBox;
    chkcadastrada: TCheckBox;
    chkLevantamento: TCheckBox;
    chkImprocedente: TCheckBox;
    chksoltopografia: TCheckBox;
    chkTopografia: TCheckBox;
    chkprojeto: TCheckBox;
    chkConcluido: TCheckBox;
    chkTodos: TCheckBox;
    chkDevolvida: TCheckBox;
    lbl8: TLabel;
    edtcodmunicipio: TEdit;
    edtdescmunicipio: TEdit;
    edtdesctecnico: TEdit;
    edtcodtecnico: TEdit;
    procedure sbconsultarClick(Sender: TObject);
    function pegarStatus:string;
    procedure FormShow(Sender: TObject);
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1DblClick(Sender: TObject);
  private
    procedure CarregaDados(prForm: TForm);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaRapidaRural: TFrmConsultaRapidaRural;

implementation

{$R *.dfm}

uses u_conscodmunicipio, UConsFuncionario, uFrmCadastrarProjetoRural;

procedure TFrmConsultaRapidaRural.sbconsultarClick(Sender: TObject);
var
  consulta: string;
  _ativo_passivo: string;
begin

  try
       _ativo_passivo:='';
        if rgTipo.ItemIndex <>2 then
        begin
         _ativo_passivo:='  (ativo_passivo ='+IntToStr(rgTipo.ItemIndex)+')';
        end
        else
        _ativo_passivo:='  (ativo_passivo in(0,1))';

    sqlstr:=' select DISTINCT os.id,'+
					' os.numero_os,           '+
          ' osr.descricao as nomesolicitante ,'+
					' os.doc_celtins_passagem,  '+
					' os.doc_celtins_terra,os.doc_celtins_rural,os.doc_celtins_pessoais,'+
					' os.solicitante,os.solicitanteatendido,os.cpf,os.endereco,os.enderecorural,'+
					' os.caminho_arquivo ,os.telefone,os.id_municipio,                          '+
          ' m.nome_municipio,os.id_crs,crs.descricao as crs_desc ,os.dt_limite_geral,os.universalizacao,'+
          ' os.dt_chegada_geral,os.id_statusos,                                                          '+
          ' os_st.descricao as status_desc,os.observacao_geral,os.id_tec_campo, fun.nome_razaosocial as nometec,'+
          ' os.dt_liberacao_tec,os.dt_chegada_tec,os.id_projetista, fu.nome_razaosocial as nome_projetista,     '+
          ' os.dt_envio_projeto,os.dt_chegada_projeto,                                                          '+
          ' f.nome_razaosocial as nome_topogado,                                                                '+
          ' os.qtd_deslocamento,os.qtd_improcedente,os.qtd_incorporacao,os.qtd_outros,                          '+
          ' os.qtd_post_atu,os.qtd_post_lev,os.qtd_post_proj_rur,os.qtd_post_proj_urb,                          '+
          ' os.qtd_topografia,os.qtd_travessia,os.vl_deslocamento,os.vl_improcedente,                           '+
          ' os.vl_incorporacao,os.vl_outros,os.vl_post_atu,os.vl_post_lev,os.vl_post_porj_rur,                  '+
          ' os.vl_post_proj_urb,os.vl_topografia,os.vl_travessia,os.id_func_cad,os.dt_conclusao,os.dt_envio_topografia,'+
          ' os.dt_chegada_topografia,                                                                          '+
          ' os.id_topografo ,os.dt_solicitacao_topografia,os.improcedente ,os.dias_topografia,os.ativo_passivo,os.dt_devolvida,os.vl_levantamento,os.qtd_levantamento '+
          ' from os_engenharia_projeto_rural as os                                                              '+
          ' LEFT JOIN municipios as m ON (os.id_municipio = m.cod_municipio)                                    '+
          ' left JOIN os_engenharia_crs as crs on (crs.id = os.id_crs)                                          '+
          ' LEFT JOIN os_engenharia_status_rural as os_st on (os_st.Id = os.id_statusos)                        '+
          ' LEFT JOIN cad_funcionarios as fun on (fun.Id = os.id_tec_campo)                                     '+
          ' LEFT JOIN cad_funcionarios as fu on  (fu.Id = os.id_projetista)                                     '+
          ' LEFT JOIN cad_funcionarios as f on (f.Id = os.id_topografo)   '+
          ' LEFT JOIN os_engenharia_clientes_rural osr on (osr.id_projeto=os.id) where '+_ativo_passivo;
          //pegando periodo
          case rgTpPeriodo.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo:= ' os_engenharia_projeto_rural.dt_chegada_geral';// ='+Trim(QuotedStr(edtUniversalizacao.Text));
               end;
              1:begin
                  sqlstr:=sqlstr+' and os.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := 'os_engenharia_projeto_rural.dt_liberacao_tec';
                end;
               2:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := ' os_engenharia_projeto_rural.dt_chegada_tec';
                 end;
               3:begin
                  sqlstr:=sqlstr+' and os.dt_envio_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := ' os_engenharia_projeto_rural.dt_envio_topografia';
                end;
               4:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := ' os_engenharia_projeto_rural.dt_chegada_topografia';
                end;
               5:begin
                  sqlstr:=sqlstr+' and os.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := ' os_engenharia_projeto_rural.dt_envio_projeto';
                end;
               6:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := ' os_engenharia_projeto_rural.dt_chegada_projeto';
                end;
               7:begin
                  sqlstr:=sqlstr+' and os.dt_devolvida between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  //_periodo := ' os_engenharia_projeto_rural.dt_devolvida ';
                end;
              8:begin
                  sqlstr:=sqlstr+' and os.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                 // _periodo := ' os_engenharia_projeto_rural.dt_conclusao';
                end;
            end;

             //verificar se edit esta vazio
            if(Trim(edtnome.Text)<>'')then
            begin
              if cbbopcao.ItemIndex =0 then  //consultaa by nota
                sqlstr :=sqlstr+ ' and os.id= (select  o.id_os_projeto from os_engenharia_notas_rural o where o.descricao ='+QuotedStr(edtnome.Text)+')'
              else;
              if cbbopcao.ItemIndex =1 then //consulta by os
              begin
                consulta :=' and (numero_os like'+QuotedStr('%'+edtnome.Text)+')';
                sqlstr :=sqlstr+ consulta;
              end;
              if cbbopcao.ItemIndex=2 then//consulta by cpf
              begin
                consulta :=' and (cpf like'+QuotedStr('%'+edtnome.Text)+')';
                sqlstr :=sqlstr+ consulta;
              end;
              if cbbopcao.ItemIndex = 3then
              begin
                consulta :=' and (osr.descricao like'+QuotedStr('%'+edtnome.Text+'%')+')';
                sqlstr :=sqlstr+ consulta;
              end;
              if cbbopcao.ItemIndex=4 then //atendido
              begin
                consulta :=' and (solicitanteatendido like'+QuotedStr('%'+edtnome.Text+'%')+')';
                sqlstr :=sqlstr+ consulta;
              end;
            end
            else
            begin//se nao for passsado parametro no edit
              //funcionario
            if(rgGroup.ItemIndex<>3)then
            begin
               case rgGroup.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and( os.id_tec_campo = '+edtcodtecnico.Text+')';
                 end;
               1:begin
                  sqlstr:=sqlstr+' and( os.id_projetista = '+edtcodtecnico.Text+')';
                  end;
               end;
            end;
            //pegar status
            if(Trim(pegarstatus)<>'')then
              sqlstr:=sqlstr+' and os.id_statusos in('+pegarStatus+')';

            //pegando cidade
            if Trim(edtcodmunicipio.Text)<>'' then
            begin
              sqlstr:=sqlstr+' and os.id_municipio='+Trim(edtcodmunicipio.Text);
            end;

            //universalizacao
            if Trim(edtUniversalizacao.Text)<>'' then
            begin
              sqlstr:=sqlstr+' and os.universalizacao='+Trim(edtUniversalizacao.Text);
            end;

            end;

            if not ConsultaSqlFd(qry,sqlstr) then
            begin
              semregistros;
              edtnome.SetFocus;
            end;

  except on E:Exception  do
  begin

  end;
  end;

end;

procedure TFrmConsultaRapidaRural.dbgrd1DblClick(Sender: TObject);
var
frm:TfrmCadastrarProjetoRural;
begin
  if not qry.IsEmpty then
  begin
      frm:=TfrmCadastrarProjetoRural.Create(Self);
      carregaDados(frm);
      //frm.Enabled:=False;
      frm.Tag:=1;//tag para nao validar mudanca de status
      frm.Caption:='Visualização Rápida';
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

procedure TFrmConsultaRapidaRural.edtcodmunicipioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin
    if trim(edtcodmunicipio.text)='' then
    begin
      if frmconscidade = nil then
        application.createform(tfrmconscidade,frmconscidade);
      frmconscidade.edtopcao.text := edtcodmunicipio.text;
      frmconscidade.tag := 7 ;
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

procedure TFrmConsultaRapidaRural.edtcodtecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key=#13)then
  begin
    if(Trim(edtcodtecnico.Text)='')then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=14;
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
        FrmConsFuncionario.Tag :=14;
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

procedure TFrmConsultaRapidaRural.FormShow(Sender: TObject);
begin
  edtini.Text:=funcRetornaPrimeiroDiaMes;
  edtfim.Text:=funcRetornaUltimoDiaMes;
end;

function TFrmConsultaRapidaRural.pegarStatus:string;
begin//
  if(chkcadastrada.Checked)then Result:='1';
  if(chkLevantamento.Checked)then begin if(Result='')then Result:='2' else Result:= Result+',2'end;
  if(chkImprocedente.Checked)then begin if(Result='')then Result:='3' else Result:= Result+',3' end;
  if(chksoltopografia.Checked)then begin if(Result='')then Result:='4' else Result:= Result+',4' end;
  if(chkTopografia.Checked)then begin if(Result='')then Result:='5' else  Result:= Result+',5' end;
  if(chkprojeto.Checked)then begin if(Result='')then Result:='6' else  Result:= Result+',6' end;
  if(chkConcluido.Checked)then begin if(Result='')then Result:='7' else  Result:= Result+',7' end;
  if(chkDevolvida.Checked)then begin if(Result='')then Result:='8' else  Result:= Result+',8' end;
end;

procedure TFrmConsultaRapidaRural.CarregaDados(prForm:TForm);
begin
  with prForm as TfrmCadastrarProjetoRural do
  begin
    sbnovo.Enabled                     := False;
    sbgravar.Enabled                   := True;
    sbexcluir.Enabled                  := True;

    {Montando a Tela}
    FIdProjeto := qry.FieldByName('id').AsInteger;
    edtnumos.Text := Trim(qry.FieldByName('numero_os').AsString);
    rgAtvPassivo.ItemIndex := qry.FieldByName('ativo_passivo').AsInteger;
    edtAtendido.Text    := qry.FieldByName('solicitanteatendido').AsString;
    edtendereco.Text    := qry.FieldByName('endereco').AsString;
    edtEnderecoRural.Text := qry.FieldByName('enderecorural').AsString;
    edtcodmunicipio.Text  := qry.FieldByName('id_municipio').AsString;
    edtdescmunicipio.Text := qry.FieldByName('nome_municipio').AsString;
    cbbcrs.ItemIndex:= cbbcrs.Items.IndexOf(qry.FieldByName('crs_desc').AsString);
    edtUniversalizaca.Text:= qry.FieldByName('universalizacao').AsString;
    mmoobservacao.Text    := qry.FieldByName('observacao_geral').AsString;
    rgimprocedente.ItemIndex := qry.FieldByName('improcedente').AsInteger;
    rgAtvPassivo.ItemIndex   := qry.FieldByName('ativo_passivo').AsInteger;
    if(qry.FieldByName('dias_topografia').AsString<>'0')then edtDiasTopografia.Text := qry.FieldByName('dias_topografia').AsString;
    {Datas}
    edtdtchegadageral.Text    := qry.FieldByName('dt_chegada_geral').AsString;
    edtdtlimitegeral.Text     := qry.FieldByName('dt_limite_geral').AsString;
    edtdtconclusao.Text       :=qry.FieldByName('dt_conclusao').AsString;
    edtdtsolicitacaoTopografia.Text:= qry.FieldByName('dt_solicitacao_topografia').AsString;


    {Documentacao}
    if(qry.FieldByName('doc_celtins_passagem').AsInteger>0)then chkPassagem.Checked:=True;
    if(qry.FieldByName('doc_celtins_terra').AsInteger>0)then chkTerra.Checked:=True;
    if(qry.FieldByName('doc_celtins_rural').AsInteger>0)then chkRural.Checked:=True;
    if(qry.FieldByName('doc_celtins_pessoais').AsInteger>0)then chkDocumentosPessoais.Checked:=True;

    cbbstatus.ItemIndex:= cbbstatus.Items.IndexOf(qry.FieldByName('status_desc').AsString);
    edtdiretorio.Text   := qry.FieldByName('caminho_arquivo').AsString;

    {Campo}
    if qry.FieldByName('id_tec_campo').AsString<>'0' then edtcodtecnico.Text := qry.FieldByName('id_tec_campo').AsString;
    edtdesctecnico.Text:= qry.FieldByName('nometec').AsString;
    edtdtchegada.Text:=qry.FieldByName('dt_chegada_tec').AsString;
    edtdtliberacaotec.Text:=qry.FieldByName('dt_liberacao_tec').AsString;

    {topografia}
    if qry.FieldByName('id_topografo').AsString<>'0' then edtcodtopografo.Text :=  qry.FieldByName('id_topografo').AsString;
    edtdesctopografo.Text:= qry.FieldByName('nome_topogado').AsString;
    edtenviotopografia.Text := qry.FieldByName('dt_envio_topografia').AsString;
    edtretornotopografia.Text:=qry.FieldByName('dt_chegada_topografia').AsString;

    {Projeto}
    if qry.FieldByName('id_projetista').AsString<>'0' then edtcodprojetista.Text := qry.FieldByName('id_projetista').AsString;
    edtdescprojetista.Text := qry.FieldByName('nome_projetista').AsString;
    edtdtenvioprojeto.Text := qry.FieldByName('dt_envio_projeto').AsString;
    edtdtretornoprojeto.Text := qry.FieldByName('dt_chegada_projeto').AsString;

    {Constrol de Datas e Prazo}
    BuscarConfig;
    sqlstr:='select * from os_cargahoraria_rural where id_projeto ='+qry.FieldByName('id').AsString+' order by id desc limit 1 ';

    //carregar prorrogacao

    if(ConsultaSqlFd(DataModule1.qryprorrogacao,sqlstr))then
    begin
      //inserir prorrogacao
        edtdtprorrogacao.Text:=DataModule1.qryprorrogacao.FieldByName('prorrogacao').AsString;
        {Campo}
         if Trim(edtdtchegada.Text) = '' then
        begin
          if Trim(edtdtliberacaotec.text) <> '' then
            lblprazoservico.Caption := CalculaPrazo(edtdtliberacaotec.text,''
            ,FloatToStr(qryconfigdias.FieldByName('dias_campo').AsFloat+DataModule1.qryprorrogacao.FieldByName('servcampo').AsFloat));
        end
        else
        begin
          if Trim(edtdtliberacaotec.text) <> '' then
            edtdtchegadaExit(Self);
        end;
        {Topografia}
        if Trim(edtretornotopografia.Text) = '' then
        begin
          if Trim(edtenviotopografia.text) <> '' then
             lblprazoservico.Caption := CalculaPrazo(edtenviotopografia.text,''
            ,FloatToStr(StrToInt(edtDiasTopografia.Text)+DataModule1.qryprorrogacao.FieldByName('atualizacaomub').AsFloat));
        end
        else
        begin
          if Trim(edtenviotopografia.text) <> '' then
            edtretornotopografiaExit(Self);
        end;
        {Projeto}
        if Trim(edtdtretornoprojeto.Text) = '' then
        begin
          if Trim(edtdtenvioprojeto.text) <> '' then
            lblprazoprojeto.Caption := CalculaPrazo(edtdtenvioprojeto.text,''
            ,FloatToStr(qryconfigdias.FieldByName('dias_projeto').AsFloat+DataModule1.qryprorrogacao.FieldByName('projeto').AsFloat));
        end
        else
        begin
          if Trim(edtdtenvioprojeto.text) <> '' then
            edtdtretornoprojetoExit(Self);
        end;
    end
    else
    begin{Sem Prorrogacao}
      if(rgAtvPassivo.ItemIndex=0)then
      begin
      {Campo}
      if Trim(edtdtchegada.Text) = '' then
        begin
            if Trim(edtdtliberacaotec.text) <> '' then
              lblprazoservico.Caption := CalculaPrazo(edtdtliberacaotec.text,'',qryconfigdias.FieldByName('dias_campo').AsString);
        end;

        if Trim(edtdtchegada.Text) <> '' then
        begin
            if Trim(edtdtliberacaotec.text) <> '' then
              edtdtchegadaExit(Self);
        end;
        {Topografia}
        if Trim(edtretornotopografia.Text) = '' then
        begin
            if Trim(edtenviotopografia.text) <> '' then
              lblprazomub.Caption := CalculaPrazo(edtenviotopografia.text,'',edtDiasTopografia.Text);
        end;
        if Trim(edtretornotopografia.Text) <> '' then
        begin
            if Trim(edtenviotopografia.text) <> '' then
              edtretornotopografiaExit(Self);
        end;
        {Projeto}
        if Trim(edtdtretornoprojeto.Text) = '' then
        begin
            if Trim(edtdtenvioprojeto.text) <> '' then
              lblprazoprojeto.Caption := CalculaPrazo(edtdtenvioprojeto.text,'',qryconfigdias.FieldByName('dias_projeto').AsString);
        end;

        if Trim(edtdtretornoprojeto.Text) <> '' then
        begin
            if Trim(edtdtenvioprojeto.text) <> '' then
              edtdtretornoprojetoExit(Self);
        end;

      end;
    end;
    {Valores}
      edtqtdposteprojurbano.Text       :=qry.FieldByName('qtd_post_proj_urb').AsString;
      edtqtdposterural.Text            :=qry.FieldByName('qtd_post_proj_rur').AsString;
      edtqtdlevantado.Text             :=qry.FieldByName('qtd_post_lev').AsString;
      //edtqtdposteatualizado.Text       :=qry.FieldByName('qtd_post_atu').AsString;
      edtqtdtopografia.Text            :=qry.FieldByName('qtd_topografia').AsString;
      edtqttravessia.Text              :=qry.FieldByName('qtd_travessia').AsString;
      edtqtincorporacao.Text           :=qry.FieldByName('qtd_incorporacao').AsString;
      //edtqtdimprocedente.Text          :=qry.FieldByName('qtd_improcedente').AsString;
      edtqtddeslocamento.Text          :=qry.FieldByName('qtd_deslocamento').AsString;
      edtqtdoutros.Text                :=qry.FieldByName('qtd_outros').AsString;
      edtqtdlevantamento.Text          :=qry.FieldByName('qtd_levantamento').AsString;

      edtvlposteprojurbano.Text        :=FormatFloat('#####0.00',qry.FieldByName('vl_post_proj_urb').AsFloat);
      edtvlposterural.Text             :=FormatFloat('#####0.00',qry.FieldByName('vl_post_porj_rur').AsFloat);
      edtvllevantado.Text              :=FormatFloat('#####0.00',qry.FieldByName('vl_post_lev').AsFloat);
      //edtvlposteatualizado.Text        :=FormatFloat('#####0.00',qry.FieldByName('vl_post_atu').AsFloat);
      edtvlrtopografia.Text            :=FormatFloat('#####0.00',qry.FieldByName('vl_topografia').AsFloat);
      edtvltravessia.Text              :=FormatFloat('#####0.00',qry.FieldByName('vl_travessia').AsFloat);
      edtvlrincorporacao.Text          :=FormatFloat('#####0.00',qry.FieldByName('vl_incorporacao').AsFloat);
      //edtedvlimprocedente.Text         :=FormatFloat('#####0.00',qry.FieldByName('vl_improcedente').AsFloat);
      edtvldeslocamento.Text           :=FormatFloat('#####0.00',qry.FieldByName('vl_deslocamento').AsFloat);
      edtvloutros.Text                 :=FormatFloat('#####0.00',qry.FieldByName('vl_outros').AsFloat);
      edtvllevantamento.Text           :=FormatFloat('#####0.00',qry.FieldByName('vl_levantamento').AsFloat);
      FIdUsuarioCad                    :=qry.FieldByName('id_func_cad').AsInteger;

      edtdtDevolvida.Text              := qry.FieldByName('dt_devolvida').AsString;

      {Carregar Notas}
      sqlstr :=' select * from os_engenharia_notas_rural where id_os_projeto = '+inttostr(FIdProjeto);
      //carregar tabela de notas
      ConsultaSqlFd(qrynota_rural,sqlstr);
      {Carregar Revisao}
      DataModule1.qryrevisaoos_rural.ParamByName('prcodprojeto').AsInteger :=qry.FieldByName('id').AsInteger;
      DataModule1.qryrevisaoos_rural.Open();

      //pprazo gral
      edtdtchegadageralExit(Self);
      AtualizarGridSolicitante;
  end;

end;

end.
