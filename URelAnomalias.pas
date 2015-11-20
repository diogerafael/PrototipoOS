unit URelAnomalias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, URelPadrao, Vcl.Menus, RDprint,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Samples.Gauges, JvComponentBase, JvThread,FireDAC.Comp.Client,
  uProcessandoNovo,System.DateUtils;

type
  TFrmRelAnomalias = class(TFrmRelPadrao)
    ThreadProcessando: TJvThread;
    procedure btnrelatorioClick(Sender: TObject);
    procedure ThreadProcessandoExecute(Sender: TObject; Params: Pointer);
  private
    FQryConfidDiasSemLev,FQryConfidDiasComLev,FQryConfidDiasTop:TFDQuery;
    procedure PercorrerLista(qry:TFDQuery);
    procedure Verifica66;
    function PegarDetalhamento(qry:TFDQuery):string;
    function VerifcarFinalSemana(Data:TDateTime):TDateTime;
    procedure RelatorioAnomaliaUrbano;
    procedure RelatorioAnomaliaRural;
    procedure CabecalhoRelRural;
    procedure CorpoRural;
    procedure RodapeRural;
    procedure PercorrerListaRural(qry: TFDQuery);
    procedure AnomaliasRural(qry: TFDQuery; qryStr: string);
    { Private declarations }
  public
    { Public declarations }
  _strDetalhamento:string;
  procedure AnomaliasSemlevantamento(qry:TFDQuery;qryStr:string);
  procedure AnomaliasComLevantamento(qry:TFDQuery;qryStr:string);
  procedure AnomaliasTopo(qry:TFDQuery;qryStr:string);
  procedure RelatorioAnomalias;
  procedure CabecalhoRel;
  procedure CorpoRel;
  procedure RodapeRel;
  end;

var
  FrmRelAnomalias: TFrmRelAnomalias;
implementation

{$R *.dfm}

uses DataModule;




procedure TFrmRelAnomalias.AnomaliasComLevantamento(qry: TFDQuery; qryStr: string);
begin
   if ConsultaSqlFd(qry,qryStr) then
    begin
      //PERCORRENDO QRY
      qry.Filtered:=False;
      qry.Filter:='id_statusos=6';
      qry.Filtered:=True;
      qry.First;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'COM LEVANTAMENTO  :STATUS CADASTRADA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //filtrar por levantamento
      qry.Filtered:=False;
      qry.Filter:='id_statusos=1';
      qry.Filtered:=True;
      if not qry.eof then
      begin
        rdprnt1.impf(Linha,01,'COM LEVANTAMENTO  :STATUS LEVANTAMENTO',[comp17,negrito]);
         Inc(linha);
        PercorrerLista(qry);
      end ;
      //percorrer Atualizar

      qry.Filtered:=False;
      qry.Filter:='id_statusos=4';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'COM LEVANTAMENTO  :STATUS ATUALIZAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //projetar

      qry.Filtered:=False;
      qry.Filter:='id_statusos=2';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'COM LEVANTAMENTO  :STATUS PROJETAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //topografia

      qry.Filtered:=False;
      qry.Filter:='id_statusos=9';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'COM LEVANTAMENTO  :STATUS TOPOGRAFIA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
    end;
end;

procedure TFrmRelAnomalias.AnomaliasRural(qry: TFDQuery; qryStr: string);
begin
  if ConsultaSqlFd(qry,qryStr) then
    begin
      //PERCORRENDO QRY
      qry.Filter:='id_statusos=6';
      qry.Filtered:=True;
      qry.First;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS CADASTRADA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end;

      qry.Filtered:=False;
      qry.Filter:='id_statusos=4';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS ATUALIZAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //projetar

      qry.Filtered:=False;
      qry.Filter:='id_statusos=2';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS PROJETAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //topografia

      qry.Filtered:=False;
      qry.Filter:='id_statusos=9';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS TOPOGRAFIA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end;
    end;
end;

procedure TFrmRelAnomalias.AnomaliasSemlevantamento(qry: TFDQuery; qryStr: string);
begin
  if ConsultaSqlFd(qry,qryStr) then
    begin
      //PERCORRENDO QRY
      qry.Filter:='id_statusos=6';
      qry.Filtered:=True;
      qry.First;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS CADASTRADA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end;
    
      qry.Filtered:=False;
      qry.Filter:='id_statusos=4';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS ATUALIZAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //projetar

      qry.Filtered:=False;
      qry.Filter:='id_statusos=2';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS PROJETAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //topografia

      qry.Filtered:=False;
      qry.Filter:='id_statusos=9';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'SEM LEVANTAMENTO  :STATUS TOPOGRAFIA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end;
    end;
end;

procedure TFrmRelAnomalias.AnomaliasTopo(qry: TFDQuery;
  qryStr: string);
begin
  //MONTAR REL SEM LEVANTAMENTO
     if ConsultaSqlFd(qry,qryStr) then
    begin
      //PERCORRENDO QRY
      qry.Filtered:=False;
      qry.Filter:='id_statusos=6';
      qry.Filtered:=True;
      qry.First;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'TOPOGRAFIA   :STATUS CADASTRADA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //filtrar por levantamento
      qry.Filtered:=False;
      qry.Filter:='id_statusos=1';
      qry.Filtered:=True;
      if not qry.eof then
      begin
        rdprnt1.impf(Linha,01,'TOPOGRAFIA  :STATUS LEVANTAMENTO',[comp17,negrito]);
         Inc(linha);
        PercorrerLista(qry);
      end ;
      //percorrer Atualizar

      qry.Filtered:=False;
      qry.Filter:='id_statusos=4';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'TOPOGRAFIA  :STATUS ATUALIZAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //projetar

      qry.Filtered:=False;
      qry.Filter:='id_statusos=2';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'TOPOGRAFIA  :STATUS PROJETAR',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
      //topografia

      qry.Filtered:=False;
      qry.Filter:='id_statusos=9';
      qry.Filtered:=True;
      if not qry.Eof then
      begin
        rdprnt1.impf(Linha,01,'TOPOGRAFIA  :STATUS TOPOGRAFIA',[comp17,negrito]);
        Inc(linha);
        PercorrerLista(qry);
      end ;
    end;
end;

procedure TFrmRelAnomalias.btnrelatorioClick(Sender: TObject);
begin
  inherited;
  frmProcessandoNovo.Show;
  ThreadProcessando.Execute(nil);
  ThreadProcessando.WaitFor;
  frmProcessandoNovo.Hide;
  frmProcessandoNovo.Close;
end;

procedure TFrmRelAnomalias.CabecalhoRel;
begin
  if(not DataModule1.qryEMPRESA.Active)then
  begin
    DataModule1.qryEMPRESA.Active := True;
  end;

    rdprnt1.TamanhoQteColunas:=137;
    rdprnt1.TamanhoQteLinhas:=66;
    rdprnt1.OpcoesPreview.Preview:=True;
    rdprnt1.OpcoesPreview.PreviewZoom := -1; rdprnt1.OpcoesPreview.Remalina := false; rdprnt1.OpcoesPreview.PaginaZebrada := true; //zoom 100%
    //conta:=0;
    rdprnt1.Abrir;
    rdprnt1.impf(01,01,datamodule1.qryEMPRESA.FieldByName('nome_razaosocial').AsString,[negrito]);
    rdprnt1.impf(01,40,'CNPJ: '+datamodule1.qryempresa.Fieldbyname('cnpj').asstring,[comp17,negrito]);
    rdprnt1.impf(01,60,RetornaDataMysqlComHora(),[comp17,negrito]);
    rdprnt1.imp(02,01,_traco137);
    rdprnt1.impf(03,01,'RELAT�RIO DE PROJETOS ANOMALIAS',[comp17,negrito]);

    //MONTANDO CABE�ALHO
    rdprnt1.ImpF(04,01,'N�MERO OS',[comp17,negrito]);
    rdprnt1.ImpF(04,20,'NOTA',[comp17,negrito]);
    rdprnt1.ImpF(04,50,'SOLICITANTE',[comp17,negrito]);
    rdprnt1.ImpF(04,80,'DT. RECEBIMENTO',[comp17,negrito]);
    rdprnt1.ImpF(04,95,'DETALHAMENTO',[comp17,negrito]);
    rdprnt1.imp(05,01,_traco137);
    Linha:=6;
end;

procedure TFrmRelAnomalias.CabecalhoRelRural;
begin
  if(not DataModule1.qryEMPRESA.Active)then
  begin
    DataModule1.qryEMPRESA.Active := True;
  end;

  rdprnt1.TamanhoQteColunas:=137;
  rdprnt1.TamanhoQteLinhas:=66;
  rdprnt1.OpcoesPreview.Preview:=True;
  rdprnt1.OpcoesPreview.PreviewZoom := -1; rdprnt1.OpcoesPreview.Remalina := false; rdprnt1.OpcoesPreview.PaginaZebrada := true; //zoom 100%
  //conta:=0;
  rdprnt1.Abrir;
  rdprnt1.impf(01,01,datamodule1.qryEMPRESA.FieldByName('nome_razaosocial').AsString,[negrito]);
  rdprnt1.impf(01,40,'CNPJ: '+datamodule1.qryempresa.Fieldbyname('cnpj').asstring,[comp17,negrito]);
  rdprnt1.impf(01,60,RetornaDataMysqlComHora(),[comp17,negrito]);
  rdprnt1.imp(02,01,_traco137);
  rdprnt1.impf(03,01,'RELAT�RIO DE PROJETOS ANOMALIAS',[comp17,negrito]);

  //MONTANDO CABE�ALHO
  rdprnt1.ImpF(04,01,'N�MERO OS',[comp17,negrito]);
  rdprnt1.ImpF(04,20,'NOTA',[comp17,negrito]);
  rdprnt1.ImpF(04,50,'SOLICITANTE',[comp17,negrito]);
  rdprnt1.ImpF(04,80,'DT. RECEBIMENTO',[comp17,negrito]);
  rdprnt1.ImpF(04,95,'DETALHAMENTO',[comp17,negrito]);
  rdprnt1.imp(05,01,_traco137);
  Linha:=6;
end;

procedure TFrmRelAnomalias.CorpoRel;
begin
  RelatorioAnomalias;
end;

procedure TFrmRelAnomalias.CorpoRural;
var
  qryOS:TFDQuery;
  qryOsConfig:TFDQuery;
begin
  try
    qryOS            := TFDQuery.Create(nil);
    qryOS.Connection := DataModule1.ConMySql;

    qryOsConfig            := TFDQuery.Create(nil);
    qryOsConfig.Connection := DataModule1.ConMySql;
    sqlstr:='select * from os_config where cod_os_tipo =4';
    ConsultasqlFD(qryOsConfig,sqlstr);

    sqlstr:='SELECT '+
            'OS.*, OS.ID AS id_os,'+
            'n.id,'+
            'n.id_os_projeto'+
            ' FROM'+
            'os_engenharia_projeto_rural AS os'+
            ' LEFT JOIN os_engenharia_notas_rural n ON (n.id_os_projeto = os.id)'+
            ' WHERE'+
            ' ('+
            '  (os.dt_conclusao IS NULL)'+
            '  OR ('+
            '    os.dt_conclusao = ''0000-00-00'''+
            '  )'+
            ')'+
          ' AND (os.id_statusos NOT IN(9,7))'+
          ' ORDER BY'+
          '  os.dt_chegada_geral,'+
          '  n.descricao ';
    ConsultaSqlFd(qryOS,sqlstr);



  finally
    FreeAndNil(qryOS);
    FreeAndNil(qryOsConfig);
  end;
end;

procedure TFrmRelAnomalias.ThreadProcessandoExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  if Self.Tag=0then
    RelatorioAnomaliaUrbano;
  if Self.Tag=1then
    RelatorioAnomaliaRural;
end;

procedure TFrmRelAnomalias.RelatorioAnomaliaRural;
begin
  CabecalhoRelRural;
  CorpoRural;
  RodapeRural;
end;

procedure TFrmRelAnomalias.RelatorioAnomalias;
var
  qryTempSemLEvantamento:TFDQuery;
  qryTempComLEvantamento:TFDQuery;
  qryTempTopoLEvantamento:TFDQuery;
begin
  try
    try
      qryTempSemLEvantamento:=TFDQuery.Create(nil);
      qryTempSemLEvantamento.Connection:=DataModule1.ConMySql;

      qryTempComLEvantamento:=TFDQuery.Create(nil);
      qryTempComLEvantamento.Connection:=DataModule1.ConMySql;

      qryTempTopoLEvantamento:=TFDQuery.Create(nil);
      qryTempTopoLEvantamento.Connection:=DataModule1.ConMySql;

      FQryConfidDiasSemLev:=TFDQuery.Create(nil);
      FQryConfidDiasSemLev.Connection:=DataModule1.ConMySql;
      sqlstr := ''+
     'select * from os_config where cod_os_tipo =2';
     ConsultasqlFD(FQryConfidDiasSemLev,sqlstr);

      FQryConfidDiasComLev:=TFDQuery.Create(nil);
      FQryConfidDiasComLev.Connection:=DataModule1.ConMySql;
      sqlstr := ''+
     'select * from os_config where cod_os_tipo =1';
     ConsultasqlFD(FQryConfidDiasComLev,sqlstr);

      FQryConfidDiasTop:=TFDQuery.Create(nil);
      FQryConfidDiasTop.Connection:=DataModule1.ConMySql;
      sqlstr := ''+
     'select * from os_config where cod_os_tipo =3';
     ConsultasqlFD(FQryConfidDiasTop,sqlstr);


     //consulta
     sqlstr:=' select OS.*,OS.ID  as id_os,tp.descricao ,n.id,n.id_os_projeto'+
             ' from os_engenharia_projeto as os '+
             ' INNER JOIN os_engenharia_tipo as tp on (os.id_tipoos=tp.id) '       +
             ' left join os_engenharia_notas n on (n.id_os_projeto = os.id)  '+
             ' where ((os.dt_conclusao is NULL) OR (os.dt_conclusao=''0000-00-00'')) '+
             ' and (os.id_statusos not in(10,8)) and os.id_tipoos=2 ORDER BY os.dt_chegada_geral,n.descricao';

     //chamando procedure anomalia sem levantamento
     AnomaliasSemlevantamento(qryTempSemLEvantamento,sqlstr);

     sqlstr:=' select OS.*,OS.ID  as id_os,tp.descricao ,n.id,n.id_os_projeto'+
             ' from os_engenharia_projeto as os '+
             ' INNER JOIN os_engenharia_tipo as tp on (os.id_tipoos=tp.id) '       +
             ' left join os_engenharia_notas n on (n.id_os_projeto = os.id)  '+
             ' where ((os.dt_conclusao is NULL) OR (os.dt_conclusao=''0000-00-00'')) '+
             ' and (os.id_statusos not in(10,8)) and os.id_tipoos=1 order by os.dt_chegada_geral,n.descricao';
     AnomaliasComLevantamento(qryTempComLEvantamento,sqlstr);

      sqlstr:=' select OS.*,OS.ID  as id_os,tp.descricao ,n.id,n.id_os_projeto'+
             ' from os_engenharia_projeto as os '+
             ' INNER JOIN os_engenharia_tipo as tp on (os.id_tipoos=tp.id) '       +
             ' left join os_engenharia_notas n on (n.id_os_projeto = os.id)  '+
             ' where ((os.dt_conclusao is NULL) OR (os.dt_conclusao=''0000-00-00'')) '+
             ' and (os.id_statusos not in(10,8)) and os.id_tipoos=3 order by os.dt_chegada_geral,n.descricao';
      AnomaliasTopo(qryTempTopoLEvantamento,sqlstr);
    except on E: Exception do
    begin
      Application.MessageBox('O Sistema Se Comportou de Maneira Inesperada !',
        'Aten��o', MB_OK + MB_ICONWARNING);
        // CriarLog;
    end
    end;
  finally
     qryTempSemLEvantamento.Free;
     qryTempTopoLEvantamento.Free;
     qryTempComLEvantamento.Free;
  end;
end;

procedure TFrmRelAnomalias.RelatorioAnomaliaUrbano;
begin
  CabecalhoRel;
  CorpoRel;
  RodapeRel;
end;

procedure TFrmRelAnomalias.RodapeRel;
begin
  Inc(linha);
  rdprnt1.impf(linha,01,_traco137,[comp17]);
  Inc(linha);
  //rdprnt1.impf(linha,01,'Total de Projetos',[comp17]);
  //rdprnt1.impf(linha,75,inttostr(datamodule1.qryCRUD.RecordCount),[comp17]);
  rdprnt1.Fechar;
  g1.Progress := 0;
end;

procedure TFrmRelAnomalias.RodapeRural;
begin

end;

function TFrmRelAnomalias.VerifcarFinalSemana(Data:TDateTime):TDateTime;
begin
  //se data final for sabao ou domingo, jogar para proximo dia util
  if DayOfWeek(Data) = 1 then
  begin
    data := IncDay(Data + 1);
  end;
  if DayOfWeek(Data) = 7 then
  begin
    data := IncDay(Data + 2);
  end;
  Result:=Data;
end;

procedure TFrmRelAnomalias.Verifica66;
begin
      if linha >= 62 then
      begin
        rdprnt1.novapagina;
        linha := 2;
      end;
end;

function TFrmRelAnomalias.PegarDetalhamento(qry: TFDQuery): string;
var
        dt:TDateTime;
begin
        dt:=VerifcarFinalSemana(qry.FieldByName('dt_limite_geral').AsDateTime);
        //verificar data conclusao
        if dt < Now then
        begin
                _strDetalhamento:='Dt. Conclus�o: Al�m do Limite '+FormatDateTime('dd/MM',dt);
        end;
        //retorno do projeto
        //verifcar se ja tem data de retorno
        if  (qry.FieldByName('dt_chegada_projeto').AsString.IsEmpty) and   (not qry.FieldByName('dt_envio_projeto').AsString.IsEmpty) then
        begin
          case qry.FieldByName('id_tipoos').AsInteger of
            1:begin //com levantamento
                dt:=IncDay(qry.FieldByName('dt_envio_projeto').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_projeto').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_projeto').AsDateTime);
                _strDetalhamento:='Projeto: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
            2:begin //sem levantamento
                dt:=IncDay(qry.FieldByName('dt_envio_projeto').AsDateTime,FQryConfidDiasSemLev.FieldByName('dias_projeto').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_projeto').AsDateTime);
                _strDetalhamento:='Projeto: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
            3:begin //topografia
                dt:=IncDay(qry.FieldByName('dt_envio_projeto').AsDateTime,FQryConfidDiasTop.FieldByName('dias_projeto').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_projeto').AsDateTime);
                _strDetalhamento:='Projeto: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
          end;
        end;
         //data de atualizacao chegata atualizacao vazio
        if (qry.FieldByName('dt_chegada_atualizacao').AsString.IsEmpty ) and (not qry.FieldByName('dt_envio_atualizacao').AsString.IsEmpty)then
        begin
          case qry.FieldByName('id_tipoos').AsInteger of
            1:begin
                dt:=IncDay(qry.FieldByName('dt_envio_atualizacao').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_mub').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_atualizacao').AsDateTime);
                _strDetalhamento:='Atualiza��o: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
            2:begin
                dt:=IncDay(qry.FieldByName('dt_envio_atualizacao').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_mub').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_atualizacao').AsDateTime);
                _strDetalhamento:='Atualiza��o: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
            3:begin
                dt:=IncDay(qry.FieldByName('dt_envio_atualizacao').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_mub').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_atualizacao').AsDateTime);
                _strDetalhamento:='Atualiza��o: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;  
          end;
        end;
        //toporafia
        if (qry.FieldByName('dt_chegada_topografia').AsString.IsEmpty ) and (not qry.FieldByName('dt_envio_topografia').AsString.IsEmpty)  then
        begin
          case qry.FieldByName('id_tipoos').AsInteger of
            3:begin
                dt:=IncDay(qry.FieldByName('dt_envio_topografia').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_topografia').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_envio_topografia').AsDateTime);
                _strDetalhamento:='Topografia: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
          end;
        end;
        //servico de campo
         if (qry.FieldByName('dt_chegada_tec').AsString.IsEmpty ) and ( qry.FieldByName('dt_liberacao_tec').AsString.IsEmpty)then
         begin
          case qry.FieldByName('id_tipoos').AsInteger of
            1:begin
                dt:=IncDay(qry.FieldByName('dt_liberacao_tec').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_campo').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_liberacao_tec').AsDateTime);
                _strDetalhamento:='Atualiza��o: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
            3:begin
                dt:=IncDay(qry.FieldByName('dt_liberacao_tec').AsDateTime,FQryConfidDiasComLev.FieldByName('dias_campo').AsInteger);
                dt:=VerifcarFinalSemana(qry.FieldByName('dt_liberacao_tec').AsDateTime);
                _strDetalhamento:='Servi�o de Campo: Data Retorno al�m do limite '+FormatDateTime('dd/MM',dt);
              end;
          end;
         end;
        Result:=_strDetalhamento;
end;


procedure TFrmRelAnomalias.PercorrerLista(qry:TFDQuery);
var
  notas: string;
begin
  while not qry.Eof do
  begin
    rdprnt1.ImpF(Linha, 1, qry.FieldByName('numero_os').AsString, [comp20, negrito]);
    //NOTAS
     sqlstr:='SELECT * FROM os_engenharia_notas N WHERE N.id_os_projeto='+qry.FieldByName('id_os').AsString;
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
    rdprnt1.ImpF(linha, 20, notas, [comp20, negrito]);
    rdprnt1.ImpF(linha, 50,Copy(qry.FieldByName('solicitante').AsString,1,29), [comp20, negrito]);
    rdprnt1.ImpF(linha, 80, qry.FieldByName('dt_chegada_geral').AsString, [comp20, negrito]);
    rdprnt1.ImpF(linha,95,PegarDetalhamento(qry),[comp20,negrito]);
    qry.Next;
    inc(linha);
    Verifica66;
  end;
end;


procedure TFrmRelAnomalias.PercorrerListaRural(qry:TFDQuery);
var
  notas: string;
begin
  while not qry.Eof do
  begin
    rdprnt1.ImpF(Linha, 1, qry.FieldByName('numero_os').AsString, [comp20, negrito]);
    //NOTAS
     sqlstr:='SELECT * FROM os_engenharia_notas_rural N WHERE N.id_os_projeto='+qry.FieldByName('id_os').AsString;
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
    rdprnt1.ImpF(linha, 20, notas, [comp20, negrito]);
//    rdprnt1.ImpF(linha, 50,Copy(qry.FieldByName('solicitante').AsString,1,29), [comp20, negrito]);//vai dar problema do solicitante
    rdprnt1.ImpF(linha, 80, qry.FieldByName('dt_chegada_geral').AsString, [comp20, negrito]);
    rdprnt1.ImpF(linha,95,PegarDetalhamento(qry),[comp20,negrito]);
    qry.Next;
    inc(linha);
    Verifica66;
  end;
end;


end.
