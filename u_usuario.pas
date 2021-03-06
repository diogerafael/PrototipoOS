unit u_usuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleServer,Gauges, ShellAPI,COMOBJ, jpeg,
  ExtCtrls, AdoDB, pngimage, Vcl.Buttons, Vcl.Menus;

type
  TFrmusuario = class(TForm)
    edtusuario: TEdit;
    edtsenha: TEdit;
    img3: TImage;
    lbltipo: TLabel;
    img1: TImage;
    img2: TImage;
    lbl1: TLabel;
    spbliberacao: TSpeedButton;
    pmdesc: TPopupMenu;
    SolicitarLiberaodeClienteNegativado1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtsenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SolicitarLiberaodeClienteNegativado1Click(Sender: TObject);
    procedure spbliberacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  qrypesq : TAdoQuery;
    { Private declarations }
  function permissao(): integer;
  public
    { Public declarations }
  end;

var
  Frmusuario: TFrmusuario;

implementation

uses DataModule;

{$R *.DFM}

procedure TFrmusuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   selectnext(activecontrol, true, true);
end;

procedure TFrmusuario.FormShow(Sender: TObject);
begin
  spbliberacao.Visible                         := False;
  SolicitarLiberaodeClienteNegativado1.Visible := False;
  if frmusuario.Tag = 16 then
  begin
    spbliberacao.Visible                         := True;
    SolicitarLiberaodeClienteNegativado1.Visible := True;
  end;
  edtusuario.Clear;
  edtsenha.Clear;
  edtusuario.SetFocus;
end;

procedure TFrmusuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frmusuario := nil;
end;

procedure TFrmusuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then  close;
end;

procedure TFrmusuario.edtsenhaKeyPress(Sender: TObject; var Key: Char);
var varsenha : string;
begin
  if key = #13 then
  begin

    if Obrigatorio(Self, edtusuario, 'Informe o Usu�rio !') then Exit;

    if Obrigatorio(Self, edtsenha, 'Informe a Semnha !') then Exit;
    {
    if frmusuario.Tag = 0 then //Liberar Desconto Sub-Total
    begin
      if permissao = 0 then
      begin
        edtusuario.setfocus;
        exit;
      end;
      //_liberadescontoitem := false;
      frmusuario.close;
    end;
    }
    if frmusuario.Tag = 1 then //Liberar Acesso no Par�metro do Sistema
    begin
      _liberaacesso := false;
      if Trim(edtusuario.text) = '100' then
      begin
        if SenhaPadrao(Trim(edtsenha.Text),'O') = True then
        begin
          _liberaacesso := true;
          frmusuario.close;
        end
        else
        begin
          Application.MessageBox('Senha Inv�lida!', 'Aten��o!', MB_OK +MB_ICONWARNING);
          edtusuario.setfocus;
        end;
      end
      else
      Application.MessageBox('C�digo Inv�lido!', 'Aten��o!', MB_OK +MB_ICONWARNING);
    end;
    {
    //Autorizar venda acima do configurado
    if Frmusuario.tag = 2 then
    begin
      //_autorizouvendasuperior := False;
      if Trim(edtusuario.text) = '100' then
      begin
        if SenhaPadrao(Trim(edtsenha.Text),'A') = True then
          begin
            //_autorizouvendasuperior := True;
            //DescontoAutorizado(frmcaixapagamento.lblnrvenda.caption,frmcaixapagamento.lblnomecliente.caption,frmcaixapagamento.lblsubtotal.caption,FloatToStr(100*(StrToFloat(frmcaixapagamento.lbldesctotal.caption)/StrToFloat(frmcaixapagamento.lblsubtotal.caption))),frmcaixapagamento.lbldesctotal.Caption,frmcaixapagamento.lblnomevendedor.caption,edtusuario.text,'3');
            frmusuario.close;
          end
        else
        begin
          Application.MessageBox('Senha Inv�lida!', 'Aten��o!', MB_OK +MB_ICONWARNING);
          edtusuario.setfocus;
          Abort;
        end;
      end
      else
      begin

        //_grupo                :=  '00';
        {sqlstr := ''+
        'select * from uccaduser where login='+edtusuario.Text;
        if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        begin
          _grupo := datamodule1.qry.FieldByName('perfil').AsString;
          varsenha := crypt('D',datamodule1.qry.fieldbyname('senha').asstring,'HELIO');
          if varsenha <> edtsenha.Text then
          begin
            Application.MessageBox('Senha Inv�lida!', 'Aten��o!', MB_OK +MB_ICONWARNING);
            Abort;
          end;
        end;
        }
        {
        strSql := 'select * from uccadperm where ((iduser = '+edtusuario.Text+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('PafEcfAutorizarVendaAcimadoLimite');
        if ConsultaSql(datamodule1.qry,strSql) <> 0 then
        begin
          Application.MessageBox('Aten��o! Usu�rio Sem Permiss�o!',PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          _autorizouvendasuperior := False;
          //frmusuario.close;
          Abort;

        end; }
         { _autorizouvendasuperior := True;
          DescontoAutorizado(frmcaixapagamento.lblnrvenda.caption,frmcaixapagamento.lblnomecliente.caption,frmcaixapagamento.lblsubtotal.caption,FloatToStr(100*(StrToFloat(frmcaixapagamento.lbldesctotal.caption)/StrToFloat(frmcaixapagamento.lblsubtotal.caption))),frmcaixapagamento.lbldesctotal.Caption,frmcaixapagamento.lblnomevendedor.caption,edtusuario.text,'3');
          frmusuario.close;
      end;
//      if not ValidaValorVenda(edtusuario.text,edtsenha.text) then
//        _autorizouvendasuperior := false
//      else
//      begin
//        _autorizouvendasuperior := true;
//        //Insere em descontos autorizados
//        DescontoAutorizado(frmcaixapagamento.lblnrvenda.caption,frmcaixapagamento.lblnomecliente.caption,frmcaixapagamento.lblsubtotal.caption,FloatToStr(100*(StrToFloat(frmcaixapagamento.lbldesctotal.caption)/StrToFloat(frmcaixapagamento.lblsubtotal.caption))),frmcaixapagamento.lbldesctotal.Caption,frmcaixapagamento.lblnomevendedor.caption,edtusuario.text,'3');
//      end;
//      frmusuario.close;
    end;
    {
    if frmusuario.Tag = 3 then //Liberar Desconto Item da Loca��o
    begin
      _liberaacesso := False;
      if permissao = 0 then
      begin
        edtusuario.setfocus;
        exit;
      end;
      _liberaacesso := True;
      frmusuario.close;
    end;

    if frmusuario.Tag = 4 then //Autorizar o Cancelamento da Loca��o
    begin
      _liberaacesso := False;
      if permissao = 0 then
      begin
        edtusuario.setfocus;
        exit;
      end;
      _liberaacesso := True;
      frmusuario.close;
    end;

    if frmusuario.Tag = 5 then //Autorizar Baixa de Contas a Receber com Valor a Menor
    begin
      _liberaacesso := False;

      if Trim(edtusuario.text) = '100' then
      begin
        if SenhaPadrao(Trim(edtsenha.Text),'A') = True then
        begin
          _liberaacesso := True;
          frmusuario.close;
        end
        else
        begin
          Application.MessageBox('Senha Inv�lida!', 'Aten��o!', MB_OK +MB_ICONWARNING);
          edtusuario.setfocus;
          Abort;
        end;
      end
      else
      begin
        NovoAcessoPermissao('AutorizarBaixarParcelaValorMenor');
        _liberaacesso := True;
        frmusuario.close;
      end;
    end;

    if frmusuario.Tag = 6 then //Liberar Forma��o de Pre�o de Venda R�pida
    begin

      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('MovimentacaoFormarPrecoVendaRapido');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;
    }
    {
    if frmusuario.Tag = 7 then //Liberar desconto solicitado
    begin
      _liberaacesso := False;

      if Trim(edtusuario.text) = '100' then
      begin
        if SenhaPadrao(Trim(edtsenha.Text),'A') = True then
        begin
          _liberaacesso := True;
          frmusuario.close;
        end
        else
        begin
          Application.MessageBox('Senha Inv�lida!', 'Aten��o!', MB_OK +MB_ICONWARNING);
          edtusuario.setfocus;
          Abort;
        end;
      end
      else
      begin

        _grupo                :=  '00';
        sqlstr := ''+
        'select * from uccaduser where login='+edtusuario.Text;
        if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        begin
          _grupo := datamodule1.qry.FieldByName('perfil').AsString;
          varsenha := crypt('D',datamodule1.qry.fieldbyname('senha').asstring,'HELIO');
          if varsenha <> edtsenha.Text then
          begin
            Application.MessageBox('Senha Inv�lida!', 'Aten��o!', MB_OK +MB_ICONWARNING);
            Abort;
          end;
        end;


        strSql := 'select * from uccadperm where ((iduser = '+edtusuario.Text+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('LiberarDescontoAutomaticamente');
        if ConsultaSql(datamodule1.qry,strSql) <> 0 then
        begin
          Application.MessageBox('Aten��o! Usu�rio Sem Permiss�o!',PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
          Abort;
        end;
        _liberaacesso := True;
        frmusuario.close;
      end;
    end;

    if frmusuario.Tag = 8 then //ALTERAR PRE�O DOS PRODUTOS POR DEPARTAMENTALIZA��O
    begin

      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('MovimentacaoAlteracaoPrecosDepartamentos');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;

    if frmusuario.Tag = 9 then //VINCULA��O AUTOMATICA DE TODOS OS PRODUTOS AO LOTE
    begin
      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('ExtraConfeccoesVincularProdutoLoteInserir');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
        _liberaacesso :=  true;
        frmusuario.close;
    end;

    if frmusuario.Tag = 10 then //DEPARTAMENTALIZA��O/PRODUTOS COM COMISSAO DIFERENCIADA
    begin
      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('CadastroProdutosComissaoDiferenciadaInserir');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;

    if frmusuario.Tag = 11 then //EXCLUIR TODAS CONTAS A RECEBER
    begin

      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('FinanceiroContasReceberExcluirTodasasParcelasemAberto');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;

    if frmusuario.Tag = 12 then //EXCLUIR TODAS CONTAS A paga
    begin

      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('FinanceiroContasPagarExcluirTodasasParcelasemAberto');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;
    //libera acesso para alterar todos os departamento mercadol�gico....
    if frmusuario.Tag = 13 then
    begin
      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('CadastroDepartamentosAlterarTodososProdutosMercadoLogico');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;
    //LIBERA LIMITE EXCEDIDO DAVPREVENDA
    if frmusuario.Tag = 14 then
    begin
      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);

      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('LiberarLimiteConvenioExcedido');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;

    if frmusuario.Tag = 15 then //EXCLUIR USU�RIOS INATIVOS
    begin

      _grupo                :=  '00';
      sqlstr := ''+
      'select perfil from uccaduser where login = '+trim(edtusuario.text);
      if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
        _grupo := datamodule1.qry.FieldByName('perfil').AsString;

      strSql := 'select * from uccadperm where ((iduser = '+trim(edtusuario.text)+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('ExcluirUsuarioInativo');
      if ConsultaSql(datamodule1.qry,strSql) <> 0 then
      begin
        Application.MessageBox('OP��O N�O DISPON�VEL PARA ESTE USU�RIO','Aten��o!', MB_OK + MB_ICONWARNING);
        _liberaacesso :=  False;
        edtsenha.SetFocus;
        exit;
      end
      else
         _liberaacesso :=  true;
      frmusuario.close;
    end;

    if frmusuario.Tag = 16 then //Liberar Cliente Netagivado
    begin
      sqlstr := ''+
      'select * from uccaduser where login = '+QuotedStr(Trim(edtusuario.Text))+' and status=1';
      if ConsultaSql(datamodule1.qry,sqlstr) <> 0 then
      begin
        Application.MessageBox('Aten��o! Usu�rio N�o Cadastrado!',PChar(Application.Title), MB_OK + MB_ICONWARNING);
        edtusuario.setfocus;
        Abort;
      end;
      varsenha := crypt('D',datamodule1.qry.fieldbyname('senha').asstring,'HELIO');
      if Trim(edtsenha.text) = varsenha then
        begin
          _grupo                :=  '00';
          sqlstr := ''+
          'select perfil from uccaduser where login='+QuotedStr(Trim(edtusuario.Text));
          if ConsultaSql(datamodule1.qry,sqlstr) = 0 then
            _grupo := datamodule1.qry.FieldByName('perfil').AsString;
          sqlstr := 'select * from uccadperm where ((iduser = '+edtusuario.Text+' and tipo=''U'') or (iduser = '+_grupo+' and tipo=''P'')) and AES_DECRYPT(objname,''280676QUANTUM01042004'') = '+QuotedStr('LiberarVendaParaClienteNegativado');
          if ConsultaSql(datamodule1.qry,sqlstr) <> 0 then
          begin
            Application.MessageBox('Aten��o! Usu�rio Sem Permiss�o!',PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
            Abort;
          end;
          _CodQuemAutorizou := Trim(edtusuario.Text);
          _autorizado       := True;
          frmusuario.close;
        end
      else
      begin
        Application.MessageBox('Aten��o! Senha Inv�lida!', PChar(Application.Title), MB_OK + MB_ICONWARNING);
        edtsenha.SetFocus;
        Abort;
      end;
    end;
    }
  end;
end;

function TFrmusuario.permissao: integer;
var _retorno : integer;
    versenha : string;
begin
  _retorno := 0;
  with datamodule1.query01 do
  begin
    close;
    sql.clear;
    sql.add('select * from operadorfiscal where codigo = '+edtusuario.text);
    open;
    if recordcount = 0 then
      Application.MessageBox('Aten��o! Usu�rio N�o Cadastrado !', PChar(Application.Title),MB_OK + MB_ICONINFORMATION)
    else
    begin
      versenha := crypt('D',fieldbyname('senha').VALUE,'HELIO');
      if edtsenha.text <> versenha then
        Application.MessageBox('Aten��o! Senha Inv�lida !', PChar(Application.Title),MB_OK + MB_ICONINFORMATION)
      else
      if fieldbyname('tipo').asinteger = 0 then
        Application.MessageBox('Aten��o! Usu�rio N�o Autorizado !', PChar(Application.Title),MB_OK + MB_ICONINFORMATION)
      else
        _retorno := 1;
    end;
  end;
  result := _retorno;
end;

procedure TFrmusuario.SolicitarLiberaodeClienteNegativado1Click(
  Sender: TObject);
begin
  {if frmautorizadesconto = nil then
  Application.CreateForm(Tfrmautorizadesconto,frmautorizadesconto);
  frmautorizadesconto.Label1.Caption  := 'Autoriza��o de Venda para Cliente Bloqueado';

  sqlstr := 'select u.login as codigo,u.nome  from uccaduser as u '+
  ' inner join uccadperm as p on u.login=p.iduser where AES_DECRYPT(p.objname,''280676QUANTUM01042004'') = '+
  QuotedStr('LiberarVendaParaClienteNegativado')+' and u.logado=1';

  if ConsultaSql(frmautorizadesconto.qrylogado,sqlstr) <> 0 then
  begin
    Application.MessageBox(' Aten��o! N�o Existe Usu�rio LOGADO com Permiss�o '+ #13#10 + ' Para Autoriza��o! Por Favor Chamar o Fiscal de Caixa!',PChar(Application.Title), MB_OK + MB_ICONWARNING);
    Abort;
  end;

  //Criando e chamando o formul�rio
  frmautorizadesconto.ShowModal;}
end;

procedure TFrmusuario.spbliberacaoClick(Sender: TObject);
begin
  pmdesc.Popup(Self.Left + 3 + spbliberacao.Left,Self.top+spbliberacao.Top + spbliberacao.Height + 28);
end;

end.
