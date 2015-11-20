unit URelProjetoPorStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, URelPadrao, Vcl.Menus, RDprint,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Samples.Gauges, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,
  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, FireDAC.Comp.Client, System.Math,System.DateUtils,
  System.Win.ComObj, u_conscodmunicipio, uProcessandoNovo,
  JvComponentBase, JvThread,Winapi.ActiveX,System.StrUtils, cxGraphics,
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
  TFrmRelProjEstatus = class(TFrmRelPadrao)
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl2: TLabel;
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
    rgTpPeriodo: TRadioGroup;
    grpClassificacao: TGroupBox;
    cbbclassificacao: TComboBox;
    grpOrdenacao: TGroupBox;
    chkPeriodo: TCheckBox;
    chkStatus: TCheckBox;
    E1: TMenuItem;
    btnExportar: TBitBtn;
    grpmunicipio: TGroupBox;
    lbl8: TLabel;
    edtcodmunicipio: TEdit;
    edtdescmunicipio: TEdit;
    SaveDialog1: TSaveDialog;
    chkPendente: TCheckBox;
    ThreadProcessando: TJvThread;
    grpProtocolo: TGroupBox;
    chkProtocolo: TCheckBox;
    rgContrato: TRadioGroup;
    procedure btnrelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkTodosKeyPress(Sender: TObject; var Key: Char);
    procedure chkTodosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure chkTodosClick(Sender: TObject);
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure btnExportarClick(Sender: TObject);
    procedure ThreadProcessandoExecute(Sender: TObject; Params: Pointer);
   
  private
    { Private declarations }
    procedure InicializaComponente;
    procedure CabecalhoRel;
    procedure CorpoRel;
    procedure RodapeRel;
    procedure verifica66;
    function pegarStatus:string;
    function pegarOrdenacao:string;
    function pegarPeriodo:string;
    procedure ExportacaoExcelGeral;
  public
    { Public declarations }
  end;

var
  FrmRelProjEstatus: TFrmRelProjEstatus;
  _periodo:string;
implementation

{$R *.dfm}

uses DataModule, uFrmCadastrarProjeto, UConsFuncionario;

{ TFrmRelPadrao1 }

procedure TFrmRelProjEstatus.btnExportarClick(Sender: TObject);
begin
  inherited;
  frmProcessandoNovo.Show;
  ThreadProcessando.Execute(nil);
  ThreadProcessando.WaitFor;
  frmProcessandoNovo.Hide;
  frmProcessandoNovo.Close;
end;

procedure TFrmRelProjEstatus.btnrelatorioClick(Sender: TObject);
begin
  inherited;
  CabecalhoRel;
  CorpoRel;
  RodapeRel;
end;

procedure TFrmRelProjEstatus.CabecalhoRel;
var
  qryTemp :TFDQuery;
  qryTemp2 :TFDQuery;
  _tamanho:Integer;
  _status:string;
begin

  if((rgGroup.ItemIndex<>3) and (trim(edtcodtecnico.Text)=''))then
  begin
      Application.MessageBox('Verificar Informa��es de Par�metros !'
        + #13#10 +
        'Levantador/Projetista/Atualizador',
        'Aten��o', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if(Trim(pegarStatus)='')then
  begin
          Application.MessageBox('Verificar Informa��es de Par�metros !'
        + #13#10 +
        'Status',
        'Aten��o', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if Trim(pegarOrdenacao)='' then
  begin
      Application.MessageBox('Verificar Informa��es de Ordena��o !'
        + #13#10 +
        'Status',
        'Aten��o', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if(not DataModule1.qryEMPRESA.Active)then
  begin
    DataModule1.qryEMPRESA.Active := True;
  end;
  sqlstr:=' SELECT '+
          ' os_engenharia_projeto.id as id_os,'+
          ' os_engenharia_projeto.numero_os,'+
          ' os_engenharia_projeto.numero_pvt, '+
          ' os_engenharia_projeto.solicitante,'+
          ' os_engenharia_projeto.id_municipio,'+
          ' municipios.cod_municipio,          '+
          ' municipios.nome_municipio,         '+
          ' os_engenharia_projeto.id_statusos, '+
          ' os_engenharia_status.id,           '+
          ' os_engenharia_status.descricao as desc_status,os_engenharia_projeto.id_tipoos, '+
          ' os_engenharia_tipo.id,os_engenharia_tipo.descricao as tipo_descricao, '+
          ' os_engenharia_projeto.dt_chegada_geral as chegada, os_engenharia_projeto.dt_limite_geral as limite,os_engenharia_projeto.dt_conclusao as conclusao, '+
          ' os_engenharia_projeto.id_tec_campo,os_engenharia_projeto.id_tec_atualizador,os_engenharia_projeto.id_projetista,'+
          ' os_engenharia_projeto.dt_liberacao_tec,os_engenharia_projeto.dt_chegada_tec,os_engenharia_projeto.contrato  ';
         if(rgGroup.ItemIndex<>3)then sqlstr:=sqlstr+', FUN.nome_razaosocial ';
         sqlstr:=sqlstr+ ' FROM                               '+
          ' os_engenharia_projeto              '+
          ' INNER JOIN municipios ON os_engenharia_projeto.id_municipio = municipios.cod_municipio '+
          ' INNER JOIN os_engenharia_status ON os_engenharia_projeto.id_statusos = os_engenharia_status.id '+
          ' INNER JOIN os_engenharia_tipo ON os_engenharia_projeto.id_tipoos = os_engenharia_tipo.id ';
            if(rgGroup.ItemIndex<>3)then
            begin
               case rgGroup.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto.id_tec_campo = fun.id)';
                 end;
               1:begin
                  sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto.id_tec_atualizador = fun.id)';
                  end;
               2:begin
                  sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto.id_projetista = fun.id) ';
                end;
               end;
            end;
      sqlstr:=sqlstr+' where os_engenharia_status.id in('+pegarStatus+') ';
           if cbbclassificacao.ItemIndex<>3 then //classificao Todos
           begin
              sqlstr:=sqlstr+ 'and os_engenharia_projeto.id_tipoos in('+inttostr(Integer(cbbclassificacao.Items.Objects[cbbclassificacao.ItemIndex]))+')'
           end
           else
          sqlstr:=sqlstr+ ' and os_engenharia_projeto.id_tipoos in(1,2,3)';

            //periodos
            case rgTpPeriodo.ItemIndex of
              0:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo:= 'os_engenharia_projeto.dt_chegada_geral';
              end;
              1:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_liberacao_tec';
                end;
               2:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_chegada_tec';
                 end;
               3:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_envio_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_envio_atualizacao';
                end;
               4:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_chegada_atualizacao';
                end;
               5:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_envio_projeto';
                end;
               6:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_chegada_projeto';
                end;
              7:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_conclusao';
                end;
              8:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_devolvido between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_devolvido';
                end;
            end;

            //cidade
            if Trim(edtcodmunicipio.Text)<>'' then//consulta por cidade
            begin
              sqlstr:= sqlstr + ' and os_engenharia_projeto.id_municipio ='+Trim(edtcodmunicipio.text);
            end;

            if(rgGroup.ItemIndex<>3)then
            begin
               case rgGroup.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and( os_engenharia_projeto.id_tec_campo = '+edtcodtecnico.Text+')';
                 end;
               1:begin
                  sqlstr:=sqlstr+' and( os_engenharia_projeto.id_tec_atualizador = '+edtcodtecnico.Text+')';
                  end;
               2:begin
                  sqlstr:=sqlstr+' and( os_engenharia_projeto.id_projetista = '+edtcodtecnico.Text+')';
                end;
               end;
            end;

            //verifcando se e contrato
             //verifcando se e contrato
            case rgContrato.ItemIndex  of
            0:begin
              sqlstr:=sqlstr+' and(os_engenharia_projeto.contrato=0) ';
            end;
            1:begin
              sqlstr:=sqlstr+' and(os_engenharia_projeto.contrato=1) ';
             end;
          end;

         sqlstr:=sqlstr+ ' order by  '+pegarOrdenacao;



  if(not ConsultaSqlFd(DataModule1.qryCRUD,sqlstr))then
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
    rdprnt1.Abrir;
    rdprnt1.impf(01,01,datamodule1.qryEMPRESA.FieldByName('nome_razaosocial').AsString,[negrito]);
    rdprnt1.impf(01,40,'CNPJ: '+datamodule1.qryempresa.Fieldbyname('cnpj').asstring,[comp17,negrito]);
    rdprnt1.impf(01,60,RetornaDataMysqlComHora(),[comp17,negrito]);
    rdprnt1.imp(02,01,_traco137);
    rdprnt1.impf(03,01,'RELAT�RIO DE PROJETOS POR STATUS',[comp17,negrito]);
    rdprnt1.impf(03,40,'CLASSIFICA��O:',[comp17,negrito]);
    rdprnt1.impf(03,55,DataModule1.qryCRUD.FieldByName('tipo_descricao').AsString,[comp17,negrito]);
    if(rgGroup.ItemIndex<>3)then
    begin
          rdprnt1.ImpF(04,01,'Perfil Funcion�rio:',[comp17,negrito]);
          rdprnt1.ImpF(04,40,DataModule1.qryCRUD.FieldByName('nome_razaosocial').AsString,[comp17,negrito]);
    end
    else
    begin
          rdprnt1.ImpF(04,01,'Perfil Funcion�rio:',[comp17,negrito]);
          rdprnt1.ImpF(04,40,'Todos',[comp17,negrito]);
    end;
    rdprnt1.impf(05,01,'DATA INICIAL: '+edtini.text+' - DATA FINAL: '+edtfim.text,[comp17,negrito]);
    rdprnt1.imp(06,01,_traco137);
    rdprnt1.ImpF(07,01,'N�MERO OS',[comp17,negrito]);
    rdprnt1.ImpF(07,20,'NOTA',[comp17,negrito]);
    rdprnt1.impF(07,36,'N. PVT',[comp17,negrito]);
    rdprnt1.ImpF(07,50,'SOLICITANTE',[comp17,negrito]);
    rdprnt1.ImpF(07,80,'MUNICIPIO',[comp17,negrito]);
    rdprnt1.ImpF(07,105,'PRAZO',[comp17,negrito]);
    rdprnt1.ImpF(07,120,'STATUS',[comp17,negrito]);
    rdprnt1.imp(08,01,_traco137);
    Linha:=9;
  end;
end;


procedure TFrmRelProjEstatus.chkTodosClick(Sender: TObject);
var
I:Integer;
begin
  inherited;
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



procedure TFrmRelProjEstatus.chkTodosKeyPress(Sender: TObject;
  var Key: Char);
  var
  i:Integer;
begin
  inherited;
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

procedure TFrmRelProjEstatus.chkTodosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
  i:Integer;
begin
  inherited;
  if(chkTodos.Checked)then
  begin
    for  i:=0 to (ComponentCount - 1) do
    begin
      if(Components[i] is TCustomCheckBox)then
      begin
        (Components[i] as TCheckBox).Checked:=True;
      end;
    end;

  end;
end;



procedure TFrmRelProjEstatus.CorpoRel;
var
  ant_linha:Integer;
  novo_linha,qtdDiasProrrogacao:Integer;
  qryTemp,qryTemp2:TFDQuery;
  nome,cidade,prazo,notas:string;
begin
  qryTemp2:=TFDQuery.Create(nil);
  qryTemp2.Connection:=DataModule1.ConMySql;

  g1.Visible  := true;
  g1.Progress := 0;
  g1.MaxValue := Datamodule1.qryCRUD.RecordCount;
  DataModule1.qryCRUD.First;
  try
      while not DataModule1.qryCRUD.Eof do
  begin
   rdprnt1.ImpF(Linha,01,DataModule1.qryCRUD.FieldByName('numero_os').AsString,[comp20]);

   {***************Carregar Notas********************}
   sqlstr:='SELECT * FROM os_engenharia_notas N WHERE N.id_os_projeto='+DataModule1.qryCRUD.FieldByName('id_os').AsString;
   if(ConsultaSqlFd(DataModule1.query01,sqlstr))then
   DataModule1.query01.First;
   notas:='';
   while not DataModule1.query01.Eof do
   begin
    notas := notas +DataModule1.query01.FieldByName('descricao').AsString;
    DataModule1.query01.Next;
    if not DataModule1.query01.eof then
     notas := notas+'-';
   end;
   rdprnt1.ImpF((Linha),20,notas,[comp20]);
   {****************fim carregar notas*******************}

   DataModule1.query01.Close;
   rdprnt1.ImpF(Linha,36,Copy(DataModule1.qryCRUD.FieldByName('numero_pvt').AsString,1,28),[comp20]);
   rdprnt1.ImpF(Linha,50,Copy(DataModule1.qryCRUD.FieldByName('solicitante').AsString,1,28),[comp20]);
   rdprnt1.ImpF(Linha,80,Copy(dataModule1.qryCRUD.FieldByName('nome_municipio').AsString,1,30),[comp20]);

   {*******************prazo************************}
   //carregando prorrogacao
   sqlstr:='select * from os_cargahoraria where id_projeto ='+DataModule1.qryCRUD.FieldByName('id_os').AsString+' order by id desc limit 1 ';

   if(ConsultaSqlFd(qryTemp2,sqlstr))then
    begin
     if(qryTemp2.FieldByName('prorrogacao').AsDateTime > DataModule1.qryCRUD.FieldByName('limite').AsDateTime)then
      qtdDiasProrrogacao:=DaysBetween(qryTemp2.FieldByName('prorrogacao').AsDateTime,DataModule1.qryCRUD.FieldByName('limite').AsDateTime)
      else
      qtdDiasProrrogacao:=0;
    end;

    qryTemp:=TFDQuery.Create(nil);
    qryTemp.Connection:=DataModule1.ConMySql;
    sqlstr:='select * from os_config where cod_os_tipo='+(DataModule1.qryCRUD.FieldByName('id_tipoos').AsString);
    ConsultaSqlFd(qryTemp,sqlstr);

   if chkProtocolo.Checked then
   begin
     if Trim(qryTemp2.FieldByName('prorrogacao').AsString)='' then
     begin
        if((DateToStr(DataModule1.qryCRUD.FieldByName('dt_liberacao_tec').AsDateTime+qryTemp.FieldByName('dias_campo').AsInteger)<>'') and (DataModule1.qryCRUD.FieldByName('dt_chegada_tec').AsString ='') and (qryTemp2.FieldByName('prorrogacao').AsString=''))then
        begin
                prazo:=frmCadastrarProjeto.CalculaPrazoSemLabel(DataModule1.qryCRUD.FieldByName('dt_liberacao_tec').AsString,'',(qryTemp.FieldByName('dias_campo').AsString));
                //prazo:=Copy(prazo,9,4);
        end
        else if  DataModule1.qryCRUD.FieldByName('dt_chegada_tec').AsString<>'' then
        begin
         prazo:='Dura��o Servi�o';
         prazo:= prazo + IntToStr(DaysBetween(DataModule1.qryCRUD.FieldByName('dt_liberacao_tec').AsDateTime,DataModule1.qryCRUD.FieldByName('dt_chegada_tec').AsDateTime)) +' Dias';
         //prazo:=Copy(prazo,9,4);
        end;
     end
     else if Trim(qryTemp2.FieldByName('prorrogacao').AsString)<>'' then
      begin
        prazo:=frmCadastrarProjeto.CalculaPrazoSemLabel(DataModule1.qryCRUD.FieldByName('dt_liberacao_tec').AsString,'',IntToStr(qryTemp.FieldByName('dias_campo').AsInteger+qryTemp2.FieldByName('servcampo').AsInteger));
      end;
     end
   else
   begin
   if((DataModule1.qryCRUD.FieldByName('limite').AsString<>'') and (DataModule1.qryCRUD.FieldByName('conclusao').AsString ='') and (qryTemp2.FieldByName('prorrogacao').AsString=''))then
      prazo := frmCadastrarProjeto.CalculaPrazoSemLabel(DataModule1.qryCRUD.FieldByName('chegada').AsString,'',qryTemp.FieldByName('dias_geral').AsString)
     else if((DataModule1.qryCRUD.FieldByName('limite').AsString<>'') and (DataModule1.qryCRUD.FieldByName('conclusao').AsString <>'')) then
      prazo := frmCadastrarProjeto.CalculaPrazoSemLabel(DataModule1.qryCRUD.FieldByName('chegada').AsString,DataModule1.qryCRUD.FieldByName('conclusao').AsString,qryTemp.FieldByName('dias_geral').AsString)
     else if((DataModule1.qryCRUD.FieldByName('limite').AsString<>'')  and (qryTemp2.FieldByName('prorrogacao').AsString<>''))then
     prazo := frmCadastrarProjeto.CalculaPrazoSemLabel(DataModule1.qryCRUD.FieldByName('chegada').AsString,'',IntToStr(qryTemp.FieldByName('dias_geral').AsInteger + qtdDiasProrrogacao));
   end;

   //prazo := Copy(prazo,9,3);
   if pos('-',prazo)>0 then
    rdprnt1.ImpF(Linha,105,Trim(prazo),[comp20],clRed)
   else if (strtoint(prazo) < 3) then
    rdprnt1.ImpF(Linha,105,Trim(prazo),[comp20],clPurple)
  else
    rdprnt1.ImpF(Linha,105,Trim(prazo),[comp20],clGreen);

   {*******************fim prazo************************}
  {Status}
   rdprnt1.ImpF(Linha,120,Copy(DataModule1.qryCRUD.FieldByName('desc_status').AsString,1,15),[comp20]);
   {novo valor da linha}

   Inc(Linha);
   verifica66;    //inserir nova pagina
   g1.Progress := g1.Progress+1;
   datamodule1.qryCRUD.next;
  end;
  except on E: Exception do
  begin
    CriarLog(Self,E,'Relatorio');
    ShowMessage(E.Message);
  end;
  end;

end;

procedure TFrmRelProjEstatus.edtcodmunicipioKeyPress(Sender: TObject;
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
      frmconscidade.tag := 6 ;
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

procedure TFrmRelProjEstatus.edtcodtecnicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if(Key=#13)then
  begin
    if(Trim(edtcodtecnico.Text)='')then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=11;
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
        FrmConsFuncionario.Tag :=11;
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

procedure TFrmRelProjEstatus.ExportacaoExcelGeral;
var
  qryTemp :TFDQuery;
  qryTemp2 :TFDQuery;
  _tamanho:Integer;
  _status:string;
  Excel:OleVariant;
  _CaminhoRelatorio:string;

begin
  {$REGION 'validacao'}
  if((rgGroup.ItemIndex<>3) and (trim(edtcodtecnico.Text)=''))then
  begin
      Application.MessageBox('Verificar Informa��es de Par�metros !'
        + #13#10 +
        'Levantador/Projetista/Atualizador',
        'Aten��o', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if(Trim(pegarStatus)='')then
  begin
          Application.MessageBox('Verificar Informa��es de Par�metros !'
        + #13#10 +
        'Status',
        'Aten��o', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if Trim(pegarOrdenacao)='' then
  begin
      Application.MessageBox('Verificar Informa��es de Ordena��o !'
        + #13#10 +
        'Status',
        'Aten��o', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  {$ENDREGION}

  if(not DataModule1.qryEMPRESA.Active)then
  begin
    DataModule1.qryEMPRESA.Active := True;
  end;
  {$REGION 'SQl'}
  sqlstr:=' SELECT '+
          ' os_engenharia_projeto.id as id_os,os_engenharia_projeto.*,'+
          ' os_engenharia_projeto.numero_os,'+
          ' os_engenharia_projeto.numero_pvt,os_engenharia_projeto.endereco,'+
          ' os_engenharia_projeto.solicitante,os_engenharia_projeto.telefone,'+
          ' os_engenharia_projeto.id_municipio,os_engenharia_projeto.dt_chegada_geral,'+
          ' municipios.cod_municipio,os_engenharia_projeto.dt_limite_geral,'+
          ' os_engenharia_projeto.dt_conclusao, '+
          ' municipios.nome_municipio,         '+
          ' os_engenharia_projeto.id_statusos, '+
          ' os_engenharia_status.id,           '+
          ' os_engenharia_status.descricao as desc_status, '+
          ' os_engenharia_tipo.id,os_engenharia_tipo.descricao as tipo_descricao, '+
          ' os_engenharia_projeto.dt_chegada_geral as chegada,'+
          ' os_engenharia_projeto.dt_limite_geral as limite,os_engenharia_projeto.dt_conclusao as conclusao, '+
          ' os_engenharia_projeto.id_tec_campo,os_engenharia_projeto.id_tec_atualizador,'+
          ' os_engenharia_projeto.id_projetista,os_engenharia_crs.id,'+
          ' os_engenharia_crs.descricao as desc_crs,os_engenharia_notas.id,'+
          ' os_engenharia_notas.descricao as nota, '+
          ' f.nome_razaosocial as tec_campo,fu.nome_razaosocial as atualizador,'+
          ' fun.nome_razaosocial as projetista,os_engenharia_projeto.id_tec_campo,'+
          ' os_engenharia_projeto.id_tec_atualizador,os_engenharia_projeto.id_projetista,'+
          ' os_engenharia_projeto.dt_liberacao_tec,os_engenharia_projeto.dt_chegada_tec, '+
          ' os_engenharia_projeto.dt_envio_atualizacao,os_engenharia_projeto.dt_chegada_atualizacao,os_engenharia_projeto.topografo,' +
          ' os_engenharia_projeto.dt_envio_topografia,os_engenharia_projeto.dt_chegada_topografia,os_engenharia_projeto.dt_envio_projeto,'+
          ' os_engenharia_projeto.dt_chegada_projeto,os_engenharia_projeto.dt_devolvido,os_engenharia_projeto.observacao_geral,os_engenharia_projeto.contrato ';
          sqlstr:=sqlstr+ ' FROM '+
          ' os_engenharia_projeto              '+
          ' INNER JOIN municipios ON os_engenharia_projeto.id_municipio = municipios.cod_municipio '+
          ' INNER JOIN os_engenharia_status ON os_engenharia_projeto.id_statusos = os_engenharia_status.id '+
          ' INNER JOIN os_engenharia_tipo ON os_engenharia_projeto.id_tipoos = os_engenharia_tipo.id '+
          ' INNER JOIN os_engenharia_crs ON os_engenharia_crs.id = os_engenharia_projeto.id_crs '+
          ' INNER JOIN os_engenharia_notas ON os_engenharia_notas.id_os_projeto = os_engenharia_projeto.id '+
          ' left join cad_funcionarios f on ( os_engenharia_projeto.id_tec_campo = f.id)' +
          ' left join cad_funcionarios fu on ( os_engenharia_projeto.id_tec_atualizador = fu.id)'+
          ' left join cad_funcionarios fun on ( os_engenharia_projeto.id_projetista = fun.id)';
          sqlstr:=sqlstr+' where os_engenharia_status.id in('+pegarStatus+') ';
           if cbbclassificacao.ItemIndex<>3 then //classificao Todos
           begin
              sqlstr:=sqlstr+ 'and os_engenharia_projeto.id_tipoos in('+inttostr(Integer(cbbclassificacao.Items.Objects[cbbclassificacao.ItemIndex]))+')'
           end
           else
          sqlstr:=sqlstr+ ' and os_engenharia_projeto.id_tipoos in(1,2,3)';

            //periodos
            case rgTpPeriodo.ItemIndex of
              0:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo:= 'os_engenharia_projeto.dt_chegada_geral';
              end;
              1:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_liberacao_tec';
                end;
               2:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_chegada_tec';
                 end;
               3:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_envio_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_envio_atualizacao';
                end;
               4:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_atualizacao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_chegada_atualizacao';
                end;
               5:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_envio_projeto';
                end;
               6:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_chegada_projeto';
                end;
              7:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_conclusao';
                end;
              8:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto.dt_devolvido between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto.dt_devolvido';
                end;
            end;

            //verifcando se e contrato
            case rgContrato.ItemIndex  of
            0:begin
              sqlstr:=sqlstr+' and(os_engenharia_projeto.contrato=0) ';
            end;
            1:begin
              sqlstr:=sqlstr+' and(os_engenharia_projeto.contrato=1) ';
             end;
          end;

         sqlstr:=sqlstr+ ' order by  '+pegarOrdenacao;
         {$ENDREGION}
     //gerar excel
     if(not ConsultaSqlFd(DataModule1.qryCRUD,sqlstr))then
     begin
      SemRegistros;
        Abort;
     end
     else
     begin
      try
        CoInitialize(nil);
        Excel := CreateOleObject('Excel.Application');
        Excel.Visible :=False;
        Excel.Workbooks.Add;

        Excel.WorkBooks[1].Sheets[1].Cells[1,1]:='O.S';
        Excel.WorkBooks[1].Sheets[1].Cells[1,2]:='NOTA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,3]:='PVT';
        Excel.WorkBooks[1].Sheets[1].Cells[1,4]:='SOLICITANTE';
        Excel.WorkBooks[1].Sheets[1].Cells[1,5]:='ENDERE�O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,6]:='TELEFONE';
        Excel.WorkBooks[1].Sheets[1].Cells[1,7]:='MUNICIPIO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,8]:='CRS';
        Excel.WorkBooks[1].Sheets[1].Cells[1,9]:='DATA CHEGADA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,10]:='DATA LIMITE';
        Excel.WorkBooks[1].Sheets[1].Cells[1,11]:='DATA CONCLUS�O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,12]:='CLASSIFICA��O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,13]:='STATUS';
        Excel.WorkBooks[1].Sheets[1].Cells[1,14]:='TEC. CAMPO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,15]:='DT. SAIDA CAMPO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,16]:='DT. CHEGADA CAMPO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,17]:='ATUALIZADOR';
        Excel.WorkBooks[1].Sheets[1].Cells[1,18]:='DT. ENVIO ATUALIZA��O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,19]:='DT. CHEGADA ATUALIZA��O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,20]:='TOPOGRAFO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,21]:='DT. ENVIO TOPOGRAFIA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,22]:='DT. CHEGADA TOPOGRAFIA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,23]:='PROJETISTA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,24]:='DT. ENVIO PROJETISTA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,25]:='DT. CHEGADA PROJETISTA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,26]:='DT. DEVOLVIDA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,27]:='QTD POSTE PROJ. URB';
        Excel.WorkBooks[1].Sheets[1].Cells[1,28]:='QTD POSTE PROJ. RURAL';
        Excel.WorkBooks[1].Sheets[1].Cells[1,29]:='QTD POSTE LEVANTADO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,30]:='QTD POSTE ATUALIZADO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,31]:='TOPOGRAFIA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,32]:='TRAVESSIA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,33]:='INCORPORA��O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,34]:='IMPROCEDENTE';
        Excel.WorkBooks[1].Sheets[1].Cells[1,35]:='DESLOCAMENTO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,36]:='OUTROS';
        Excel.WorkBooks[1].Sheets[1].Cells[1,37]:='VL. POSTE PROJ. URB';
        Excel.WorkBooks[1].Sheets[1].Cells[1,38]:='VL. POSTE PROJ. RURAL';
        Excel.WorkBooks[1].Sheets[1].Cells[1,39]:='VL. POSTE LEVANTADO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,40]:='VL. POSTE ATUALIZADO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,41]:='VL. TOPOGRAFIA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,42]:='VL. TRAVESSIA';
        Excel.WorkBooks[1].Sheets[1].Cells[1,43]:='VL. INCORPORA��O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,44]:='VL. IMPROCEDENTE';
        Excel.WorkBooks[1].Sheets[1].Cells[1,45]:='VL. DESLOCAMENTO';
        Excel.WorkBooks[1].Sheets[1].Cells[1,46]:='VL. OUTROS';
        Excel.WorkBooks[1].Sheets[1].Cells[1,47]:='OBSERVA��O';
        Excel.WorkBooks[1].Sheets[1].Cells[1,48]:='CONTRATO EXTRA';
        g1.Visible := False;
        g1.MaxValue:= DataModule1.qryCRUD.RecordCount;
        g1.Progress:=0;
        Linha:=2;
        DataModule1.qryCRUD.First;
        while(not DataModule1.qryCRUD.Eof)do
        begin
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=Trim(DataModule1.qryCRUD.FieldByName('numero_os').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=DataModule1.qryCRUD.FieldByName('nota').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=DataModule1.qryCRUD.FieldByName('numero_pvt').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=DataModule1.qryCRUD.FieldByName('solicitante').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=DataModule1.qryCRUD.FieldByName('endereco').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=DataModule1.qryCRUD.FieldByName('telefone').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=DataModule1.qryCRUD.FieldByName('nome_municipio').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:=DataModule1.qryCRUD.FieldByName('desc_crs').AsString;
          if (DataModule1.qryCRUD.FieldByName('dt_chegada_geral').AsString)<>''then Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:= DataModule1.qryCRUD.FieldByName('dt_chegada_geral').AsDateTime;
          if trim(DataModule1.qryCRUD.FieldByName('dt_limite_geral').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:= DataModule1.qryCRUD.FieldByName('dt_limite_geral').AsDateTime;
          if trim(DataModule1.qryCRUD.FieldByName('dt_conclusao').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:= DataModule1.qryCRUD.FieldByName('dt_conclusao').AsDateTime;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:=DataModule1.qryCRUD.FieldByName('tipo_descricao').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:=DataModule1.qryCRUD.FieldByName('desc_status').AsString;
          //campo
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:=DataModule1.qryCRUD.FieldByName('tec_campo').AsString;
          if trim(DataModule1.qryCRUD.FieldByName('dt_liberacao_tec').AsString)<>''then Excel.WorkBooks[1].Sheets[1].Cells[Linha,15]:=DataModule1.qryCRUD.FieldByName('dt_liberacao_tec').AsDateTime;
          if trim(DataModule1.qryCRUD.FieldByName('dt_chegada_tec').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,16]:=DataModule1.qryCRUD.FieldByName('dt_chegada_tec').AsDateTime;
          //atualizacao
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,17]:=DataModule1.qryCRUD.FieldByName('atualizador').AsString;
          if trim(DataModule1.qryCRUD.FieldByName('dt_envio_atualizacao').AsString)<>''then Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:=DataModule1.qryCRUD.FieldByName('dt_envio_atualizacao').AsDateTime;
          if trim(DataModule1.qryCRUD.FieldByName('dt_chegada_atualizacao').AsString)<>''then Excel.WorkBooks[1].Sheets[1].Cells[Linha,19]:=DataModule1.qryCRUD.FieldByName('dt_chegada_atualizacao').AsDateTime;
          //topografia
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,20]:=DataModule1.qryCRUD.FieldByName('topografo').AsString;
          if trim(DataModule1.qryCRUD.FieldByName('dt_envio_topografia').AsString)<>''then Excel.WorkBooks[1].Sheets[1].Cells[Linha,21]:= DataModule1.qryCRUD.FieldByName('dt_envio_topografia').AsDateTime;
          if trim(DataModule1.qryCRUD.FieldByName('dt_chegada_topografia').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,22]:=(DataModule1.qryCRUD.FieldByName('dt_chegada_topografia').AsDateTime);
          //projeto
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,23]:=DataModule1.qryCRUD.FieldByName('projetista').AsString;
          if trim(DataModule1.qryCRUD.FieldByName('dt_envio_projeto').AsString)<>''then Excel.WorkBooks[1].Sheets[1].Cells[Linha,24]:= DataModule1.qryCRUD.FieldByName('dt_envio_projeto').AsDateTime;
          if Trim(DataModule1.qryCRUD.FieldByName('dt_chegada_projeto').AsString)<>'' then  Excel.WorkBooks[1].Sheets[1].Cells[Linha,25]:=DataModule1.qryCRUD.FieldByName('dt_chegada_projeto').AsDateTime;

          if Trim(DataModule1.qryCRUD.FieldByName('dt_devolvido').AsString)<>'' then  Excel.WorkBooks[1].Sheets[1].Cells[Linha,26]:=DataModule1.qryCRUD.FieldByName('dt_devolvido').AsDateTime;
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,27]:=DataModule1.qryCRUD.FieldByName('qtd_post_proj_urb').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,28]:=DataModule1.qryCRUD.FieldByName('qtd_post_proj_rur').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,29]:=DataModule1.qryCRUD.FieldByName('qtd_post_lev').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,30]:=DataModule1.qryCRUD.FieldByName('qtd_post_atu').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,31]:=DataModule1.qryCRUD.FieldByName('qtd_topografia').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,32]:=DataModule1.qryCRUD.FieldByName('qtd_travessia').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,33]:=DataModule1.qryCRUD.FieldByName('qtd_incorporacao').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,34]:=DataModule1.qryCRUD.FieldByName('qtd_improcedente').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,35]:=DataModule1.qryCRUD.FieldByName('qtd_deslocamento').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,36]:=DataModule1.qryCRUD.FieldByName('qtd_outros').AsString;

          //valores
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,37]:=DataModule1.qryCRUD.FieldByName('vl_post_proj_urb').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,38]:=DataModule1.qryCRUD.FieldByName('vl_post_porj_rur').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,39]:=DataModule1.qryCRUD.FieldByName('vl_post_lev').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,40]:=DataModule1.qryCRUD.FieldByName('vl_post_atu').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,41]:=DataModule1.qryCRUD.FieldByName('vl_topografia').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,42]:=DataModule1.qryCRUD.FieldByName('vl_travessia').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,43]:=DataModule1.qryCRUD.FieldByName('vl_incorporacao').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,44]:=DataModule1.qryCRUD.FieldByName('vl_improcedente').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,45]:=DataModule1.qryCRUD.FieldByName('vl_deslocamento').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,46]:=DataModule1.qryCRUD.FieldByName('vl_outros').AsFloat;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,47]:=DataModule1.qryCRUD.FieldByName('observacao_geral').AsString;
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,48]:=IfThen((DataModule1.qryCRUD.FieldByName('contrato').AsInteger<>0),'SIM','N�O');
          DataModule1.qryCRUD.Next;
          g1.Progress:=g1.Progress+1;
          Inc(Linha);
        end;


        SaveDialog1.Title:=  'Relat�rio Medi��es';
        //FdgLocal.Title    :='Defina o local de salvamento do arquivo';
       // if(FdgLocal.Execute)then
       // begin
          if(SaveDialog1.Execute)then
          begin
            _CaminhoRelatorio:=SaveDialog1.FileName;
            Excel.WorkBooks[1].SaveAs(_CaminhoRelatorio+'.xls');
            Excel.WorkBooks[1].Close;
            Application.MessageBox(PChar('Arquivo criado com sucesso!!!' + #13 + _CaminhoRelatorio+'.xls'), PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          end;
      //  end;
        g1.Visible := True;
        g1.Progress:=0;
      except on E: Exception do
      begin
        Application.MessageBox('O Sistema Se Comportou de Maneira Inesperada !',
          'Aten��o', MB_OK + MB_ICONWARNING);
          CriarLog(Self,E,'Rel Urbano Exportacao'+DataModule1.qryCRUD.FieldByName('numero_os').AsString);
      end;

      end;

     end;

end;

procedure TFrmRelProjEstatus.FormShow(Sender: TObject);
begin
  inherited;
  InicializaComponente;
end;

procedure TFrmRelProjEstatus.InicializaComponente;
begin
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
  edtini.Text := funcRetornaPrimeiroDiaMes;
  edtfim.Text := funcRetornaUltimoDiaMes;

end;

function TFrmRelProjEstatus.pegarOrdenacao: string;
begin
  if (chkStatus.Checked) then
  begin
    Result := ' os_engenharia_status.descricao ';
  end;
  if(chkPeriodo.Checked) then
  begin
    if (Result='')then Result := pegarPeriodo else Result := Result+',' +pegarPeriodo ;
  end;
{  if chkStatus.Checked and chkPeriodo.Checked then
  begin
    Result:= os_engenharia_status.descricao
  end;
 }

end;

function TFrmRelProjEstatus.pegarPeriodo: string;
begin
  //periodos
            case rgTpPeriodo.ItemIndex of
              0:begin
                Result:=  'os_engenharia_projeto.dt_chegada_geral';
              end;
              1:begin
                Result:= 'os_engenharia_projeto.dt_liberacao_tec';
                end;
               2:begin
                 Result:='os_engenharia_projeto.dt_chegada_tec';
                 end;
               3:begin
                Result:= 'os_engenharia_projeto.dt_envio_atualizacao';
                end;
               4:begin
                Result:= 'os_engenharia_projeto.dt_chegada_atualizacao';
                end;
               5:begin
                Result:='os_engenharia_projeto.dt_envio_projeto';
                end;
               6:begin
                Result:='os_engenharia_projeto.dt_chegada_projeto';
                end;
              7:begin
                Result:='os_engenharia_projeto.dt_conclusao';
                end;
               8:begin
                 Result:='os_engenharia_projeto. dt_devolvido';
               end;
            end;
end;

function TFrmRelProjEstatus.pegarStatus: string;
begin
//
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

procedure TFrmRelProjEstatus.RodapeRel;
begin
  rdprnt1.impf(linha,01,_traco137,[comp17]);
  Inc(linha);
  rdprnt1.impf(linha,01,'Total de Projetos',[comp17]);
  rdprnt1.impf(linha,75,inttostr(datamodule1.qryCRUD.RecordCount),[comp17]);
  rdprnt1.Fechar;
  g1.Progress := 0;
end;

procedure TFrmRelProjEstatus.ThreadProcessandoExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  ExportacaoExcelGeral;
end;

procedure TFrmRelProjEstatus.verifica66;
begin
  begin
  if linha >= 62 then
  begin
    rdprnt1.novapagina;
    linha:=2;
  end;
end;
end;

end.