unit DataModule;

interface

uses



Windows,SysUtils, Graphics, Forms, Dialogs,
  Db, ADODB,winsock,Stdctrls,Mask,dbctrls,variants,ShellAPI,Registry,
  IniFiles,Buttons, jpeg,
  DateUtils,WinInet, ImgList, AppEvnts,dbgrids,Urlmon,
  IdBaseComponent, IdComponent, IdIPWatch,cxCalendar,xmldom, XMLIntf, msxmldom, XMLDoc, cxDropDownEdit,
  Printers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,tlhelp32,
  System.Classes,Vcl.ExtCtrls,Winapi.Messages, Vcl.Controls,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Phys.MySQLDef,
  FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, FireDAC.Moni.FlatFile,
  FireDAC.Moni.Custom;

type
  TDataModule1 = class(TDataModule)
    qryCRUD: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Qry20: TFDQuery;
    comand: TFDCommand;
    ConMySql: TFDConnection;
    query01: TFDQuery;
    dsquery01: TDataSource;
    qryCRS: TFDQuery;
    qryCRSid: TFDAutoIncField;
    adotbCRSdescricao: TStringField;
    qryrevisaoos: TFDQuery;
    qrynotas: TFDQuery;
    ApplicationEvents1: TApplicationEvents;
    ilImagPopup: TImageList;
    qrydatahora: TFDQuery;
    qryusuario: TFDQuery;
    qryvaloresprojeto: TFDQuery;
    qryprorrogacao: TFDQuery;
    qryEMPRESA: TFDQuery;
    qryrevisaoos_rural: TFDQuery;
    FDTransaction1: TFDTransaction;
    idpwtch1: TIdIPWatch;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure ConMySqlAfterConnect(Sender: TObject);
  private
    { Private declarations }
    procedure Conexao;
  public
    { Public declarations }
    procedure OrdenarDbGrid(_grid : TFDQuery;_coluna:String);
  end;
    function ConsultaSqlFd(var Qry: TFDQuery; CmdSQL: string): Boolean;
    procedure SemRegistros;
    procedure OrdenarDbGrid(_grid : TFDQuery;_coluna:String);
    function Obrigatorio(pForm: TForm; pComp: TComponent; pMsg: string): Boolean;
    procedure CalcularValoresProjeto(pTag:Integer);
    function FormataDataMysql(_datahora:string):string;
    function RetornaDataMysqlSemHora():String;
    function RetornaDataMysqlComHora():string;
    function SenhaPadrao(senha,operacao : string):Boolean; //gera uma senha padrao do sistema
    function SoNumero(fField : String): String;
    function Crypt(Action, Src, Key : String) : String;
    procedure VerificaMsg;
    procedure CriarTabelas;
    procedure InserirDados;
    procedure AlterarTabelas;
    procedure FormataCampoFone(Campo: TMaskEdit; Tp : Integer);
    function ValidaNumeroFone(Frm: TForm; Componente: TComponent):Boolean;
    function TestaCpf(xCPF:string):Boolean;
    function funcRetornaUltimoDiaMes:string;
    function funcRetornaPrimeiroDiaMes:string;
    procedure AtualizarGridCrs(pForm:TForm);
    function funcRetornaPrimeiroDiaMesParametro(_data : string): string; //ir� retornar o primeiro dia do m�s de uma data
    function funcRetornaUltimoDiaMesParametro(_data : string): string;   //ir� retornar o �ltimo dia do m�s de uma data
    function TrocaPonto(valor : string) : string;
    procedure CriarLog(Sender: TObject;E: Exception;Acao:string);
    function NomeComputador : String;
    procedure InsereDedoDuro(codvendedor,nomevendedor,operacao:string;Id:integer);
    procedure InsereDedoDuroRural(codvendedor,nomevendedor,operacao:string;Id:integer);
    Function Datafinal(dataini:tdatetime; dias_uteis:integer):tDateTime;
    function VerificarAcessoInternet: Boolean;
    function ValidarDataMenorAno(dataStr:string):Boolean;
    function ValidarDataHoje(dataStr:string):Boolean;
    Function SerialNum(FDrive:String) :String;
    function formatadatahoramysql(_datahora:string):string;
    procedure CadastraNovoMicro(_VolumeHd :string);
    procedure OrdenarDbGridFD(_grid : TFDQuery;_coluna:String);
    function ValidarDataRetorno(dtini:TcxDateEdit;dtfim:TcxDateEdit):Boolean;
    function ValidarDataMenor(dtini:TcxDateEdit;dtfim:TcxDateEdit):Boolean;
var
  DataModule1: TDataModule1;
  _corZebra:TColor;
  logado : Boolean;
  Servidor,NomeBanco,PortaServidor,UsuarioBD,SenhaBD : String;
  Linha,conta:Integer;
  _desativaCorFoco:Boolean;
  sqlstr:string;
  _retorno,_RetornoSenha  : boolean;
  _QtdMicrosContratados:Integer;
  _QtdMicrosLiberados : Integer;
  _liberaacesso       :boolean;

  const _traco137 = '-----------------------------------------------------------------------------------------------------------------------------------------';
  const _traco80  = '--------------------------------------------------------------------------------';

implementation

uses uConfigBd, uFrmCadastrarProjeto, uFrmCadastrarProjetoRural;
{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}
const
  _corFoco : TColor = clMoneyGreen;//$006ADAFF;

{ TDataModule1 }
procedure TDataModule1.Conexao;
begin
  logado := false; // validar o acesso

  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  DataModule1.ConMySql.Connected := False;


  //NOVO PADR�O DO INSTALADOR DO SISTEMA
  with TIniFile.Create(ExtractFilePath(Application.ExeName)+'db.ini') do
  try
    Servidor      :=  ReadString('BANCO','Servidor','servidor');
    NomeBanco     :=  ReadString('BANCO','NomeBanco','supoc');
    PortaServidor :=  ReadString('BANCO','Porta','3306');
    if not FileExists(ExtractFilePath(Application.ExeName)+'db.ini') then
    begin
      WriteString('BANCO','Servidor',Servidor);
      WriteString('BANCO','NomeBanco',NomeBanco);
      WriteString('BANCO','Porta',PortaServidor);
    end;
  finally
    free;
  end;

  //Conex�o Firedac - Diogenes 04/02/2015
  DataModule1.ConMySql.ConnectionString := 'DriverID="MySQL";Server=' + Trim(Servidor) + ';Port=' + Trim(PortaServidor) + ';Database=' + Trim(NomeBanco) +
  ';User_name=root;Password=root';

  try
    DataModule1.ConMySql.Connected := True; //Conex�o Firedac - F.T 22/01/2015
//    datamodule1.qryconfig.Active   := True;
//    datamodule1.qryempresa.Active  := True;
//    LerConfig();
  except
    DataModule1.ConMySql.Connected := False; //Conex�o Firedac - F.T 22/01/2015

    Application.MessageBox(''+#13+#10+'Aten��o: Servidor N�o Encontrado.',PChar(Application.Title), MB_OK + MB_ICONERROR);

    frmconfigdb:= Tfrmconfigdb.Create(nil);
    frmconfigdb.showmodal;
    frmconfigdb.Free;

    if (Trim(Servidor) = '') or (Trim(NomeBanco) = '')  then ExitProcess(0);

    //Conex�o Firedac - F.T 22/01/2015
    DataModule1.ConMySql.ConnectionString := 'DriverID="MySQL";Server=' + Trim(Servidor) + ';Port=' + Trim(PortaServidor) + ';Database=' + Trim(NomeBanco) +
    ';User_name=root;Password=root';

    try
      DataModule1.ConMySql.Connected := True; //Conex�o Firedac - F.T 22/01/2015
//      DataModule1.qryconfig.Active   := True;
//      DataModule1.qryempresa.Active  := True;

      //Adicionado para ser alterado junto com as configura��es do parametros evitando ter que sair e entra no sistema - F.T 11/11/2014 09h30m

    except
      MessageDlg(''+#13+#10+'Aten��o: Servidor N�o Encontrado.', mtError, [mbOK], 0);
      //FechaForm();
      Application.Terminate;
    End;
  End;
end;
procedure TDataModule1.ConMySqlAfterConnect(Sender: TObject);
begin
  ConMySql.ConnectionIntf.Tracing := True;
end;

procedure TDataModule1.OrdenarDbGrid(_grid : TFDQuery;_coluna:String);
begin
  if not _grid.IsEmpty then
  begin
   { if (_grid.Sort<>_coluna+' ASC') then
      _grid.Sort:=_coluna+' ASC'
    else
      _grid.sort:=_coluna+' DESC'; }
  end;
end;


function SoNumero(fField : String): String;
var
  I : Byte;
begin
  Result := '';
  for I := 1 To Length(fField) do
     if fField [I] In ['0'..'9'] Then
       Result := Result + fField [I];
end;


procedure VerificaMsg;
begin
 //_grupo                :=  '00';
 { sqlstr := ''+
  'select perfil from uccaduser where login='+_codusuariologinG;
  if ConsultaSqlFd(datamodule1.qry,sqlstr) = 0 then
    _grupo := datamodule1.qry.FieldByName('perfil').AsString;

  strSql := 'select * from uccadperm where ((iduser = '+_codusuariologinG+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('LiberarConvenioAutomaticamente');
  if ConsultaSqlFd(datamodule1.querychat,strSql) = 0 then
    mensagem := True
  else
    mensagem := True;}
end;

procedure CriarTabelas;
begin

  try
   try
    WITH DataModule1.comand  DO
    begin
      CommandText.Text:=' CREATE TABLE  IF NOT EXISTS  os_engenharia_acesso  ( '+
                   ' id  int(11) NOT NULL AUTO_INCREMENT, '+
                   '    serv_camp  smallint(1) DEFAULT 0, '+
                   '   serv_proj  smallint(1) DEFAULT 0, '+
                   '    serv_edt_vl  smallint(1) DEFAULT 0, '+
                   '    serv_atu  smallint(1) DEFAULT 0, '+
                   '    serv_vl  smallint(1) DEFAULT 0, '+
                   '    serv_ace  smallint(1) DEFAULT 0, '+
                   '    cod_usuario  int(11) DEFAULT 0,  '+
                   '  PRIMARY KEY ( id )) ';
       Execute();
       CommandText.Clear;
       CommandText.Text:=' CREATE TABLE IF NOT EXISTS  os_engenharia_crs  ( '+
                         ' id  int(11) NOT NULL AUTO_INCREMENT, '+
                         ' descricao  varchar(50) DEFAULT NULL ,  PRIMARY KEY ( id )) ';
      Execute();
      CommandText.Clear;

      CommandText.Text:=  ' CREATE TABLE IF NOT EXISTS os_engenharia_notas ( '+
                          ' id int(11) NOT NULL AUTO_INCREMENT, '+
                          ' descricao varchar(20) DEFAULT NULL ,'+
                          ' id_os_projeto int(11) DEFAULT NULL ,PRIMARY KEY (id)) ';
      Execute();
      CommandText.Clear;

      CommandText.Text:=' CREATE TABLE if not exists os_engenharia_projeto  ( '+
                        ' id  int(11) NOT NULL AUTO_INCREMENT, '+
                        ' numero_os  varchar(25) DEFAULT NULL, '+
                        ' doc_celtins  smallint(1) DEFAULT NULL,'+
                        ' numero_pvt  varchar(25) DEFAULT NULL, '+
                        ' solicitante  varchar(70) DEFAULT NULL, '+
                        ' endereco  varchar(70) DEFAULT NULL,    '+
                        ' telefone  varchar(25) DEFAULT NULL,    '+
                        ' id_municipio  int(11) DEFAULT NULL ,   '+
                        ' id_crs  int(11) DEFAULT NULL ,         '+
                        ' dt_limite_geral  date DEFAULT NULL,    '+
                        ' dt_chegada_geral  date DEFAULT NULL,   '+
                        ' id_tipoos  int(11) DEFAULT NULL ,      '+
                        ' id_statusos  int(11) DEFAULT NULL ,    '+
                        ' observacao_geral  longtext,             '+
                        ' caminho_arquivo  varchar(255) DEFAULT NULL, '+
                        ' id_tec_campo  int(11) DEFAULT NULL ,    '+
                        ' dt_liberacao_tec  date DEFAULT NULL,    '+
                        ' dt_chegada_tec  date DEFAULT NULL,      '+
                        ' id_projetista  int(11) DEFAULT NULL ,   '+
                        ' dt_envio_projeto  date DEFAULT NULL,    '+
                        ' dt_chegada_projeto  date DEFAULT NULL,  '+
                        ' dt_envio_atualizacao  date DEFAULT NULL, '+
                        ' dt_chegada_atualizacao  date DEFAULT NULL,'+
                        ' id_tec_atualizador  int(11) DEFAULT NULL ,'+
                        ' dt_novo_prazo  date DEFAULT NULL,         '+
                        ' vl_post_proj_urb  float(16,2) DEFAULT NULL, '+
                        ' vl_post_porj_rur  float(16,2) DEFAULT NULL,  '+
                        ' vl_post_lev  float(16,2) DEFAULT NULL,       '+
                        ' vl_post_atu  float(16,2) DEFAULT NULL,       '+
                        ' vl_topografia  float(16,2) DEFAULT NULL,     '+
                        ' vl_travessia  float(16,2) DEFAULT NULL,      '+
                        ' vl_incorporacao  float(16,2) DEFAULT NULL,   '+
                        ' vl_improcedente  float(16,2) DEFAULT NULL,   '+
                        ' vl_deslocamento  float(16,2) DEFAULT NULL,   '+
                        ' vl_outros  float(16,2) DEFAULT NULL,         '+
                        ' qtd_post_proj_urb  int(11) DEFAULT NULL,     '+
                        ' qtd_post_proj_rur  int(11) DEFAULT NULL,     '+
                        ' qtd_post_lev  int(11) DEFAULT NULL,          '+
                        ' qtd_post_atu  int(11) DEFAULT NULL,          '+
                        ' qtd_topografia  int(11) DEFAULT NULL,        '+
                        ' qtd_travessia  int(11) DEFAULT NULL,         '+
                        ' qtd_incorporacao  int(11) DEFAULT NULL,      '+
                        ' qtd_improcedente  int(11) DEFAULT NULL,       '+
                        ' qtd_deslocamento  int(11) DEFAULT NULL,       '+
                        ' qtd_outros  int(11) DEFAULT NULL,             '+
                        ' improcedente  smallint(1) DEFAULT 1,          '+
                        ' id_func_cad  int(11) DEFAULT 0,               '+
                        ' dt_conclusao date DEFAULT NULL,               '+
                        ' topografo  varchar(50) DEFAULT NULL ,'+
                        ' dt_envio_topografia  datetime  DEFAULT NULL ,'+
                        ' dt_chegada_topografia  datetime  DEFAULT NULL ,'+
                        ' PRIMARY KEY ( id ))                           ';
           Execute();
           CommandText.Clear;
           CommandText.Text:= 'CREATE TABLE if not exists os_engenharia_revisao ( '+
                             ' id int(11) NOT NULL AUTO_INCREMENT,'+
                             ' cod_projetista int(11) DEFAULT NULL ,'+
                             ' dt_inicio datetime DEFAULT NULL, ' +
                             ' dt_fim datetime DEFAULT NULL,    '+
                             ' id_projeto int(11) DEFAULT NULL ,PRIMARY KEY (`id`))';
          Execute();
          CommandText.Clear;

          CommandText.Text:='  CREATE TABLE IF NOT EXISTS os_engenharia_status ('+
                            'id int(11) NOT NULL AUTO_INCREMENT, '+
                            ' descricao varchar(50) DEFAULT NULL,'+
                            ' PRIMARY KEY (id))';
        Execute();
        CommandText.Clear;
        CommandText.Text:=  'CREATE TABLE IF NOT EXISTS os_engenharia_tipo ( '+
                            'id int(11) NOT NULL AUTO_INCREMENT,'+
                            'descricao varchar(50) DEFAULT NULL, '+
                            ' PRIMARY KEY (id)) ';
        Execute();
        CommandText.Clear;

        CommandText.Text:= ' CREATE TABLE IF NOT EXISTS os_config ( '+
                           ' id int(11) NOT NULL AUTO_INCREMENT,'+
                           ' dias_geral int(11) DEFAULT 0,     '+
                           ' dias_campo int(11) DEFAULT 0,     '+
                           ' dias_projeto int(11) DEFAULT 0,   '+
                           ' dias_mub int(11) DEFAULT 0,       '+
                           ' cod_os_tipo int(11) DEFAULT NULL, '+
                           ' PRIMARY KEY (id)  )                ';
       Execute();
       CommandText.Clear;

       CommandText.Text := 'CREATE TABLE IF NOT EXISTS os_engenharia_valoresprojeto ( '+
                            ' id int(11) NOT NULL AUTO_INCREMENT,                     '+
                            ' posteprojetadourbano double(16,2) DEFAULT 0.00 ,        '+
                            ' posteprojetadorural double(16,2) DEFAULT 0.00,        '+
                            ' postelevantado double(16,2) DEFAULT 0.00,'+
                            ' posteatualizado double(16,2) DEFAULT 0.00, '+
                            ' topografia double(16,2) DEFAULT 0.00,       '+
                            ' travessia double(16,2) DEFAULT 0.00,        '+
                            ' incorporacao double(16,2) DEFAULT 0.00,     '+
                            ' improcedente double(16,2) DEFAULT 0.00,'+
                            ' deslocamento double(16,2) DEFAULT 0.00,'+
                            ' outros double(16,2) DEFAULT 0.00 ,'+
                            ' PRIMARY KEY (id)) ';

       Execute();
       CommandText.Clear;

       CommandText.Text:=' CREATE TABLE IF NOT EXISTS os_cargahoraria ('+
                         ' id int(11) NOT NULL AUTO_INCREMENT,         '+
                         ' prorrogacao date DEFAULT NULL,              '+
                         ' servcampo double(16,2) DEFAULT 0.00,       '+
                         ' atualizacaomub double(16,2) DEFAULT 0.00,  '+
                         ' projeto double(16,2) DEFAULT 0.00,         '+
                         ' datainclusao date DEFAULT NULL,            '+
                         ' id_projeto int(11) DEFAULT 0,              '+
                         ' PRIMARY KEY (id))                          ';
       Execute();

       CommandText.Clear;
       CommandText.Text:='CREATE TABLE if not exists os_engenharia_revisao_servicocampo ('+
                         ' id  int(11) NOT NULL AUTO_INCREMENT ,'+
                         ' dt_inicio  datetime NULL DEFAULT NULL ,'+
                         ' dt_fim  datetime NULL DEFAULT NULL ,'+
                         ' id_tecnico  int(11) NULL DEFAULT NULL ,id_projeto int (11),'+
                         ' PRIMARY KEY (id))';
      Execute() ;

      CommandText.Clear;
      CommandText.Text :='CREATE TABLE if not exists os_engenharia_revisao_topografia (  '+
                         ' id  int(11) NOT NULL AUTO_INCREMENT ,'+
                         ' dt_inicio  datetime NULL DEFAULT NULL ,'+
                         ' dt_fim  datetime NULL DEFAULT NULL , '+
                         ' id_projeto  int(11) NULL DEFAULT NULL ,'+
                         ' topografo  varchar(50)  DEFAULT NULL , '+
                         ' PRIMARY KEY (id))';
      Execute();

      CommandText.Clear;
      CommandText.Text:=' CREATE TABLE if not exists os_engenharia_revisao_atualizacao (  '+
                        ' id  integer  NOT NULL AUTO_INCREMENT,    '+
                        ' dt_inicio  datetime NULL ,'+
                        ' dt_fim  datetime NULL ,'+
                        ' cod_atualizador  integer NULL ,'+
                        ' id_projeto  integer NULL ,'+
                        ' PRIMARY KEY (id))';
      Execute();


                         {*************TABELAS RURAL***************}

      CommandText.Clear;
      CommandText.Text:='CREATE TABLE if not exists os_engenharia_projeto_rural  ( '+
                        ' id int(11) NOT NULL AUTO_INCREMENT,'+
                        '  numero_os varchar(25) DEFAULT NULL,'+
                        '  doc_celtins_passagem smallint(1) DEFAULT 0,'+
                        '  doc_celtins_terra smallint(1) DEFAULT 0,'+
                        '  doc_celtins_rural smallint(1) DEFAULT 0,'+
                        '  doc_celtins_pessoais smallint(1) DEFAULT 0,'+
                        '  solicitante varchar(70) DEFAULT NULL,'+
                        '  solicitanteatendido varchar(70) DEFAULT NULL,'+
                        '  cpf varchar(15) DEFAULT NULL,'+
                        '  endereco varchar(70) DEFAULT NULL,'+
                        '  enderecorural varchar(70) DEFAULT NULL, '+
                        '  caminho_arquivo  varchar(255) DEFAULT NULL, '+
                        '  telefone varchar(25) DEFAULT NULL,'+
                        '  id_municipio int(11) DEFAULT NULL ,'+
                        '  id_crs int(11) DEFAULT NULL ,'+
                        '  dt_limite_geral  date DEFAULT NULL,    '+
                        '  universalizacao varchar(10) DEFAULT NULL,'+
                        '  dt_chegada_geral date DEFAULT NULL,'+
                        '  dt_soicitacao_topografia  date DEFAULT NULL,'+
                        '  dt_devolvida  date DEFAULT NULL,'+
                        '  id_statusos int(11) DEFAULT NULL ,'+
                        '  observacao_geral longtext,'+
                        '  id_tec_campo int(11) DEFAULT NULL ,'+
                        '  dt_liberacao_tec date DEFAULT NULL,  '+
                        '  dt_chegada_tec date DEFAULT NULL,    '+
                        '  id_projetista int(11) DEFAULT NULL ,'+
                        '  dt_envio_projeto date DEFAULT NULL,  '+
                        '  dt_chegada_projeto date DEFAULT NULL, '+
                        '  dt_envio_topografia date DEFAULT NULL, '+
                        '  dt_chegada_topografia date DEFAULT NULL, '+
                        '  id_topografo int(11) DEFAULT NULL ,'+
                        '  vl_post_proj_urb float(16,2) DEFAULT NULL,'+
                        '  vl_post_porj_rur float(16,2) DEFAULT NULL, '+
                        '  vl_post_lev float(16,2) DEFAULT NULL,     '+
                        '  vl_post_atu float(16,2) DEFAULT NULL,      '+
                        '  vl_topografia float(16,2) DEFAULT NULL,     '+
                        '  vl_travessia float(16,2) DEFAULT NULL,       '+
                        '  vl_incorporacao float(16,2) DEFAULT NULL,    '+
                        '  vl_improcedente float(16,2) DEFAULT NULL,    '+
                        '  vl_deslocamento float(16,2) DEFAULT NULL,    '+
                        '  vl_outros float(16,2) DEFAULT NULL,          '+
                        '  qtd_post_proj_urb int(11) DEFAULT NULL,       '+
                        '  qtd_post_proj_rur int(11) DEFAULT NULL,'+
                        '  qtd_post_lev int(11) DEFAULT NULL,      '+
                        '  qtd_post_atu int(11) DEFAULT NULL,      '+
                        '  qtd_topografia int(11) DEFAULT NULL,     '+
                        '  qtd_travessia int(11) DEFAULT NULL,      '+
                        '  qtd_incorporacao int(11) DEFAULT NULL,   '+
                        '  qtd_improcedente int(11) DEFAULT NULL,   '+
                        '  qtd_deslocamento int(11) DEFAULT NULL,    '+
                        '  qtd_outros int(11) DEFAULT NULL,          '+
                        '  id_func_cad int(11) DEFAULT 0,         '+
                        '  dt_conclusao date DEFAULT NULL,'+
                        '  improcedente  smallint(1) DEFAULT 1,     '+
                        '  dias_topografia int(11) DEFAULT NULL,    '+
                        '  ativo_passivo smallint(1) default 0,'+
                        '   PRIMARY KEY ( id ))             ';

         Execute();

         CommandText.Clear;
         CommandText.Text:=' CREATE TABLE IF NOT EXISTS os_engenharia_status_rural ('+
                           ' Id int(11) NOT NULL AUTO_INCREMENT,      '+
                           ' descricao varchar(50) DEFAULT NULL,      '+
                           ' PRIMARY KEY (Id))                        ';
        Execute();

        CommandText.Clear;
        CommandText.Text:=' CREATE TABLE IF NOT EXISTS os_engenharia_acesso_rural ('+
                          ' id int(11) NOT NULL AUTO_INCREMENT,'+
                          ' serv_camp smallint(1) DEFAULT 0,'    +
                          ' serv_proj smallint(1) DEFAULT 0,    '+
                          ' serv_edt_vl smallint(1) DEFAULT 0,'+
                          ' serv_topografia smallint(1) DEFAULT 0,'+
                          ' serv_vl smallint(1) DEFAULT 0,  '+
                          ' serv_ace smallint(1) DEFAULT 0, '+
                          ' cod_usuario int(11) DEFAULT 0,'+
                          ' PRIMARY KEY (id))';
       Execute();

       CommandText.Clear;
       CommandText.Text:=  ' CREATE TABLE IF NOT EXISTS os_engenharia_notas_rural ( '+
                          ' id int(11) NOT NULL AUTO_INCREMENT, '+
                          ' descricao varchar(20) DEFAULT NULL ,'+
                          ' id_os_projeto int(11) DEFAULT NULL ,PRIMARY KEY (id)) ';
       Execute();

       CommandText.Clear;
       CommandText.Text:=' CREATE TABLE IF NOT EXISTS os_cargahoraria_rural ('+
                         ' id int(11) NOT NULL AUTO_INCREMENT,         '+
                         ' prorrogacao date DEFAULT NULL,              '+
                         ' servcampo double(16,2) DEFAULT 0.00,       '+
                         ' atualizacaomub double(16,2) DEFAULT 0.00,  '+
                         ' projeto double(16,2) DEFAULT 0.00,         '+
                         ' datainclusao date DEFAULT NULL,            '+
                         ' id_projeto int(11) DEFAULT 0,              '+
                         ' PRIMARY KEY (id))                          ';
       Execute();

        CommandText.Clear;
        CommandText.Text:= 'CREATE TABLE if not exists os_engenharia_revisao_rural ( '+
                             ' id int(11) NOT NULL AUTO_INCREMENT,'+
                             ' cod_projetista int(11) DEFAULT NULL ,'+
                             ' dt_inicio datetime DEFAULT NULL, ' +
                             ' dt_fim datetime DEFAULT NULL,    '+
                             ' id_projeto int(11) DEFAULT NULL ,PRIMARY KEY (id))';
          Execute();

          CommandText.Clear;
          CommandText.Text:=' CREATE TABLE if not exists os_engenharia_clientes_rural ('+
                            ' id int(11) NOT NULL AUTO_INCREMENT,'+
                            ' descricao varchar(70) DEFAULT NULL,   '+
                            ' id_projeto int(11) DEFAULT NULL,    '+
                            ' cpf varchar(20) DEFAULT NULL,       '+
                            ' telefone varchar(40) DEFAULT NULL,'+
                            ' PRIMARY KEY (id),        '+
                            ' KEY fk_idx (id_projeto), '+
                            ' CONSTRAINT fk FOREIGN KEY (id_projeto) REFERENCES os_engenharia_projeto_rural (id) ON DELETE CASCADE ON UPDATE CASCADE )';
         Execute();

         CommandText.Clear;
         CommandText.Text:=' CREATE  TABLE if not exists os_engenharia_revisao_rural_servicocampo ( '+
                           ' id  int(11) NOT NULL AUTO_INCREMENT ,'+
                           ' dt_inicio  datetime  DEFAULT NULL ,'+
                           ' dt_fim  datetime  DEFAULT NULL ,  '+
                           ' id_tecnico  int(11)  DEFAULT NULL , '+
                           ' id_projeto  int(11)  DEFAULT NULL , '+
                           ' PRIMARY KEY (id))';
         Execute();

        CommandText.Clear;
        CommandText.Text:= ' CREATE TABLE if not exists os_engenharia_revisao_rural_topografia (         '+
                           ' id  int(11) NOT NULL AUTO_INCREMENT ,'+
                           ' cod_projetista  int(11) NULL DEFAULT NULL ,'+
                           ' dt_inicio  datetime  DEFAULT NULL ,      '+
                           ' dt_fim  datetime  DEFAULT NULL ,          '+
                           ' id_projeto  int(11)  DEFAULT NULL ,PRIMARY KEY (id))';
        Execute();


        CommandText.Clear;
        CommandText.Text := ' CREATE TABLE if not exists os_engenharia_dedo ( '+
                            ' codigo  int(11) NOT NULL AUTO_INCREMENT ,    '+
                            ' cod_usuario  int(11) NULL DEFAULT NULL ,     '+
                            ' nome_usuario  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,'+
                            ' data_hora  datetime NULL DEFAULT NULL ,                                                     '+
                            ' operacao  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,                        '+
                            ' usercomputador  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci  DEFAULT NULL  ,'+
                            ' ipcomputador  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci  DEFAULT NULL  ,'+
                            ' id_projeto  int(11) NULL DEFAULT NULL ,                                                 '+
                            ' PRIMARY KEY (codigo),                                                                   '+
                            ' INDEX idx_dedo_usuario (cod_usuario) USING BTREE ,                                       '+
                            ' INDEX idx_dedo_nome_usuario (nome_usuario) USING BTREE ,                                 '+
                            ' INDEX idx_dedo_data_hora (data_hora) USING BTREE ,                                       '+
                            ' INDEX idxoperacao (operacao(255)) USING BTREE ,                                          '+
                            ' INDEX idxusercomputador (usercomputador) USING BTREE ,                                   '+
                            ' INDEX idxipcomputador (ipcomputador) USING BTREE)                                        ';
        Execute();

        CommandText.Clear;
        CommandText.Text := ' CREATE TABLE if not exists os_engenharia_dedo_rural ( '+
                            ' codigo  int(11) NOT NULL AUTO_INCREMENT ,    '+
                            ' cod_usuario  int(11) NULL DEFAULT NULL ,     '+
                            ' nome_usuario  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,'+
                            ' data_hora  datetime NULL DEFAULT NULL ,                                                     '+
                            ' operacao  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,                        '+
                            ' usercomputador  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci  DEFAULT NULL  ,'+
                            ' ipcomputador  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci  DEFAULT NULL  ,'+
                            ' id_projeto  int(11) NULL DEFAULT NULL ,                                                 '+
                            ' PRIMARY KEY (codigo),                                                                   '+
                            ' INDEX idx_dedo_usuario (cod_usuario) USING BTREE ,                                       '+
                            ' INDEX idx_dedo_nome_usuario (nome_usuario) USING BTREE ,                                 '+
                            ' INDEX idx_dedo_data_hora (data_hora) USING BTREE ,                                       '+
                            ' INDEX idxoperacao (operacao(255)) USING BTREE ,                                          '+
                            ' INDEX idxusercomputador (usercomputador) USING BTREE ,                                   '+
                            ' INDEX idxipcomputador (ipcomputador) USING BTREE)                                        ';
        Execute();

        CommandText.Clear;
        CommandText.Text:=' CREATE TABLE if not exists os_assentamento_rural ( '+
                          ' id  int(11) NOT NULL AUTO_INCREMENT ,'+
                          ' descricao  varchar(100)  DEFAULT NULL ,data datetime default null,'+
                          ' PRIMARY KEY (id)                      '+
                          ' )                                      ';

        Execute();

        CommandText.Clear;
        CommandText.Text:=' CREATE TABLE if not exists os_assentamento_os ( '+
                          ' id_os_rural  int(11) NOT NULL ,'+
                          ' id_assentamento_rural  int(11) NOT NULL ,'+
                          ' PRIMARY KEY (id_assentamento_rural, id_os_rural))';
        Execute();

        CommandText.Clear;
        CommandText.Text:=' CREATE TABLE IF NOT EXISTS os_engenharia_ordem_servico( '+
                          ' id INT(11) NOT NULL AUTO_INCREMENT  , '+
                          ' cod_solicitado INT(11) NOT NULL  ,'+
                          ' dt_abertura DATETIME NOT NULL  ,'+
                          ' prioridade INT(11) NOT NULL  ,'+
                          ' descricao BLOB NOT NULL  ,'+
                          ' dt_conclusao DATETIME DEFAULT NULL ,'+
                          ' status INT(11) NOT NULL, '+
                          ' observacao BLOB DEFAULT NULL,'+
                          ' dt_limite DATETIME DEFAULT NULL ,'+
                          ' cod_solicitante INT(11) NOT NULL,'+
                          ' PRIMARY KEY (id))';
         Execute();

    end;
   except on E: Exception do
   end;
  finally

  end;

end;

function SenhaPadrao(senha,operacao : string) : Boolean;
var dia,mes,ano1,ano2,ano : Integer;
    senhagerada,data : string;
begin
  Result := False;
  data := SoNumero(RetornaDataMysqlSemHora);
  ano  := StrToInt(Copy(data,5,4));
  ano1 := StrToInt(Copy(data,5,2));
  ano2 := StrToInt(Copy(data,7,2));
  mes  := StrToInt(Copy(data,3,2));
  dia  := StrToInt(Copy(data,0,2));
  senhagerada := IntToStr(dia+ano1);
  senhagerada := senhagerada + IntToStr(mes+ano2);

  //senha de opera��o de configura��o
  if operacao = 'O' then
    begin
      if senha = senhagerada then
      Result := True;
    end
  else //senha de acesso ao sistema
  if operacao = 'A' then
  begin
    senhagerada := senhagerada + IntToStr(ano);
    if senha = senhagerada then
    Result := True;
  end;

end;


function ConsultaSqlFd(var Qry: TFDQuery; CmdSQL: string): Boolean;
begin
   if (Trim(CmdSQL) = '') then
   begin
      Result := false;
      Exit;
   end;

   try
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add(CmdSQL);
      Qry.Open;
      if not Qry.IsEmpty then
         result := true
      else
         result := false;
   except
      raise;
      Result := false;
      Exit;
   end;
end;

procedure SemRegistros;
begin
  Application.MessageBox('Aten��o! N�o Foram Encontrados Registros.',PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
end;

procedure OrdenarDbGrid(_grid : TFDQuery;_coluna:String);
begin
 // if not _grid.IsEmpty then
 // begin
  //  if (_grid. <>_coluna+' ASC') then
 //     _grid.Sort:=_coluna+' ASC'
//    else
//      _grid.sort:=_coluna+' DESC';
//  end;
end;


function Obrigatorio(pForm: TForm; pComp: TComponent; pMsg: string): Boolean;
var
   aux: Boolean;
begin
  try
    with pForm do
    aux := false;
    begin
      if pComp is TEdit then
      if Trim(TEdit(pComp).Text) = '' then
      begin
        TEdit(pComp).SetFocus;
        Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
        aux := true;
      end;

      if pComp is TDBLookupComboBox then
      if (TDBLookupComboBox(pComp).KeyValue = '') or (TDBLookupComboBox(pComp).KeyValue = '0') then
      begin
        TDBLookupComboBox(pComp).SetFocus;
        Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
        aux := true;
      end;

      if pComp is TMemo then
      if Trim(TMemo(pComp).Text) = '' then
      begin
        TMemo(pComp).SetFocus;
        Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
        aux := true;
      end;

      if pComp is TMaskEdit then
      begin
        if TMaskEdit(pComp).Text = '' then
        begin
          TMaskEdit(pComp).SetFocus;
         Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
         // Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
          aux := true;
        end;
        if TMaskEdit(pComp).Text = '  /  /    ' then
        begin
          TMaskEdit(pComp).SetFocus;
          Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
          aux := true;
        end;
      end;

      if pComp is TcxDateEdit then
      begin
        if (TcxDateEdit(pComp).Text = '') then
        begin
          TcxDateEdit(pComp).SetFocus;
          Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
          aux := true;
        end;

        if (TcxDateEdit(pComp).Text = '  /  /    ') then
        begin
          TcxDateEdit(pComp).SetFocus;
          Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
          aux := true;
        end;
      end;

      if pComp is TcxComboBox then
      if Trim(TcxComboBox(pComp).Text) = '' then
      begin
        TcxComboBox(pComp).SetFocus;
        Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
        aux := true;
      end;

      if pComp is TComboBox then
      if Trim(TComboBox(pComp).Text) = '' then
      begin
        TComboBox(pComp).SetFocus;
        Application.MessageBox(pwidechar(pMsg),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
        //Application.MessageBox(pwidechar(pMsg), 'Aten��o!', MB_OK +MB_ICONWARNING);
        aux := true;
      end;

      Obrigatorio := aux;
    end;
  except
    Application.MessageBox('N�o foi poss�vel fazer a valida��o dos campos', PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
    Exit();
  end;
end;

procedure CalcularValoresProjeto(pTag:Integer);
begin
  if(frmCadastrarProjeto = nil)then
  begin
  DataModule1.qryvaloresprojeto.Open();
  if( pTag =1)then
  begin
    frmCadastrarProjetoRural.edtvlposteprojurbano.Text:=Trim(FormatFloat(',.00',
    (StrTofloatDef(frmCadastrarProjetoRural.edtqtdposteprojurbano.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('posteprojetadourbano').AsCurrency)));
  end;
  if(pTag =2)then
  begin
   frmCadastrarProjetoRural.edtvlposterural.Text:=Trim(FormatFloat(',.00',
   (StrTofloatDef(frmCadastrarProjetoRural.edtqtdposterural.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('posteprojetadorural').AsCurrency)));
  end;

  if(pTag =3)then
  begin
    frmCadastrarProjetoRural.edtvllevantado.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtdlevantado.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('postelevantado').AsCurrency));
  end;

  if(pTag =4)then
  begin
    //frmCadastrarProjetoRural.edtvlposteatualizado.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtdposteatualizado.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('posteatualizado').AsCurrency));
  end;

  if(pTag =5)then
  begin
    frmCadastrarProjetoRural.edtvlrtopografia.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtdtopografia.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('topografia').AsCurrency));
  end;

  if(pTag =6)then
  begin
    frmCadastrarProjetoRural.edtvltravessia.Text:=Trim(FormatFloat(',.00',(StrToFloatDef(frmCadastrarProjetoRural.edtqttravessia.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('travessia').AsCurrency)));
  end;

  if(pTag =7)then
  begin
    frmCadastrarProjetoRural.edtvlrincorporacao.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtincorporacao.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('incorporacao').AsCurrency));
  end;

  if(pTag =8)then
  begin
   //frmCadastrarProjetoRural.edtedvlimprocedente.Text:=Trim(FormatFloat(',.00',(StrToFloatDef(frmCadastrarProjetoRural.edtqtdimprocedente.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('improcedente').AsCurrency)));
  end;

  if(pTag=9)then
  begin
   frmCadastrarProjetoRural.edtvldeslocamento.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtddeslocamento.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('deslocamento').AsCurrency));
  end;

  if(pTag=10)then
  begin
    frmCadastrarProjetoRural.edtvloutros.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtdoutros.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('outros').AsCurrency));
  end;
  if(pTag=11)then
  begin
    frmCadastrarProjetoRural.edtvllevantamento.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjetoRural.edtqtdlevantamento.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('levantamento').AsCurrency));
  end;

  end
  else
  begin
    DataModule1.qryvaloresprojeto.Open();
  if( pTag =1)then
  begin
    frmCadastrarProjeto.edtvlposteprojurbano.Text:=Trim(FormatFloat(',.00',
    (StrToFloatDef(frmCadastrarProjeto.edtqtdposteprojurbano.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('posteprojetadourbano').AsCurrency)));
  end;
  if(pTag =2)then
  begin
    frmCadastrarProjeto.edtvlposterural.Text:=Trim(FormatFloat(',.00',
   (StrToFloatDef(frmCadastrarProjeto.edtqtdposterural.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('posteprojetadorural').AsCurrency)));
  end;

  if(pTag =3)then
  begin
    frmCadastrarProjeto.edtvllevantado.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjeto.edtqtdlevantado.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('postelevantado').AsCurrency));
  end;

  if(pTag =4)then
  begin
    frmCadastrarProjeto.edtvlposteatualizado.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjeto.edtqtdposteatualizado.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('posteatualizado').AsCurrency));
  end;

  if(pTag =5)then
  begin
    frmCadastrarProjeto.edtvlrtopografia.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjeto.edtqtdtopografia.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('topografia').AsCurrency));
  end;

  if(pTag =6)then
  begin
    frmCadastrarProjeto.edtvltravessia.Text:=Trim(FormatFloat(',.00',(StrToFloatDef(frmCadastrarProjeto.edtqttravessia.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('travessia').AsCurrency)));
  end;

  if(pTag =7)then
  begin
    frmCadastrarProjeto.edtvlrincorporacao.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjeto.edtqtincorporacao.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('incorporacao').AsCurrency));
  end;

  if(pTag =8)then
  begin
   frmCadastrarProjeto.edtedvlimprocedente.Text:=Trim(FormatFloat(',.00',(StrToFloatDef(frmCadastrarProjeto.edtqtdimprocedente.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('improcedente').AsCurrency)));
  end;

  if(pTag=9)then
  begin
   frmCadastrarProjeto.edtvldeslocamento.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjeto.edtqtddeslocamento.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('deslocamento').AsCurrency));
  end;

  if(pTag=10)then
  begin
    frmCadastrarProjeto.edtvloutros.Text:=Trim(FormatFloat(',.00',StrToFloatDef(frmCadastrarProjeto.edtqtdoutros.Text,0)*DataModule1.qryvaloresprojeto.FieldByName('outros').AsCurrency));
  end;
  end;

  DataModule1.qryvaloresprojeto.close();
end;

//Muda a cor de fundo do edit quando estiver com o foco ------------------------
procedure MudancaDeFocoGeral(formulario: Tform; Sender: TObject);
const
_cSemFoco : TColor = clWindow;
_3D : Boolean = False;
begin
  if _desativaCorFoco then Exit;

  with Formulario do
  begin
    // Verifica se o componente e um componente do tipo TEdit;
    if Sender is TEdit then
    begin
    if not(TEdit(Sender).Ctl3D = _3D) then
    TEdit(Sender).Ctl3D := _3D;
    if not (TEdit(Sender).ReadOnly) then
    begin
    if TEdit(Sender).Focused then
    TEdit(Sender).Color := _corFoco
    else
    TEdit(Sender).Color := _cSemFoco;
    end;
    end;
    // Verifica se o componente e um componente do tipo TMaskEdit;
    if Sender is TMaskEdit then
    begin
    if not(TMaskEdit(Sender).Ctl3D = _3D) then
    TMaskEdit(Sender).Ctl3D := _3D;
    if not(TMaskEdit(Sender).ReadOnly) then
    begin
    if (TMaskEdit(Sender).Focused) then
    TMaskEdit(Sender).Color := _corFoco
    else
    TMaskEdit(Sender).Color := _cSemFoco;
    end;
    end;
    // Verifica se o componente e um componente do tipo TMemo;
    if Sender is TMemo then
    begin
    if not(TMemo(Sender).Ctl3D = _3D) then
    TMemo(Sender).Ctl3D := _3D;
    if not(TMemo(Sender).ReadOnly) then
    begin
    if TMemo(Sender).Focused then
    TMemo(Sender).Color := _corFoco
    else
    TMemo(Sender).Color := _cSemFoco;
    end;
    end;
    // Verifica se o componente e um componente do tipo TDBMemo;
    if Sender is TDBMemo then
    begin
      if not(TDBMemo(Sender).Ctl3D = _3D) then
      TDBMemo(Sender).Ctl3D := _3D;
      if not(TDBMemo(Sender).ReadOnly) then
      begin
      if TDBMemo(Sender).Focused then
      TDBMemo(Sender).Color := _corFoco
      else
      TDBMemo(Sender).Color := _cSemFoco;
      end;
    end;

    // Verifica se o componente e um componente do tipo TLabeledEdit;
    if Sender is TLabeledEdit then
    begin
    if TLabeledEdit(Sender).Focused then
    TLabeledEdit(Sender).Color := _corFoco
    else
    TLabeledEdit(Sender).Color := _cSemFoco;
    end;
    // Verifica se o componente e um componente do tipo TDBEdit;
    if Sender is TDBEdit then
    begin
    if not(TDBEdit(Sender).Ctl3D = _3D) then
    TDBEdit(Sender).Ctl3D := _3D;
    if not(TDBEdit(Sender).ReadOnly) then
    begin
    if TDBEdit(Sender).Focused then
    TDBEdit(Sender).Color := _corFoco
    else
    TDBEdit(Sender).Color := _cSemFoco;
    end;
    end;

    // Verifica se o componente e um componente do tipo TDBLookupComboBox;
    if Sender is TComboBox then
    begin
      if not(TComboBox(Sender).Ctl3D = _3D) then
      TComboBox(Sender).Ctl3D := _3D;

      // if not (TComboBox(Sender).ReadOnly) then
      // begin
      if TComboBox(Sender).Focused then
        TComboBox(Sender).Color := _corFoco
      else
        TComboBox(Sender).Color := _cSemFoco;
      // end;
    end;


    // Verifica se o componente e um componente do tipo TDBLookupComboBox;
    if Sender is TDBLookupComboBox then
    begin
      if not(TDBLookupComboBox(Sender).Ctl3D = _3D) then
      TDBLookupComboBox(Sender).Ctl3D := _3D;
      if not (TDBLookupComboBox(Sender).ReadOnly) then
      begin
          if TDBLookupComboBox(Sender).Focused then
            TDBLookupComboBox(Sender).Color := _corFoco
          else
          TDBLookupComboBox(Sender).Color := _cSemFoco;
      end;
    end;


    // Verifica se o componente e um componente do tipo TDBGrid;
    if Sender is TDBGrid then
    begin
      if not(TDBGrid(Sender).Ctl3D = _3D) then
      TDBGrid(Sender).Ctl3D := _3D;
    end;
    // Verifica se o componente e um componente do tipo TDBRadioGroup;
    if Sender is TDBRadioGroup then
    begin
      if not(TDBRadioGroup(Sender).Ctl3D = _3D) then
      TDBRadioGroup(Sender).Ctl3D := _3D;
      Color := clBtnFace;
    end;

  end;
end;

procedure Tdatamodule1.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
C : Integer;
i: SmallInt;
begin
   // Trata o focu dos objetos.
  with Screen.ActiveForm do
  begin
    if Screen.ActiveForm <> nil then
    begin
      for C := 0 to ComponentCount -1 do
      begin
        MudancaDeFocoGeral(Screen.ActiveForm, Components[C]);
      end;
      // Verifica se o objeto com foco e um DBGrid.
      if ActiveControl is TDBGrid then
      begin
        with TDBGrid(ActiveControl) do
        begin
            // Faz com que o scroll do mouse funcione nos grids.
          if Msg.message = wm_mousewheel then
          begin
            Msg.message := WM_KEYDOWN;
            Msg.lParam := 0;
            i := HiWord(Msg.wParam);
            if i > 0 then
            Msg.wParam := VK_UP
            else
            Msg.wParam := VK_DOWN;
            Handled := False;
          end;

        end;
      end;
    end;
  end;
end;

function DifDatas(DataVenc:TDateTime; DataAtual:TDateTime): Integer;
Var Data: TDateTime;
    dia, mes, ano: Word;
begin
  if DataAtual < DataVenc then
     Result := 0
  else
  begin
     Data := DataAtual - DataVenc;
     DecodeDate( Data, ano, mes, dia);
     Result := StrToInt(FloatToStr(Data));
  end;
end;

function FormataDataMysql(_datahora:string):string;
begin
  result := (formatdatetime('yyyy-mm-dd',strtodate(copy(_datahora,0,10))));
end;

function RetornaDataMysqlSemHora():String;
begin
  sqlstr := 'select now() as dataatual';
  ConsultaSqlFd(datamodule1.qrydatahora,sqlstr);
  result := copy(datamodule1.qrydatahora.fieldbyname('dataatual').AsString,1,10);
end;


function Crypt(Action, Src, Key : String) : String;
var
   KeyLen    : Integer;
   KeyPos    : Integer;
   offset    : Integer;
   dest      : string;
   SrcPos    : Integer;
   SrcAsc    : Integer;
   TmpSrcAsc : Integer;
   Range     : Integer;
begin
     dest:='';
     KeyLen:=Length(Key);
     KeyPos:=0;
     SrcPos:=0;
     SrcAsc:=0;
     Range:=256;
     if Action = UpperCase('E') then
     begin
          Randomize;
          offset:=Random(Range);
          dest:=format('%1.2x',[offset]);
          for SrcPos := 1 to Length(Src) do
          begin
               SrcAsc:=(Ord(Src[SrcPos]) + offset) MOD 255;
               if KeyPos < KeyLen then KeyPos:= KeyPos + 1 else KeyPos:=1;
               SrcAsc:= SrcAsc xor Ord(Key[KeyPos]);
               dest:=dest + format('%1.2x',[SrcAsc]);
               offset:=SrcAsc;
          end;
     end;
     if Action = UpperCase('D') then
     begin
          offset:=StrToInt('$'+ copy(src,1,2));
          SrcPos:=3;
          repeat
                SrcAsc:=StrToInt('$'+ copy(src,SrcPos,2));
                if KeyPos < KeyLen Then KeyPos := KeyPos + 1 else KeyPos := 1;
                TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
                if TmpSrcAsc <= offset then
                     TmpSrcAsc := 255 + TmpSrcAsc - offset
                else
                     TmpSrcAsc := TmpSrcAsc - offset;
                dest := dest + chr(TmpSrcAsc);
                offset:=srcAsc;
                SrcPos:=SrcPos + 2;
          until SrcPos >= Length(Src);
     end;
     Crypt:=dest;
end;


procedure FormataCampoFone(Campo: TMaskEdit; Tp : Integer);
var i : Integer; Estado : string; UsarNonoDigito : Boolean;
Label PularVerificao;
begin
//  try
//    Campo.OnKeyPress := FormataCampoKeyPress;
//  except
//  end;

  try
    if Tp = 1 then
    begin
      UsarNonoDigito  := False;

      if Length(SoNumero(Trim(Campo.Text))) = 10 then
      begin
        UsarNonoDigito := False;
      end
      else
      if Length(SoNumero(Trim(Campo.Text))) = 11 then
      begin
        UsarNonoDigito := True;
      end
      else
      if Length(SoNumero(Trim(Campo.Text))) = 0 then
      begin
        Campo.EditMask := '';
        Campo.Clear;
        Goto PularVerificao;
      end;

      if UsarNonoDigito then
      begin
        Campo.EditMask := '99.99999-9999';
        UsarNonoDigito := False;
      end
      else
      begin
        Campo.EditMask := '99.9999-9999';
      end;

      PularVerificao:
    end
    else
    if Tp = 2 then
    begin
      Campo.EditMask := '';
      Campo.Text := SoNumero(Trim(Campo.Text));
      //Campo.SelectAll;
    end;

    Campo.MaxLength := 11;
  except
    Campo.EditMask := '99.9999-9999';
  end;
end;

function RetornaDataMysqlComHora():String;
begin
  sqlstr := 'select now() as dataatual';
  ConsultaSqlFd(datamodule1.qrydatahora,sqlstr);
  result := datamodule1.qrydatahora.fieldbyname('dataatual').AsString;
end;

function ValidaNumeroFone(Frm: TForm; Componente: TComponent):Boolean;
begin
  try
    with Frm do
    begin
      if Componente is TEdit then
      begin
        if (Length(SoNumero(Trim(TEdit(Componente).Text))) > 0) and (Length(SoNumero(Trim(TEdit(Componente).Text))) < 10) then
        begin
          TEdit(Componente).SetFocus;
          Application.MessageBox(PWideChar('N�mero de telefone incorreto. Informe o n�mero corretamente'),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          Result := True;
        end
      end
      else
      if Componente is TMaskEdit then
      begin
        if (Length(SoNumero(Trim(TMaskEdit(Componente).Text))) > 0) and (Length(SoNumero(Trim(TMaskEdit(Componente).Text))) < 10) then
        begin
          TMaskEdit(Componente).SetFocus;
          Application.MessageBox(PWideChar('N�mero de telefone incorreto. Informe o n�mero corretamente'),PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          Result := True;
        end;
      end
      else
      begin
        Result := False;
      end;
    end;
  except
    Result := False;
  end;
end;

function TestaCpf(xCPF:String):Boolean;
Var
d1,d4,xx,nCount,resto,digito1,digito2 : Integer;
Check : String;
Begin
d1 := 0; d4 := 0; xx := 1;
for nCount := 1 to Length(xCpf)-2 do
    begin
    if Pos( Copy(xCPF, nCount, 1 ), '/-.' ) = 0 then
       begin
       d1 := d1 + ( 11 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       d4 := d4 + ( 12 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       xx := xx+1;
       end;
    end;
resto := (d1 mod 11);
if resto < 2 then
   begin
   digito1 := 0;
   end
else
   begin
   digito1 := 11 - resto;
   end;
d4 := d4 + 2 * digito1;
resto := (d4 mod 11);
if resto < 2 then
   begin
   digito2 := 0;
   end
else
   begin
   digito2 := 11 - resto;
   end;
Check := IntToStr(Digito1) + IntToStr(Digito2);
if Check <> copy(xCPF,succ(length(xCPF)-2),2) then
   begin
   Result := False;
   end
else
   begin
   Result := True;
   end;
end;

{Inserir informacoes necessarias}
procedure InserirDados;
var
nomes: array[1..10] of string;
begin
  with DataModule1.comand do begin
  {Status}
    CommandText.Clear;
    CommandText.Text:=' INSERT INTO status (id, descricao) VALUES(1, "Levantamento") ON DUPLICATE KEY UPDATE '+
                      ' descricao = "Levantamento"';
    Execute();

    {Status Rural}
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (1, "Cadastrada") ON DUPLICATE KEY UPDATE descricao = "Cadastrada"';
    Execute();CommandText.Clear;
    CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (2, "Levantamento de Campo") ON DUPLICATE KEY UPDATE descricao ="Levantamento de Campo"';
    Execute();CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (3, "Improcedente") ON DUPLICATE KEY UPDATE descricao="Improcedente"';
    Execute();CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (4, "Solicita��o Topografia") ON DUPLICATE KEY UPDATE descricao="Solicita��o Topografia"';
    Execute();CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (5, "Topografia") ON DUPLICATE KEY UPDATE descricao ="Topografia"';
    Execute();CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (6, "Elabora��o Projeto") ON DUPLICATE KEY UPDATE descricao ="Elabora��o Projetos"';
    Execute();CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_engenharia_status_rural (Id, descricao) VALUES (7, "Conclu�do") on duplicate key update descricao ="Conclu�do"';
    Execute();CommandText.Clear;
end;
end;

procedure AlterarTabelas;
begin
  //
  with DataModule1.comand do
  begin
    CommandText.Clear;
    CommandText.Add('ALTER TABLE os_engenharia_projeto_rural CHANGE COLUMN dt_soicitacao_topografia dt_solicitacao_topografia  date NULL DEFAULT NULL AFTER dt_chegada_geral;');
    Execute();
  end;
end;

function funcRetornaPrimeiroDiaMes: string;
var
  vDiaAtual: string;
  vDia, vMes, vAno: string;
begin
  vDiaAtual := RetornaDataMysqlSemHora(); //Pega a data atual do servidor sql
  vDia := copy(vDiaAtual, 1, 2);
  vMes := copy(vDiaAtual, 4, 2);
  vAno := copy(vDiaAtual, 7, 4);

  result := '01' + '/' + vMes + '/' + vAno;
end;

function funcRetornaUltimoDiaMes: string;
var
   vDiaAtual: TDateTime;
   Ano, Mes, Dia: Word;
begin
   vDiaAtual := StrToDate(RetornaDataMysqlSemHora()); //Pega a data atual do servidor sql
   DecodeDate(vDiaAtual, Ano, Mes, Dia);

   vDiaAtual := vDiaAtual + (32 - Dia);
   DecodeDate(vDiaAtual, Ano, Mes, Dia);
   vDiaAtual := EncodeDate(Ano, Mes, 01) - 1;
   DecodeDate(vDiaAtual, Ano, Mes, Dia);

   result := datetostr(vDiaAtual);
end;

procedure AtualizarGridCrs(pForm:TForm);
begin
  ConsultaSqlFd(DataModule1.qryCRUD,'SELECT * from os_engenharia_crs order by descricao');
  DataModule1.qryCRUD.First;
  if pForm.Tag =0 then
  begin
    frmCadastrarProjetoRural.cbbcrs.Clear;
    while not DataModule1.qryCRUD.Eof do
    begin
      frmCadastrarProjetoRural.cbbcrs.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
      DataModule1.qryCRUD.Next;
    end;
  end;
  if pForm.Tag =1 then
  begin
    frmCadastrarProjeto.cbbcrs.Clear;
    while not DataModule1.qryCRUD.Eof do
    begin
      frmCadastrarProjeto.cbbcrs.AddItem(DataModule1.qryCRUD.FieldByName('descricao').AsString,TObject(DataModule1.qryCRUD.FieldByName('id').AsInteger));
      DataModule1.qryCRUD.Next;
    end;
  end
end;

function funcRetornaPrimeiroDiaMesParametro(_data : string): string;
var
  vDiaAtual: string;
  vDia, vMes, vAno: string;
begin
  vDiaAtual := _data;
  vDia := copy(vDiaAtual, 1, 2);
  vMes := copy(vDiaAtual, 4, 2);
  vAno := copy(vDiaAtual, 7, 4);

  result := '01' + '/' + vMes + '/' + vAno;
end;

function funcRetornaUltimoDiaMesParametro(_data : string): string;
var
   vDiaAtual: TDateTime;
   Ano, Mes, Dia: Word;
begin
   vDiaAtual := StrToDate(_data);
   DecodeDate(vDiaAtual, Ano, Mes, Dia);

   vDiaAtual := vDiaAtual + (32 - Dia);
   DecodeDate(vDiaAtual, Ano, Mes, Dia);
   vDiaAtual := EncodeDate(Ano, Mes, 01) - 1;
   DecodeDate(vDiaAtual, Ano, Mes, Dia);

   result := datetostr(vDiaAtual);
end;

function TrocaPonto(valor : string) : string;
var i : integer;
begin
  for i := 1 to length(valor) do
  begin
    if valor[i] = ',' then
      valor[i] := '.';
  end;
  result := valor;
end;

procedure CriarLog(Sender: TObject;
  E: Exception;Acao:string);
 var
    NomeDoLog: string;
    Arquivo: TextFile;
    ds:HDC;
    cv:TCanvas;
begin
    NomeDoLog := ChangeFileExt(Application.Exename, '.log');
    AssignFile(Arquivo, NomeDoLog);

    if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
    else
      ReWrite(arquivo); { cria um novo se n�o existir }
    try
      WriteLn(arquivo, 'Formulario' +(Sender as TForm).Name+ ':'+' Usu�rio:'+DataModule1.qryusuario.FieldByName('nome').AsString);
      WriteLn(arquivo, 'A��o' + ':'+Acao);
      WriteLn(arquivo, DateTimeToStr(Now) + ':' + E.Message+E.ClassName);
      WriteLn(arquivo,'----------------------------------------------------------------------');

      Application.MessageBox('O Sistema Se Comportou de Maneira Inesperada !','Confirma��o',mb_YesNo);
      //gravar print
    finally
      CloseFile(arquivo)
    end;
end;

procedure InsereDedoDuro(codvendedor,nomevendedor,operacao:string;Id:integer);
var _dataloc,iplocal,usermicro : string;
begin
  try
    _dataloc   := RetornaDataMysqlComHora();
     iplocal   := datamodule1.idpwtch1.LocalIP;
     usermicro := NomeComputador;
    with datamodule1.comand do
    begin
      CommandText.Clear;
      CommandText.Add(''+
      'insert into os_engenharia_dedo(cod_usuario,nome_usuario,data_hora,operacao,usercomputador,ipcomputador,id_projeto) '+
      'values(:cod_vendedor,:nome_vendedor,:data_hora,:operacao,:usercomputador,:ipcomputador,:id)');
      //CommandType := cmdText;
      Params.ParamByName('cod_vendedor').Value     := codvendedor;
      Params.ParamByName('nome_vendedor').AsString := nomevendedor;
      Params.ParamByName('data_hora').AsDateTime   := Now;
      Params.ParamByName('operacao').Value         := operacao;
      Params.ParamByName('usercomputador').Value   := usermicro;
      Params.ParamByName('ipcomputador').Value     := iplocal;
      Params.ParamByName('id').Value               := id;
      Execute;
    end;
  except
  end;
end;

procedure InsereDedoDuroRural(codvendedor,nomevendedor,operacao:string;Id:integer);
var _dataloc,iplocal,usermicro : string;
begin
  try
    _dataloc   := RetornaDataMysqlComHora();
     iplocal   := datamodule1.idpwtch1.LocalIP;
     usermicro := NomeComputador;
    with datamodule1.comand do
    begin
      CommandText.Clear;
      CommandText.Add(''+
      'insert into os_engenharia_dedo_rural(cod_usuario,nome_usuario,data_hora,operacao,usercomputador,ipcomputador,id_projeto) '+
      'values(:cod_vendedor,:nome_vendedor,:data_hora,:operacao,:usercomputador,:ipcomputador,:id)');
      //CommandType := cmdText;
      Params.ParamByName('cod_vendedor').Value     := codvendedor;
      Params.ParamByName('nome_vendedor').AsString := nomevendedor;
      Params.ParamByName('data_hora').AsDateTime   := Now;
      Params.ParamByName('operacao').Value         := operacao;
      Params.ParamByName('usercomputador').Value   := usermicro;
      Params.ParamByName('ipcomputador').Value     := iplocal;
      Params.ParamByName('id').Value               := id;
      Execute;
    end;
  except
  end;
end;

function Dias_Uteis(DataI, DataF:TDateTime):Integer;
var
 contador:Integer;
begin
 if DataI > DataF then
 begin
   result  := 0;
   exit
 end;
 Contador := 0;
 while (DataI <= DataF) do
 begin
   if ((DayOfWeek(DataI) <> 1) and (DayOfWeek(DataI) <> 7)) then
     Inc(Contador);
   DataI := DataI + 1

 end;
 result := Contador;
end;

Function Datafinal(dataini:tdatetime; dias_uteis:integer):tDateTime;
var dw:integer;
begin
dw := DayOfWeek(dataini) - 1;
result := dataini + dias_uteis + ((dias_uteis-1 + dw) div 5) *2;
end;

function NomeComputador : String;
var
  lpBuffer : PChar;
  nSize : DWord;
  const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;


procedure AtualizarQtdeLicencaUsoSite;
var qry : TFDQuery;
    consite :TFDConnection;
    comandosite : TFDCommand;
begin
  if VerificarAcessoInternet = true then //verifica conec��o web
  begin

  end;
end;

function VerificarAcessoInternet: Boolean;
var
  Flags : Cardinal;
begin
  if not InternetGetConnectedState(@Flags, 0) then
    Result := False
  else
   Result := True;
end;

function ValidarDataMenorAno(dataStr:string):Boolean;
var
  data:TDateTime;
begin
  //converter em data
  Result :=true;
  if Trim(dataStr)<>'' then
  begin
    data:= StrToDateTime(dataStr);
    if data < StrToDate('01/01/2000') then
    begin
      Result:=False;
    end;
  end;
end;
function ValidarDataHoje(dataStr:string):Boolean;
var
  data:TDateTime;
begin
  //converter em data
  Result :=True;
  if trim(dataStr)<>'' then
  begin
    data:= StrToDateTime(dataStr);
    if data > Now then
    begin
      Result:=False;
    end;
  end;
end;

Function SerialNum(FDrive:String) :String;
var
  SLabel, SSysName: PChar;
  Serial, FileNameLen, X: DWord;
begin
  GetMem(SLabel, 255);
  GetMem(SSysName, 255);
  Result := '';
  Try
    GetVolumeInformation(PChar(FDrive+':\'),SLabel, 255, @Serial, FileNameLen, X, SSysName, 255);
    Result := IntToHex(Serial,8);
  finally
    FreeMem(SLAbel, 255);
    FreeMem(SSysName, 255);
  end;
end;

procedure CadastraNovoMicro(_VolumeHd :string);
var _dataloc,iplocal,usermicro : string;
begin
  try
    _dataloc   := RetornaDataMysqlComHora();
    iplocal   := datamodule1.idpwtch1.LocalIP;
    usermicro := NomeComputador;
    with datamodule1.comand do
    begin
      CommandText.Text                                 := ''+
      'insert microscadastrados(ip,nomemicro,volume,datacadastro) '+
      'values(:ip,:nomemicro,:volume,:datacadastro)';
      Params.ParamByName('ip').Value           := iplocal;
      Params.ParamByName('nomemicro').Value    := usermicro;
      Params.ParamByName('volume').Value       := _VolumeHd;
      Params.ParamByName('datacadastro').Value := FormataDataHoraMysql(_dataloc);
      Execute;
    end;
  except
  end;
end;

function formatadatahoramysql(_datahora:string):string;
begin
  result := (formatdatetime('yyyy-mm-dd',strtodate(copy(_datahora,0,10)))+' '+copy(_datahora,12,8));
end;


procedure OrdenarDbGridFD(_grid : TFDQuery;_coluna:String);
var
  _colunaaux: string;
begin
  _grid.Indexes.Clear;{Limpado os indices de consulta}
  with _grid.Indexes.Add do
  begin
    Name          := 'By '+_coluna;{adicionando um novo indice}
    if _coluna = _colunaaux then
    begin
      Fields      := _coluna+':D';{ordenando descrescente}
      _colunaaux  := _coluna+':D';{variav�l de controle}
    end
    else
    begin
      Fields      := _coluna;{ordenando crescente}
      _colunaaux  := _coluna{variav�l de controle}
    end;
    Active        := True;{ativando a consulta}
  end;
  _grid.IndexName := 'By '+_coluna;{realizando a consulta}
  _grid.first;{posicionando o cursor no primeiro campo ap�s a ordena��o}
end;


function ValidarDataRetorno(dtini:TcxDateEdit;dtfim:TcxDateEdit):Boolean;
begin
  Result :=false;

  if (dtini.Text='') and (dtfim.Text<>'') then
  begin
    Result :=True;
  end;
end;

function ValidarDataMenor(dtini:TcxDateEdit;dtfim:TcxDateEdit):Boolean;
begin
  if (dtini.Text<>'') and (dtfim.Text<>'') then
  begin
    if dtini.Date > dtfim.Date then
    begin
      Application.MessageBox('Data de Recebimento Superior a Data de Entrega !',
        'Aten��o', MB_OK + MB_ICONINFORMATION);
        dtini.SetFocus;
      Exit;
    end;
  end;
  
end;

end.
