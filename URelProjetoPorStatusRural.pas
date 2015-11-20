unit URelProjetoPorStatusRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, URelPadrao, Vcl.Menus, RDprint,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Samples.Gauges, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,FireDAC.Comp.Client,
  uProcessandoNovo, JvComponentBase, JvThread,Winapi.ActiveX, cxGraphics,
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
  TFrmRelProjetoStatusRural = class(TFrmRelPadrao)
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl2: TLabel;
    edtini: TcxDateEdit;
    edtfim: TcxDateEdit;
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
    grpFuncionario: TGroupBox;
    edtcodtecnico: TEdit;
    edtdesctecnico: TEdit;
    rgGroup: TRadioGroup;
    rgTipo: TRadioGroup;
    rgTpPeriodo: TRadioGroup;
    btnExportar: TBitBtn;
    grpOrdenacao: TGroupBox;
    chkPeriodo: TCheckBox;
    chkStatus: TCheckBox;
    grpmunicipio: TGroupBox;
    edtcodmunicipio: TEdit;
    edtdescmunicipio: TEdit;
    grp3: TGroupBox;
    edtUniversalizacao: TEdit;
    E1: TMenuItem;
    btnExportarDevolvidas: TBitBtn;
    SaveDialog1: TSaveDialog;
    ThreadProcessando: TJvThread;
    chkConImprocedente: TCheckBox;
    chkTopLiberada: TCheckBox;
    procedure chkTodosClick(Sender: TObject);
    procedure btnrelatorioClick(Sender: TObject);
    procedure edtcodtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure E1Click(Sender: TObject);
    procedure btnExportarDevolvidasClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure ThreadProcessandoExecute(Sender: TObject; Params: Pointer);

  private
    { Private declarations }
    procedure InicialCizaComponente;
    procedure CabecalhoRel;
    procedure CorpoRel;
    procedure RodapeRel;
    procedure verifica66;
    function pegarStatus:string;
    function pegarOrdenacao: string;
    function pegarPeriodo: string;
    procedure limparCampos;
    procedure exportacaoGeral;

  public
    { Public declarations }
  end;

var
  FrmRelProjetoStatusRural: TFrmRelProjetoStatusRural;

implementation

{$R *.dfm}

uses DataModule, System.DateUtils, uFrmCadastrarProjetoRural,
  UConsFuncionario, u_conscodmunicipio, System.Win.ComObj;

procedure TFrmRelProjetoStatusRural.btnExportarClick(Sender: TObject);
begin
  inherited;
//validacoes
  try
    if(pegarStatus='')then
    begin
      Application.MessageBox('Definir Parametros de Pesquisa ! Status', 'Atenção',
        MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    if(Trim(pegarStatus)='')then
    begin
            Application.MessageBox('Verificar Informações de Parâmetros !'
          + #13#10 +
          'Status',
          'Atenção', MB_OK
          +
          MB_ICONINFORMATION);
          Abort;
    end;
    if Trim(pegarOrdenacao)='' then
    begin
        Application.MessageBox('Verificar Informações de Ordenação !'
          + #13#10 +
          'Ordenação',
          'Atenção', MB_OK
          +
          MB_ICONINFORMATION);
          Abort;
    end;

    frmProcessandoNovo.Show;
    ThreadProcessando.Execute(nil);
    ThreadProcessando.WaitFor;
    frmProcessandoNovo.Hide;
    frmProcessandoNovo.Close;
  except on E: Exception do
    ShowMessage(E.Message);
  end;

end;

procedure TFrmRelProjetoStatusRural.btnExportarDevolvidasClick(Sender: TObject);
var
qry:TFDQuery;
Excel:Variant;
  _CaminhoRelatorio: string;
begin
  inherited;
  try
    try
     qry := TFDQuery.Create(nil);
     qry.Connection:= DataModule1.ConMySql;

     sqlstr:= ' SELECT os.numero_os,os.observacao_geral,n.descricao as nota,os.enderecorural,m.nome_municipio,os.id_statusos,cli.descricao as solicitante '+
             ' from os_engenharia_projeto_rural os '+
            ' INNER JOIN municipios m on os.id_municipio = m.cod_municipio          '+
            ' inner join os_engenharia_clientes_rural cli on os.id = cli.id_projeto '+
            ' inner join os_engenharia_notas_rural n  ON os.id = n.id_os_projeto  where os.id_statusos =8';
            case rgTpPeriodo.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
               end;
              1:begin
                  sqlstr:=sqlstr+' os.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
               2:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                 end;
               3:begin
                  sqlstr:=sqlstr+' and os.dt_envio_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
               4:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
               5:begin
                  sqlstr:=sqlstr+' and os.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
               6:begin
                  sqlstr:=sqlstr+' and os.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
               7:begin
                  sqlstr:=sqlstr+' and os.dt_devolvida between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
              8:begin
                  sqlstr:=sqlstr+' and os.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                end;
            end;

        if(not ConsultaSqlFd(qry,sqlstr))then
       begin
        SemRegistros;
          Abort;
       end
       else
       begin
        Excel := CreateOleObject('Excel.Application');
        Excel.Visible :=False;
        Excel.Workbooks.Add;
        Excel.WorkBooks[1].Sheets[1].Cells[1,3]:='Exportação Devolvidas';

        Excel.WorkBooks[1].Sheets[1].Cells[2,1]:='NOTA';
        Excel.WorkBooks[1].Sheets[1].Cells[2,2]:='OS';
        Excel.WorkBooks[1].Sheets[1].Cells[2,3]:='SOLICITANTE';
        Excel.WorkBooks[1].Sheets[1].Cells[2,4]:='PROPRIEDADE RURAL';
        Excel.WorkBooks[1].Sheets[1].Cells[2,5]:='CIDADE';
        Excel.WorkBooks[1].Sheets[1].Cells[2,6]:='OBS';

        g1.Visible := False;
        g1.MaxValue:= DataModule1.qryCRUD.RecordCount;
        g1.Progress:=0;
        Linha:=3;
        qry.First;
        while(not qry.Eof)do
        begin
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=Trim(qry.FieldByName('nota').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=Trim(qry.FieldByName('numero_os').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=Trim(qry.FieldByName('solicitante').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=Trim(qry.FieldByName('enderecorural').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=Trim(qry.FieldByName('nome_municipio').AsString);
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=Trim(qry.FieldByName('observacao_geral').AsString);
          qry.Next;
          g1.Progress:=g1.Progress+1;
          Inc(Linha);
        end;

        if(SaveDialog1.Execute)then
        begin
           _CaminhoRelatorio:=SaveDialog1.FileName;
           Excel.WorkBooks[1].SaveAs(_CaminhoRelatorio+'.xls');
            Excel.WorkBooks[1].Close;
            Application.MessageBox(PChar('Arquivo criado com sucesso!!!' + #13+_CaminhoRelatorio+'.xls'), PChar(Application.Title), MB_OK + MB_ICONINFORMATION);

        end;
        g1.Visible := True;
       end;
    except on E: Exception do
      Application.MessageBox('O Sistema Se Comportou de Maneira Inesperada !',
        'Atenção', MB_OK + MB_ICONWARNING);
    end;
  finally
    qry.Free;
  end;
end;

procedure TFrmRelProjetoStatusRural.btnrelatorioClick(Sender: TObject);
begin
  inherited;
 try
 if(pegarStatus='')then
  begin
    Application.MessageBox('Definir Parametros de Pesquisa ! Status', 'Atenção',
      MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  if(Trim(pegarStatus)='')then
  begin
          Application.MessageBox('Verificar Informações de Parâmetros !'
        + #13#10 +
        'Status',
        'Atenção', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if Trim(pegarOrdenacao)='' then
  begin
      Application.MessageBox('Verificar Informações de Ordenação !'
        + #13#10 +
        'Ordenação',
        'Atenção', MB_OK
        +
        MB_ICONINFORMATION);
        Abort;
  end;
  if(rgTipo.ItemIndex=1)then
  begin
    //edtini.Clear;
    //edtfim.Clear;
  end;
  CabecalhoRel;
  CorpoRel;
  RodapeRel;
 except on E: Exception do
  CriarLog(Self,E,'Gerando Relatorio Por Status Rural !');
 end;

end;

procedure TFrmRelProjetoStatusRural.CabecalhoRel;
var
_ativo_passivo:string;
  _periodo: string;
begin
 _ativo_passivo:='';
  if rgTipo.ItemIndex <>2 then
  begin
   _ativo_passivo:=' and (ativo_passivo ='+IntToStr(rgTipo.ItemIndex)+')';
  end;

  if(not DataModule1.qryEMPRESA.Active)then
  begin
    DataModule1.qryEMPRESA.Active := True;
  end;
  sqlstr:=' SELECT '+
          ' os_engenharia_projeto_rural.id as id_os,'+
          ' os_engenharia_projeto_rural.numero_os,'+
          ' os_engenharia_projeto_rural.id_municipio,'+
          ' osr.descricao as solicitante,'+
          ' municipios.cod_municipio,          '+
          ' municipios.nome_municipio,         '+
          ' os_engenharia_projeto_rural.dias_topografia ,'+
          ' os_engenharia_projeto_rural.id_statusos, '+
          ' os_engenharia_status_rural.id,           '+
          ' os_engenharia_status_rural.descricao as desc_status, '+
          ' os_engenharia_projeto_rural.dt_chegada_geral as chegada,'+
          ' os_engenharia_projeto_rural.dt_limite_geral as limite,os_engenharia_projeto_rural.dt_conclusao as conclusao '+
          ' FROM                               '+
          ' os_engenharia_projeto_rural        '+
          ' INNER JOIN municipios ON os_engenharia_projeto_rural.id_municipio = municipios.cod_municipio '+
          ' INNER JOIN os_engenharia_status_rural ON os_engenharia_projeto_rural.id_statusos = os_engenharia_status_rural.id '+
          ' LEFT JOIN os_engenharia_clientes_rural osr on (osr.id_projeto = os_engenharia_projeto_rural.id)';
          if(rgGroup.ItemIndex<>3)then
            begin
               case rgGroup.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto_rural.id_tec_campo = fun.id)';
                 end;
               1:begin
                  sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto_rural.id_projetista = fun.id) ';
                end;
               end;
            end;
          sqlstr:=sqlstr+ ' where os_engenharia_status_rural.id in('+pegarStatus+') '+_ativo_passivo;
         { if(rgTipo.ItemIndex=0)then begin
            sqlstr:=sqlstr+   ' and os_engenharia_projeto_rural.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text))+' ';
          end;}
          //periodo
          case rgTpPeriodo.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo:= ' os_engenharia_projeto_rural.dt_chegada_geral';// ='+Trim(QuotedStr(edtUniversalizacao.Text));
               end;
              1:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := 'os_engenharia_projeto_rural.dt_liberacao_tec';
                end;
               2:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_chegada_tec';
                 end;
               3:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_envio_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_envio_topografia';
                end;
               4:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_chegada_topografia';
                end;
               5:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_envio_projeto';
                end;
               6:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_chegada_projeto';
                end;
               7:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_devolvida between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_devolvida ';
                end;
              8:begin
                  sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                  _periodo := ' os_engenharia_projeto_rural.dt_conclusao';
                end;
            end;

            //funcionario
            if(rgGroup.ItemIndex<>3)then
            begin
               case rgGroup.ItemIndex of
               0:begin
                  sqlstr:=sqlstr+' and( os_engenharia_projeto_rural.id_tec_campo = '+edtcodtecnico.Text+')';
                 end;
               1:begin
                  sqlstr:=sqlstr+' and( os_engenharia_projeto_rural.id_projetista = '+edtcodtecnico.Text+')';
                  end;
               end;
            end;

            if Trim(edtcodmunicipio.Text)<>'' then//consulta por cidade
            begin
              sqlstr:= sqlstr + ' and os_engenharia_projeto_rural.id_municipio ='+Trim(edtcodmunicipio.text);
            end;

            if Trim(edtUniversalizacao.Text)<>'' then//univesalizacao
            begin
              sqlstr:= sqlstr + ' and os_engenharia_projeto_rural.universalizacao ='+trim(edtUniversalizacao.Text);
            end;

            sqlstr:=sqlstr+  ' order by '+pegarOrdenacao;

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
    rdprnt1.impf(03,01,'RELATÓRIO DE PROJETOS POR STATUS RURAL',[comp17,negrito]);
    rdprnt1.impf(04,01,'DATA INICIAL: '+edtini.text+' - DATA FINAL: '+edtfim.text,[comp17,negrito]);
    rdprnt1.imp(05,01,_traco137);
    rdprnt1.ImpF(06,01,'NÚMERO OS',[comp17,negrito]);
    rdprnt1.ImpF(06,20,'NOTA',[comp17,negrito]);
    rdprnt1.ImpF(06,50,'SOLICITANTE',[comp17,negrito]);
    rdprnt1.ImpF(06,80,'MUNICIPIO',[comp17,negrito]);
    rdprnt1.ImpF(06,105,'PRAZO',[comp17,negrito]);
    rdprnt1.ImpF(06,120,'STATUS',[comp17,negrito]);
    rdprnt1.imp(07,01,_traco137);
    Linha:=8;
  end;
end;

procedure TFrmRelProjetoStatusRural.chkTodosClick(Sender: TObject);
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

procedure TFrmRelProjetoStatusRural.CorpoRel;
var
qryTemp,qryTemp2 :TFDQuery;
i:Integer;
ant_linha:Integer;
novo_linha,qtdDiasProrrogacao:Integer;
prazo:string;
  notas: string;
begin
    qryTemp:=TFDQuery.Create(nil);
    qryTemp.Connection:=DataModule1.ConMySql;
    sqlstr:='select * from os_config where id=4';
    ConsultaSqlFd(qryTemp,sqlstr);

    qryTemp2:=TFDQuery.Create(nil);
    qryTemp2.Connection:=DataModule1.ConMySql;

  g1.Visible  := true;
  g1.Progress := 0;
  g1.MaxValue := Datamodule1.qryCRUD.RecordCount;
  DataModule1.qryCRUD.First;

  while not DataModule1.qryCRUD.Eof do
  begin
    rdprnt1.ImpF(Linha,01,DataModule1.qryCRUD.FieldByName('numero_os').AsString,[comp20]);

    {******************Carregar Notas*******************}
     sqlstr:='SELECT * FROM os_engenharia_notas_rural N WHERE N.id_os_projeto='+DataModule1.qryCRUD.FieldByName('id_os').AsString;
     ConsultaSqlFd(DataModule1.query01,sqlstr);
     DataModule1.query01.First;
     notas:='';
     while not DataModule1.query01.Eof do
     begin
      notas := notas +DataModule1.query01.FieldByName('descricao').AsString;
      DataModule1.query01.Next;
      if not DataModule1.query01.eof then
        notas:='-';
     end;
     rdprnt1.ImpF((Linha),20,notas,[comp20]);
      {****************fim carregar notas*******************}
     DataModule1.query01.Close;

     rdprnt1.ImpF(Linha,50,Copy(DataModule1.qryCRUD.FieldByName('solicitante').AsString,1,29),[comp20]);
     rdprnt1.ImpF(Linha,80,Copy(dataModule1.qryCRUD.FieldByName('nome_municipio').AsString,1,30),[comp20]);

      {*******************prazo************************}
     sqlstr:='select * from os_cargahoraria where id_projeto ='+DataModule1.qryCRUD.FieldByName('id_os').AsString+' order by id desc limit 1 ';

   if(ConsultaSqlFd(qryTemp2,sqlstr))then
    begin
     if(qryTemp2.FieldByName('prorrogacao').AsDateTime > DataModule1.qryCRUD.FieldByName('limite').AsDateTime)then
      qtdDiasProrrogacao:=DaysBetween(qryTemp2.FieldByName('prorrogacao').AsDateTime,DataModule1.qryCRUD.FieldByName('limite').AsDateTime)
      else
      qtdDiasProrrogacao:=0;
    end;
   if((DataModule1.qryCRUD.FieldByName('limite').AsString<>'') and (DataModule1.qryCRUD.FieldByName('conclusao').AsString ='') and (qryTemp2.FieldByName('prorrogacao').AsString=''))then
   begin
    prazo := frmCadastrarProjetorural.CalculaPrazo(DataModule1.qryCRUD.FieldByName('chegada').AsString,'',IntToStr(qryTemp.FieldByName('dias_geral').AsInteger+DataModule1.qryCRUD.FieldByName('dias_topografia').AsInteger))
   end
   else if((DataModule1.qryCRUD.FieldByName('limite').AsString<>'') and (DataModule1.qryCRUD.FieldByName('conclusao').AsString <>'')) then
   begin
    prazo := frmCadastrarProjetoRural.CalculaPrazo(DataModule1.qryCRUD.FieldByName('chegada').AsString,DataModule1.qryCRUD.FieldByName('conclusao').AsString,qryTemp.FieldByName('dias_geral').AsString)
   end
   else if((DataModule1.qryCRUD.FieldByName('limite').AsString<>'')  and (qryTemp2.FieldByName('prorrogacao').AsString<>''))then
    begin prazo := frmCadastrarProjetoRural.CalculaPrazo(DataModule1.qryCRUD.FieldByName('chegada').AsString,'',IntToStr((qryTemp.FieldByName('dias_geral').AsInteger +qtdDiasProrrogacao+DataModule1.qryCRUD.FieldByName('dias_topografia').AsInteger)));
   end;
   rdprnt1.ImpF(Linha,105,Trim(prazo),[comp20]);
   {************************Fim Prazo********************}
   {Status}
   rdprnt1.ImpF(Linha,120,Copy(DataModule1.qryCRUD.FieldByName('desc_status').AsString,1,14),[comp20]);
   Inc(Linha);
   verifica66;    //inserir nova pagina
   g1.Progress := g1.Progress+1;
   datamodule1.qryCRUD.next;
  end;
end;

procedure TFrmRelProjetoStatusRural.E1Click(Sender: TObject);
begin
  inherited;
  btnExportarDevolvidasClick(Self);//chamando evento do botao
end;

procedure TFrmRelProjetoStatusRural.edtcodmunicipioKeyPress(
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
      frmconscidade.tag := 5 ;
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
      end
      else
      begin
        SemRegistros;
        edtcodmunicipio.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmRelProjetoStatusRural.edtcodtecnicoKeyPress(Sender: TObject;
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
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr) then
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

procedure TFrmRelProjetoStatusRural.exportacaoGeral;
var
  _periodo: string;
  _ativo_passivo: string;
  qry,qrySolicitante:TFDQuery;
  _CaminhoRelatorio: STRING;
  Excel: variant;
begin
  try
    try
        _ativo_passivo:='';
        if rgTipo.ItemIndex <>2 then
        begin
         _ativo_passivo:=' and (ativo_passivo ='+IntToStr(rgTipo.ItemIndex)+') ';
        end;

        if(not DataModule1.qryEMPRESA.Active)then
        begin
          DataModule1.qryEMPRESA.Active := True;
        end;
        qry:=TFDQuery.Create(nil);
        qry.Connection:=DataModule1.ConMySql;

        qrySolicitante:=TFDQuery.Create(nil);
        qrySolicitante.Connection:=DataModule1.ConMySql;

        sqlstr:=' SELECT '+
                ' os_engenharia_projeto_rural.id as id_os,'+
                ' os_engenharia_projeto_rural.numero_os,'+
                ' os_engenharia_projeto_rural.id_municipio,os_engenharia_notas_rural.descricao as nota,'+
               // ' osr.descricao as solicitante,'+
                ' municipios.cod_municipio,          '+
                ' municipios.nome_municipio,         '+
                ' os_engenharia_crs.id,os_engenharia_crs.descricao as crs_descricao,'+
                ' os_engenharia_projeto_rural.dias_topografia ,'+
                ' os_engenharia_projeto_rural.id_statusos, '+
                ' os_engenharia_status_rural.id,           '+
                ' os_engenharia_status_rural.descricao as desc_status, '+
                ' os_engenharia_projeto_rural.dt_chegada_geral as chegada,'+
                ' os_engenharia_projeto_rural.dt_limite_geral as limite,'+
                ' os_engenharia_projeto_rural.dt_conclusao as conclusao, '+
                ' fu.nome_razaosocial as nome_projetista,os_engenharia_projeto_rural.topografo as nome_topogado '+
                ' ,fun.nome_razaosocial as nometec,os_engenharia_projeto_rural.* '+
                ' FROM                               '+
                ' os_engenharia_projeto_rural        '+
                ' INNER JOIN municipios ON os_engenharia_projeto_rural.id_municipio = municipios.cod_municipio '+
                ' INNER JOIN os_engenharia_status_rural ON os_engenharia_projeto_rural.id_statusos = os_engenharia_status_rural.id '+
                ' LEFT JOIN cad_funcionarios as fun on (fun.Id = os_engenharia_projeto_rural.id_tec_campo)                                     '+
                ' LEFT JOIN cad_funcionarios as fu on  (fu.Id = os_engenharia_projeto_rural.id_projetista)                                     '+
                ' INNER JOIN OS_engenharia_crs on os_engenharia_projeto_rural.id_crs  = os_engenharia_crs.id'+
                ' inner join os_engenharia_notas_rural on os_engenharia_notas_rural.id_os_projeto = os_engenharia_projeto_rural.id ';
                if(rgGroup.ItemIndex<>3)then
                  begin
                     case rgGroup.ItemIndex of
                     0:begin
                        sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto_rural.id_tec_campo = fun.id)';
                       end;
                     1:begin
                        sqlstr:=sqlstr+' inner join cad_funcionarios fun on ( os_engenharia_projeto_rural.id_projetista = fun.id) ';
                      end;
                     end;
                  end;
                sqlstr:=sqlstr+ ' where os_engenharia_status_rural.id in('+pegarStatus+') '+_ativo_passivo;

                //verificar se e apenas passivo

                case rgTpPeriodo.ItemIndex of
                     0:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_geral between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo:= ' os_engenharia_projeto_rural.dt_chegada_geral';// ='+Trim(QuotedStr(edtUniversalizacao.Text));
                     end;
                    1:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_liberacao_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := 'os_engenharia_projeto_rural.dt_liberacao_tec';
                      end;
                     2:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_tec between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_chegada_tec';
                       end;
                     3:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_envio_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_envio_topografia';
                      end;
                     4:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_chegada_topografia';
                      end;
                     5:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_envio_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_envio_projeto';
                      end;
                     6:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_chegada_projeto between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_chegada_projeto';
                      end;
                     7:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_devolvida between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_devolvida ';
                      end;
                    8:begin
                        sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_conclusao between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_conclusao';
                      end;
                     9:begin
                      sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_solicitacao_topografia between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_solicitacao_topografia';
                     end;
                     10:begin
                      sqlstr:=sqlstr+' and os_engenharia_projeto_rural.dt_liberacao_top between '+QuotedStr(FormataDataMysql(edtini.Text))+' and '+QuotedStr(FormataDataMysql(edtfim.Text));
                        _periodo := ' os_engenharia_projeto_rural.dt_liberacao_top';
                     end;
                  end;

                  //funcionario
                  if(rgGroup.ItemIndex<>3)then
                  begin
                     case rgGroup.ItemIndex of
                     0:begin
                        sqlstr:=sqlstr+' and( os_engenharia_projeto_rural.id_tec_campo = '+edtcodtecnico.Text+')';
                       end;
                     1:begin
                        sqlstr:=sqlstr+' and( os_engenharia_projeto_rural.id_projetista = '+edtcodtecnico.Text+')';
                        end;
                     end;
                  end;

                  if Trim(edtcodmunicipio.Text)<>'' then//consulta por cidade
                  begin
                    sqlstr:= sqlstr + ' and os_engenharia_projeto_rural.id_municipio ='+Trim(edtcodmunicipio.text);
                  end;

                  if Trim(edtUniversalizacao.Text)<>'' then//univesalizacao
                  begin
                    sqlstr:= sqlstr + ' and os_engenharia_projeto_rural.universalizacao ='+trim(edtUniversalizacao.Text);
                  end;

                  sqlstr:=sqlstr+  ' order by '+pegarOrdenacao;

                if(not ConsultaSqlFd(qry,sqlstr))then
                begin
                  SemRegistros;
                  Exit;
                end
                else
                begin
                   CoInitialize(nil);
                  Excel := CreateOleObject('Excel.Application');
                  Excel.Visible :=False;
                  Excel.Workbooks.Add;
                  Excel.WorkBooks[1].Sheets[1].Cells[1,7]:='Exportação Projeto';

                  Excel.WorkBooks[1].Sheets[1].Cells[2,1]:='O.S';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,2]:='NOTA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,3]:='SOLICITANTE';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,4]:='ATENDIDO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,5]:='ENDEREÇO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,6]:='ENDEREÇO RURAL';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,7]:='DT. DEVOLVIDA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,8]:='TELEFONE';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,9]:='MUNICIPIO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,10]:='CRS';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,11]:='DATA CHEGDA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,12]:='UNIVERSALIZAÇÃO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,13]:='DATA LIMITE';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,14]:='DATA CONCLUSÃO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,15]:='SOL. TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,16]:='STATUS';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,17]:='TEC. CAMPO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,18]:='DT. SAIDA CAMPO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,19]:='DT. CHEGADA CAMPO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,20]:='TOPOGRAFO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,21]:='DT. ENVIO TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,22]:='DT. CHEGADA TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,23]:='PROJETISTA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,24]:='DT. ENVIO PROJETISTA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,25]:='DT. CHEGADA PROJETISTA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,26]:='DT. DEVOLVIDA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,27]:='QTD. DIAS TOP.';
                  {DOCUMENTACAO}
                  Excel.WorkBooks[1].Sheets[1].Cells[2,28]:='DOC. PASSAGEM';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,29]:='DOC. TERRA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,30]:='DOC. CARTA CLASS.';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,31]:='DOC. PESSOAIS';

                  Excel.WorkBooks[1].Sheets[1].Cells[2,32]:='QTD POSTE PROJ. URB';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,33]:='QTD POSTE PROJ. RURAL';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,34]:='QTD POSTE LEVANTADO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[2,35]:='QTD POSTE ATUALIZADO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,35]:='TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,36]:='TRAVESSIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,37]:='INCORPORAÇÃO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[2,39]:='IMPROCEDENTE';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,38]:='DESLOCAMENTO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,39]:='OUTROS';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,40]:='LEVANTAMENTO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,41]:='VL. POSTE PROJ. URB';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,42]:='VL. POSTE PROJ. RURAL';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,43]:='VL. POSTE LEVANTADO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[2,45]:='VL. POSTE ATUALIZADO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,44]:='VL. TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,45]:='VL. TRAVESSIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,46]:='VL. INCORPORAÇÃO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[2,49]:='VL. IMPROCEDENTE';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,57]:='VL. DESLOCAMENTO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,48]:='VL. OUTROS';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,49]:='VL. LEVANTAMENTO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,50]:='OBSERVAÇÃO';
                  Excel.WorkBooks[1].Sheets[1].Cells[2,51]:='ATIVO_PASSIVO';
                end;

                //gravar informacoes
                qry.First;
                g1.MaxValue:=qry.RecordCount;
                Linha :=3;
                while(not qry.Eof)do
                begin
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:=qry.FieldByName('numero_os').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=qry.FieldByName('nota').AsString;
                  //CONSULTAR solicitante
                 if ConsultaSqlFd(qrySolicitante,'select * from os_engenharia_clientes_rural where id_projeto= '+qry.FieldByName('id_os').AsString) then
                 begin
                  qrySolicitante.First;
                  while not qrySolicitante.Eof do
                  begin
                    Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:= Trim(qrySolicitante.FieldByName('descricao').AsString) + ' ';
                    qrySolicitante.Next;
                  end;

                 end;

                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=qry.FieldByName('solicitanteatendido').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=qry.FieldByName('endereco').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=qry.FieldByName('enderecorural').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:=qry.FieldByName('dt_devolvida').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:='TELEFONE';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:=qry.FieldByName('nome_municipio').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:=qry.FieldByName('crs_descricao').AsString;
                  if trim(qry.FieldByName('dt_chegada_geral').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:= qry.FieldByName('dt_chegada_geral').AsDateTime;

                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:=qry.FieldByName('universalizacao').AsString;
                  if Trim(qry.FieldByName('dt_limite_geral').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:=qry.FieldByName('dt_limite_geral').AsDateTime;
                  if Trim(qry.FieldByName('dt_conclusao').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:= qry.FieldByName('dt_conclusao').AsDateTime;

                  if Trim(qry.FieldByName('dt_solicitacao_topografia').AsString)<>'' then  Excel.WorkBooks[1].Sheets[1].Cells[Linha,15]:=qry.FieldByName('dt_solicitacao_topografia').AsDateTime;

                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,16]:=qry.FieldByName('desc_status').AsString;
                  {Tec Campo}
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,17]:=qry.FieldByName('nometec').AsString;
                  if Trim(qry.FieldByName('dt_liberacao_tec').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:=qry.FieldByName('dt_liberacao_tec').AsDateTime;
                  if Trim(qry.FieldByName('dt_chegada_tec').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,19]:=qry.FieldByName('dt_chegada_tec').AsDateTime;
                  {Topografo}
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,20]:=qry.FieldByName('nome_topogado').AsString;
                  if Trim(qry.FieldByName('dt_envio_topografia').AsString)<>'' then  Excel.WorkBooks[1].Sheets[1].Cells[Linha,21]:=qry.FieldByName('dt_envio_topografia').AsDateTime;
                  if Trim(qry.FieldByName('dt_chegada_topografia').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,22]:=qry.FieldByName('dt_chegada_topografia').AsDateTime;
                  {Projetista}
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,23]:=qry.FieldByName('nome_projetista').AsString;
                  if Trim(qry.FieldByName('dt_envio_projeto').AsString)<>'' then  Excel.WorkBooks[1].Sheets[1].Cells[Linha,24]:=qry.FieldByName('dt_envio_projeto').AsDateTime;
                  if Trim(qry.FieldByName('dt_chegada_projeto').AsString)<>'' then Excel.WorkBooks[1].Sheets[1].Cells[Linha,25]:=qry.FieldByName('dt_chegada_projeto').AsDateTime;

                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,26]:=qry.FieldByName('dt_devolvida').AsString;
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,27]:=qry.FieldByName('dias_topografia').AsString;
                  {DOCUMENTACAO}
                  if qry.FieldByName('doc_celtins_passagem').AsInteger=1 THEN Excel.WorkBooks[1].Sheets[1].Cells[Linha,28]:='OK';
                  if qry.FieldByName('doc_celtins_terra').AsInteger=1  then Excel.WorkBooks[1].Sheets[1].Cells[Linha,29]:='OK';// 'DOC. TERRA';
                  if qry.FieldByName('doc_celtins_rural').AsInteger = 1 THEN Excel.WorkBooks[1].Sheets[1].Cells[Linha,30]:='OK'; //'DOC. CARTA CLASS.';
                  if qry.fieldbyname('doc_celtins_pessoais').AsInteger=1 THEN Excel.WorkBooks[1].Sheets[1].Cells[Linha,31]:='OK';//'DOC. PESSOAIS';
                  {quantidade}
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,32]:=qry.FieldByName('qtd_post_proj_urb').AsFloat; //'QTD POSTE PROJ. URB';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,33]:=qry.FieldByName('qtd_post_proj_rur').AsFloat; //'QTD POSTE PROJ. RURAL';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,34]:=qry.FieldByName('qtd_post_lev').AsFloat; //'QTD POSTE LEVANTADO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[Linha,35]:=qry.FieldByName('qtd_post_atu').AsFloat; //'QTD POSTE ATUALIZADO';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,35]:=qry.FieldByName('qtd_topografia').AsFloat; //'TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,36]:=qry.FieldByName('qtd_travessia').AsFloat; //'TRAVESSIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,37]:=qry.FieldByName('qtd_incorporacao').AsFloat; //'INCORPORAÇÃO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[Linha,39]:=qry.FieldByName('qtd_improcedente').AsFloat; //'IMPROCEDENTE';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,38]:=qry.FieldByName('qtd_deslocamento').AsFloat; //'DESLOCAMENTO';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,39]:=qry.FieldByName('qtd_outros').AsFloat; //'OUTROS';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,40]:=qry.FieldByName('qtd_levantamento').AsFloat; //'OUTROS';
                  {valores}
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,41]:=qry.FieldByName('vl_post_proj_urb').AsFloat;//'VL. POSTE PROJ. URB';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,42]:=qry.FieldByName('vl_post_porj_rur').AsFloat;//'VL. POSTE PROJ. RURAL';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,43]:=qry.FieldByName('vl_post_lev').AsFloat;///VL. POSTE LEVANTADO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[Linha,45]:=qry.FieldByName('vl_post_atu').AsFloat;//'VL. POSTE ATUALIZADO';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,44]:=qry.FieldByName('vl_topografia').AsFloat;//'VL. TOPOGRAFIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,45]:=qry.FieldByName('vl_travessia').AsFloat;// 'VL. TRAVESSIA';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,46]:=qry.FieldByName('vl_incorporacao').AsFloat;// 'VL. INCORPORAÇÃO';
                  //Excel.WorkBooks[1].Sheets[1].Cells[Linha,49]:=qry.FieldByName('vl_improcedente').AsFloat;// 'VL. IMPROCEDENTE';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,47]:=qry.FieldByName('vl_deslocamento').AsFloat;// 'VL. DESLOCAMENTO';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,48]:=qry.FieldByName('vl_outros').AsFloat;// 'VL. OUTROS';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,49]:=qry.FieldByName('vl_levantamento').AsFloat;// 'VL. OUTROS';
                  Excel.WorkBooks[1].Sheets[1].Cells[Linha,50]:=qry.FieldByName('observacao_geral').AsString;// 'VL. OUTROS';
                  case qry.FieldByName('ativo_passivo').AsInteger of
                    0:begin
                      Excel.WorkBooks[1].Sheets[1].Cells[Linha,51]:= 'Ativo' ;// ativo passivo
                    end;
                    1:begin
                      Excel.WorkBooks[1].Sheets[1].Cells[Linha,51]:= 'Passivo' ;
                    end;
                  end;

                  qry.Next;
                  g1.Progress:=g1.Progress+1;
                  Inc(Linha);
                end;

                //FdgLocal.Directory:='';
                //FdgLocal.Caption  :='Relatório Exportação';
                //FdgLocal.Title    :='Defina o local de salvamento do arquivo';
                if(SaveDialog1.Execute)then
                begin
                   _CaminhoRelatorio:=SaveDialog1.FileName;
                   Excel.WorkBooks[1].SaveAs(_CaminhoRelatorio+'.xls');
                   Excel.WorkBooks[1].Close;
                   Application.MessageBox(PChar('Arquivo criado com sucesso!!!' + #13 +_CaminhoRelatorio+'.xls'), PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
                end;
                g1.Visible := True;

    except on E: Exception do
      Application.MessageBox('O Sistema se Comportou de Modo Inesperado!' +
        #13#10 + ' Entre em Contato com o Suporte.', 'Atenção', MB_OK +
        MB_ICONWARNING);

    end;
  finally
    qry.Free;
    qrySolicitante.Free;
  end;
end;

procedure TFrmRelProjetoStatusRural.FormShow(Sender: TObject);
begin
  inherited;
  InicialCizaComponente;
end;

procedure TFrmRelProjetoStatusRural.InicialCizaComponente;
begin
  edtini.Text := funcRetornaPrimeiroDiaMes;
  edtfim.Text := funcRetornaUltimoDiaMes;
end;

procedure TFrmRelProjetoStatusRural.limparCampos;
begin
  edtcodmunicipio.Clear;
  edtdesctecnico.Clear;
  edtdescmunicipio.Clear;
  edtUniversalizacao.Clear;
end;

function TFrmRelProjetoStatusRural.pegarStatus: string;
begin
//
  if(chkcadastrada.Checked)then Result:='1';
  if(chkLevantamento.Checked)then begin if(Result='')then Result:='2' else Result:= Result+',2'end;
  if(chkImprocedente.Checked)then begin if(Result='')then Result:='3' else Result:= Result+',3' end;
  if(chksoltopografia.Checked)then begin if(Result='')then Result:='4' else Result:= Result+',4' end;
  if(chkTopografia.Checked)then begin if(Result='')then Result:='5' else  Result:= Result+',5' end;
  if(chkprojeto.Checked)then begin if(Result='')then Result:='6' else  Result:= Result+',6' end;
  if(chkConcluido.Checked)then begin if(Result='')then Result:='7' else  Result:= Result+',7' end;
  if(chkDevolvida.Checked)then begin if(Result='')then Result:='8' else  Result:= Result+',8' end;
  if(chkConImprocedente.Checked)then begin if(Result='')then Result:='9' else  Result:= Result+',9' end;
  if(chkTopLiberada.Checked)then begin if(Result='')then Result:='10' else  Result:= Result+',10' end;

end;

procedure TFrmRelProjetoStatusRural.RodapeRel;
begin
  rdprnt1.impf(linha,01,_traco137,[comp17]);
  Inc(linha);
  rdprnt1.impf(linha,01,'Total de Projetos',[comp17]);
  rdprnt1.impf(linha,75,inttostr(datamodule1.qryCRUD.RecordCount),[comp17]);
  rdprnt1.Fechar;
  g1.Progress := 0;
end;

procedure TFrmRelProjetoStatusRural.ThreadProcessandoExecute(
  Sender: TObject; Params: Pointer);
begin
  inherited;
    exportacaoGeral;
end;

procedure TFrmRelProjetoStatusRural.verifica66;
begin
  if linha >= 62 then
  begin
    rdprnt1.novapagina;
    linha:=2;
  end;
end;

function TFrmRelProjetoStatusRural.pegarOrdenacao: string;
begin
  if (chkStatus.Checked) then
  begin
    Result := ' os_engenharia_status_rural.descricao ';
  end;
  if(chkPeriodo.Checked) then
  begin
    if (Result='')then Result := pegarPeriodo else Result := Result+',' +pegarPeriodo ;
  end;
end;

function TFrmRelProjetoStatusRural.pegarPeriodo: string;
begin
  //periodos
            case rgTpPeriodo.ItemIndex of
              0:begin
                Result:=  'os_engenharia_projeto_rural.dt_chegada_geral';
              end;
              1:begin
                Result:= 'os_engenharia_projeto_rural.dt_liberacao_tec';
                end;
               2:begin
                 Result:='os_engenharia_projeto_rural.dt_chegada_tec';
                 end;
               3:begin
                Result:= 'os_engenharia_projeto_rural.dt_envio_topografia';
                end;
               4:begin
                Result:= 'os_engenharia_projeto_rural.dt_chegada_topografia';
                end;
               5:begin
                Result:='os_engenharia_projeto_rural.dt_envio_projeto';
                end;
               6:begin
                Result:='os_engenharia_projeto_rural.dt_chegada_projeto';
                end;
               7:begin
                Result:='os_engenharia_projeto_rural.dt_devolvida';
                 end;
              8:begin
                Result:='os_engenharia_projeto_rural.dt_conclusao';
                end;
              9:begin
                Result:='os_engenharia_projeto_rural.dt_solicitacao_topografia';
               end;
               10:begin
                Result:='os_engenharia_projeto_rural.dt_liberacao_top';
               end;
            end;
end;

end.
