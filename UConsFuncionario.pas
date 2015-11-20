unit UConsFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, Grids, DBGrids, StdCtrls, Buttons, PngSpeedButton,
  ExtCtrls, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uFrmCadastrarRevisao, UFrmConsultaRapidaRural, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrmConsFuncionario = class(TForm)
    shp1: TShape;
    lbltipo: TLabel;
    img10: TImage;
    lbl1: TLabel;
    btnsair: TPngSpeedButton;
    edtnome: TEdit;
    dbgrid1: TDBGrid;
    pm1: TPopupMenu;
    mniCalculadoraF81: TMenuItem;
    mniN3: TMenuItem;
    ds1: TDataSource;
    cbbopcao: TComboBox;
    Label2: TLabel;
    ConsultarPorNome1: TMenuItem;
    N1: TMenuItem;
    ConsultarPorCPFCNPJ1: TMenuItem;
    N2: TMenuItem;
    Consultar1: TMenuItem;
    stgrel: TStringGrid;
    pm2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    qry: TFDQuery;
    chkFornecedor: TCheckBox;
    procedure cbbopcaoEnter(Sender: TObject);
    procedure cbbopcaoExit(Sender: TObject);
    procedure dbgrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrid1TitleClick(Column: TColumn);
    procedure cbbopcaoChange(Sender: TObject);
    procedure ConsultarPorNome1Click(Sender: TObject);
    procedure ConsultarPorCPFCNPJ1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure edtnomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnsairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);

  private
    { Private declarations }
    procedure CarregaDados;
    function JaTemFuncionarioSelecionado(_opcao:string): boolean;
    procedure InicializaStringGrid;
    procedure CarregaDadosVariosFuncionarios;
    procedure RemoverFuncionarioSelecionado;
  public
    { Public declarations }
  end;

var


  FrmConsFuncionario: TFrmConsFuncionario;

implementation

uses DataModule,uFrmCadastrarProjeto, uCadastrarConfig,
  uFrmCadastrarProjetoRural, uFrmCadastrarRevisaoRural,
  URelProjetoPorStatus, UFrmConsultaRapida, UFrmDedoDuro, UFrmDedoDuroRural,
  URelProdutividade, U_ordermServicoInterno, URelServicoInterno;

{$R *.dfm}

procedure TFrmConsFuncionario.btnsairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsFuncionario.cbbopcaoChange(Sender: TObject);
begin
  if cbbopcao.ItemIndex = 0 then
  begin
    lbltipo.Caption :='Digite o Nome do Funcionário';
    edtnome.SetFocus;
  end
  else
  if cbbopcao.ItemIndex = 1 then
  begin
    lbltipo.Caption :='Digite o Cpf Cnpj';
    edtnome.SetFocus;
  end
  else
  if cbbopcao.ItemIndex = 2 then
  begin
    lbltipo.Caption :='Digite o Nome dos Funcionários Desativados';
    edtnome.SetFocus;
  end;
  if cbbopcao.ItemIndex = 3 then
  begin
    lbltipo.Caption :='Digite o Número do C.B.O dos Funcionários';
    edtnome.SetFocus;
  end;

end;

procedure TFrmConsFuncionario.cbbopcaoEnter(Sender: TObject);
begin
  //FocoEntradaCombo(Self,Sender);
end;

procedure TFrmConsFuncionario.cbbopcaoExit(Sender: TObject);
begin
//  FocoSaidaCombo(Self,Sender);
end;

procedure TFrmConsFuncionario.Consultar1Click(Sender: TObject);
begin
  lbltipo.Caption :='Digite o Nome do Funcionário Inativo';
  cbbopcao.ItemIndex := 2;
  edtnome.SetFocus;
end;

procedure TFrmConsFuncionario.ConsultarPorCPFCNPJ1Click(Sender: TObject);
begin
    cbbopcao.ItemIndex  := 1;
    lbltipo.Caption     :='Digite o  CPF/CNPJ';
    edtnome.SetFocus;

end;

procedure TFrmConsFuncionario.ConsultarPorNome1Click(Sender: TObject);
begin
    cbbopcao.ItemIndex := 0;
    lbltipo.Caption :='Digite o Nome do Funcionários';
    edtnome.SetFocus;
end;

procedure TFrmConsFuncionario.dbgrid1DblClick(Sender: TObject);
begin
  CarregaDados();
end;

procedure TFrmConsFuncionario.dbgrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 // with DBGrid1 do
//  begin
//    with Canvas do
//    begin
//      if not (gdSelected in State) then
//      Begin // Se o estado da célula não é selecionado
//        with DataSource.DataSet do
//        begin
//          if not(Odd(RecNo)) then
//          begin
//            Brush.Color := _corZebra; // Cor da célula
//          end;
//        end;
//      end
//      else
//      begin
//        with DataSource.DataSet do
//        begin
//          Font.Color := clYellow;
//        end;
//      end;
//      FillRect (Rect); // Pinta a célula
//      DefaultDrawDataCell (Rect, Column.Field, State) // Reescreve o valor que vem do banco
//    end;
//  end;
end;

procedure TFrmConsFuncionario.dbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13  then
  CarregaDados;

  if FrmConsFuncionario.tag = 7 then
  begin
    if key = #32 then
    begin
      if not qry.IsEmpty then
      begin
        //Vevrificando se já foi inserido alguma conta para determinado cliente
        if not JaTemFuncionarioSelecionado('SEL') then Abort;
        stgrel.Cells[0,stgrel.RowCount] := qry.fieldbyname('id').asstring;
        stgrel.Cells[1,stgrel.RowCount] := qry.fieldbyname('nome_razaosocial').asstring;
        stgrel.Cells[2,stgrel.RowCount] := qry.fieldbyname('endereco').asstring;
        stgrel.Cells[3,stgrel.RowCount] := qry.fieldbyname('cpf_cgc').asstring;
        stgrel.Cells[4,stgrel.RowCount] := qry.fieldbyname('cidade').asstring;
        stgrel.Cells[5,stgrel.RowCount] := qry.FieldByName('telefone').asstring;
        if stgrel.rowcount > 9 then
          stgrel.toprow := stgrel.rowcount;
        stgrel.RowCount := stgrel.RowCount +1;

      end;
    end;
  end;
end;

procedure TFrmConsFuncionario.edtnomeKeyPress(Sender: TObject; var Key: Char);
var
consulta:string;
begin
  if key =#13 then
  begin
    //fornecedor
    if chkFornecedor.Checked then
    begin
      sqlstr:='SELECT CPF_CGC,codigo,NOME_RAZAOSOCIAL from fornecedores where NOME_RAZAOSOCIAL like'+quotedstr(edtnome.Text+'%');
    end
    else
    begin

    //sqlstr:='select u.iduser as id ,u.nome as nome_razaosocial ,u.login as login,os.*,osr.* from uccaduser u left join os_engenharia_acesso os on (u.iduser= os.cod_usuario) left join os_engenharia_acesso_rural  osr on (u.iduser= osr.cod_usuario) ';
      if((FrmConsFuncionario.Tag=5))then
      begin
        consulta:='where nome like'+quotedstr(edtnome.Text+'%')+'  order by nome';
        sqlstr:='select u.iduser as id ,u.nome as nome_razaosocial ,u.login as login,os.* from uccaduser u left join os_engenharia_acesso os on (u.iduser= os.cod_usuario)  '+consulta
      end
      else if(FrmConsFuncionario.Tag=9)then
      begin
        consulta:='where nome like'+quotedstr(edtnome.Text+'%')+'  order by nome_razaosocial';
        sqlstr:='select u.iduser as id ,u.nome as nome_razaosocial ,u.login as login,osr.serv_camp,osr.serv_proj,osr.serv_edt_vl,osr.serv_topografia,osr.serv_vl,osr.serv_ace,osr.cod_usuario '+
                ' from uccaduser u  left join os_engenharia_acesso_rural  osr on (u.iduser= osr.cod_usuario) '+consulta;
      end
      else if FrmConsFuncionario.Tag=15 then
      begin
       consulta :=' where nome like '+quotedstr(edtnome.Text+'%')+' order by nome_razaosocial';
       sqlstr:=' select iduser as id ,nome as nome_razaosocial from uccaduser '+consulta;
      end
      else if FrmConsFuncionario.Tag=16 then
       begin
       consulta :=' where nome like '+quotedstr(edtnome.Text+'%')+' order by nome_razaosocial';
       sqlstr:=' select iduser as id ,nome as nome_razaosocial from uccaduser '+consulta;
       end
      else if FrmConsFuncionario.Tag=17 then
      begin
        consulta:='where nome like'+quotedstr(edtnome.Text+'%')+'  order by nome';
        sqlstr:='select u.iduser as id ,u.nome as nome_razaosocial ,u.login as login,os.* from uccaduser u left join os_engenharia_acesso os on (u.iduser= os.cod_usuario)  '+consulta;
      end
      else
      begin
          if cbbopcao.ItemIndex =0 then
          consulta :=' where nome_razaosocial like'+quotedstr(edtnome.Text+'%')+' and ativo ="1" order by nome_razaosocial'
        else
        if cbbopcao.ItemIndex = 1 then
          consulta :=' where cpf_cgc like'+quotedstr(edtnome.Text+'%')
        else
        if cbbopcao.ItemIndex = 2 then
          consulta :=' where nome_razaosocial like'+quotedstr(edtnome.Text+'%')+' and ativo ="0" order by nome_razaosocial'
        else
        if cbbopcao.ItemIndex = 3 then
          consulta :=' where cbo ='+quotedstr(edtnome.Text)+' and ativo ="1" order by nome_razaosocial';

        sqlstr:=' select * from cad_funcionarios '+consulta;
      end;
    end;


    if not ConsultaSqlFd(qry,sqlstr) then
    begin
      semregistros;
      edtnome.SetFocus;
    end
    else
      dbgrid1.SetFocus;
  end;
end;

procedure TFrmConsFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape   then
  begin
    close;
  end;
end;

procedure TFrmConsFuncionario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then selectnext(activecontrol, true, true);
end;

procedure TFrmConsFuncionario.FormShow(Sender: TObject);
begin
  qry.close;
  edtnome.Clear;
  cbbopcao.ItemIndex := 0;
  edtnome.SetFocus;
  InicializaStringGrid;
end;

procedure TFrmConsFuncionario.dbgrid1TitleClick(Column: TColumn);
begin
  OrdenarDbGrid(qry,column.FieldName);
end;

procedure TFrmConsFuncionario.CarregaDados;
begin
  if not qry.isempty then
  begin
    if FrmConsFuncionario.Tag = 1 then
    begin
      frmCadastrarProjeto.edtcodtecnico.Text   := qry.fieldbyname('id').asstring;
      frmCadastrarProjeto.edtdesctecnico.Text      := qry.fieldbyname('nome_razaosocial').asstring;
    end;

    if FrmConsFuncionario.Tag = 2 then
    begin
      frmCadastrarProjeto.edtcodprojetista.text   := qry.fieldbyname('id').asstring;
      frmCadastrarProjeto.edtdescprojetista.text      := qry.fieldbyname('nome_razaosocial').asstring;
    end;

    if FrmConsFuncionario.Tag = 3 then
    begin
      frmCadastrarProjeto.edtcodtecmub.text   := qry.fieldbyname('id').asstring;
      frmCadastrarProjeto.edtdesctecmub.text      := qry.fieldbyname('nome_razaosocial').asstring;
    end;

    if FrmConsFuncionario.Tag = 5 then
    begin
      frmCadastrarConfig.FidFuncionario       := qry.FieldByName('id').AsInteger;
      frmCadastrarConfig.edtcodtecnico.Text        := qry.FieldByName('login').AsString;
      frmCadastrarConfig.edtdesctecnico.Text  := qry.FieldByName('nome_razaosocial').AsString;
      frmCadastrarConfig.montarObjetosUrbano(qry);
    end;

    if FrmConsFuncionario.Tag = 6 then
    begin
      frmCadastrarProjetoRural.edtcodtecnico.Text   := qry.FieldByName('id').AsString;
      frmCadastrarProjetoRural.edtdesctecnico.Text  := qry.FieldByName('nome_razaosocial').AsString;
    end;

    if (FrmConsFuncionario.Tag = 7) and (chkFornecedor.Checked) then
    begin
      frmCadastrarProjetoRural.edtcodtopografo.Text   := qry.FieldByName('codigo').AsString;
      frmCadastrarProjetoRural.edtdesctopografo.Text  := qry.FieldByName('nome_razaosocial').AsString;
    end;

    if (FrmConsFuncionario.Tag = 7) and (not chkFornecedor.Checked)  then
    begin
      frmCadastrarProjetoRural.edtcodtopografo.Text   := qry.FieldByName('id').AsString;
      frmCadastrarProjetoRural.edtdesctopografo.Text  := qry.FieldByName('nome_razaosocial').AsString;
    end;

    if FrmConsFuncionario.Tag = 8 then
    begin
      frmCadastrarProjetoRural.edtcodprojetista.Text   := qry.FieldByName('id').AsString;
      frmCadastrarProjetoRural.edtdescprojetista.Text  := qry.FieldByName('nome_razaosocial').AsString;
    end;

    if FrmConsFuncionario.Tag = 9 then
    begin
      frmCadastrarConfig.FidFuncionario       := qry.FieldByName('id').AsInteger;
      frmCadastrarConfig.edtCodAcesso.Text   := qry.FieldByName('login').AsString;
      frmCadastrarConfig.edtDescAcesso.Text  := qry.FieldByName('nome_razaosocial').AsString;
      frmCadastrarConfig.montarObjetosUrbanoRural(qry);
    end;
    if(frmCadastrarConfig<>nil)then begin

    end;
    if (Self.Tag = 10) and (chkFornecedor.Checked) then
    begin
      frmCadastrarRevisaoRural.edtcodprojetistarevisao.Text := qry.FieldByName('codigo').AsString;
      frmCadastrarRevisaoRural.edtdescprojetistarevisao.Text := qry.FieldByName('nome_razaosocial').AsString;
    end;
      if (Self.Tag = 10)and (not chkFornecedor.Checked) then
    begin
      frmCadastrarRevisaoRural.edtcodprojetistarevisao.Text := qry.FieldByName('id').AsString;
      frmCadastrarRevisaoRural.edtdescprojetistarevisao.Text := qry.FieldByName('nome_razaosocial').AsString;
    end;
    if(FrmConsFuncionario.Tag=11)then
    begin
      FrmRelProjEstatus.edtcodtecnico.Text :=qry.FieldByName('id').AsString;
      FrmRelProjEstatus.edtdesctecnico.Text :=  qry.FieldByName('nome_razaosocial').AsString;
    end;

    if(FrmConsFuncionario.Tag=12)then
    begin
      frmCadastrarRevisao.edtcodprojetistarevisao.Text  :=qry.FieldByName('id').AsString;
      frmCadastrarRevisao.edtdescprojetistarevisao.Text :=  qry.FieldByName('nome_razaosocial').AsString;
    end;

    if(FrmConsFuncionario.Tag=13)then
    begin
      FrmConsultaRapida.edtcodtecnico.Text  :=  qry.FieldByName('id').AsString;
      FrmConsultaRapida.edtdesctecnico.Text :=  qry.FieldByName('nome_razaosocial').AsString;
    end;

    if FrmConsFuncionario.Tag=14 then
    begin
      FrmConsultaRapidaRural.edtcodtecnico.Text  :=  qry.FieldByName('id').AsString;
      FrmConsultaRapidaRural.edtdesctecnico.Text :=  qry.FieldByName('nome_razaosocial').AsString;
    end;

    if FrmConsFuncionario.Tag=15 then
    begin
      FrmDedoDuro.edtcodigo.text  :=  qry.FieldByName('id').AsString;
      FrmDedoDuro.edtnome.Text    :=  qry.FieldByName('nome_razaosocial').AsString;
    end;
    if FrmConsFuncionario.Tag=16 then
    begin
      FrmDedoDuroRural.edtcodigo.text  :=  qry.FieldByName('id').AsString;
      FrmDedoDuroRural.edtnome.Text    :=  qry.FieldByName('nome_razaosocial').AsString;
    end;
    if FrmConsFuncionario.Tag = 17 then
    begin
      frmCadastrarConfig.FidFuncionario            := qry.FieldByName('id').AsInteger;
      frmCadastrarConfig.edtCodUser.Text           := qry.FieldByName('login').AsString;
      frmCadastrarConfig.edtDescricao.text         := qry.FieldByName('nome_razaosocial').AsString;
      frmCadastrarConfig.chkExibirAnomalia.Checked := Boolean(qry.FieldByName('exibir_anomalias').AsInteger);
      frmCadastrarConfig.chkexibirprodutividade.Checked := Boolean(qry.FieldByName('exibir_rel_produtividade').AsInteger);
      frmCadastrarConfig.Chkexbirindicadoresgerais.Checked := Boolean(qry.FieldByName('exibir_rel_indicadores').AsInteger);
      //frmCadastrarConfig.montarObjetosUrbano(qry);
    end;
    if FrmConsFuncionario.Tag = 18 then
    begin
      FrmRelProdutividade.edtcodtecnico.Text      := qry.FieldByName('id').AsString;
      FrmRelProdutividade.edtdesctecnico.Text     := qry.FieldByName('nome_razaosocial').AsString;
    end;
     if FrmConsFuncionario.Tag = 19 then
    begin
      FrmOrdemServicoInterno.edtCodSolicitado.Text      := qry.FieldByName('id').AsString;
      FrmOrdemServicoInterno.edtdescsol.Text     := qry.FieldByName('nome_razaosocial').AsString;
    end;
    if FrmConsFuncionario.Tag=20 then
    begin
      FrmRelServicoInterno.edtCodSolicitante.Text :=  qry.FieldByName('id').AsString;
      FrmRelServicoInterno.edtdescsol.Text        :=  qry.FieldByName('nome_razaosocial').AsString;
    end;
    close;
  end;
end;

function TFrmConsFuncionario.JaTemFuncionarioSelecionado(_opcao:string): boolean;
var i : integer;
begin

end;

procedure TFrmConsFuncionario.MenuItem5Click(Sender: TObject);
begin
  RemoverFuncionarioSelecionado;
end;

procedure TFrmConsFuncionario.MenuItem7Click(Sender: TObject);
begin
  CarregaDadosVariosFuncionarios;
end;

procedure TFrmConsFuncionario.InicializaStringGrid;
var
i:Integer;
begin
  if FrmConsFuncionario.Tag = 7 then
  begin
    i := 0;
    stgrel.visible := true;
    for i := 1 to stgrel.rowcount do
    begin
      stgrel.Cells[0,i] := '';
      stgrel.Cells[1,i] := '';
      stgrel.Cells[2,i] := '';
      stgrel.Cells[3,i] := '';
      stgrel.Cells[4,i] := '';
      stgrel.Cells[5,i] := '';
    end;
    stgrel.rowcount           := 2;
    stgrel.Cells[0,0]         := ' Código ';
    stgrel.Cells[1,0]         := '                    Razão Social Cliente              ';
    stgrel.Cells[2,0]         := '              Endereço   ';
    stgrel.Cells[3,0]         := '    CPF/CNPJ    ';
    stgrel.Cells[4,0]         := '     Cidade      ';
    stgrel.Cells[5,0]         := '      Telefone   ';
    FrmConsFuncionario.Height := 603;
  end
  else
  begin
    stgrel.visible            := false;
    FrmConsFuncionario.Height := 466;
  end;
end;

procedure TFrmConsFuncionario.CarregaDadosVariosFuncionarios;
var
i:Integer;
verificagridvazio:String;
begin
//Verificando se existe contas selecionadas
//  verificagridvazio :='';
//  for i  := 2 to stgrel.rowcount do
//  begin
//    verificagridvazio := verificagridvazio + stgrel.Cells[0,i];
//  end;
//
//  if trim(verificagridvazio) = '' then
//  begin
//    semregistros;
//    abort;
//  end;
//
//  i  := 2;
//  _CodFuncionarioConsulta :=' and ( id = '+quotedstr(trim(stgrel.Cells[0,i]));
//  for i  := 3 to stgrel.rowcount do
//  begin
//    if trim(stgrel.Cells[0,i]) <> '' then
//    _CodFuncionarioConsulta := _CodFuncionarioConsulta+'  or id = '+trim( stgrel.Cells[0,i]);
//  end;
//  _CodFuncionarioConsulta := _CodFuncionarioConsulta + ')';
//  close;


//    qryloja.First;
//    _CodLojaConsulta := _CodLojaConsulta +' and (loja='+Trim(qryloja.FieldByName('codigo_loja').AsString);
//    while not qryloja.Eof do
//    begin
//      _CodLojaConsulta := _CodLojaConsulta +' or loja='+Trim(qryloja.FieldByName('codigo_loja').AsString);
//      qryloja.Next;
//    end;
//    _CodLojaConsulta := _CodLojaConsulta +')';
//    FrmConsLoja.Close;
//    if flag_loja = 53 then
//      FrmRelPagtoDesp.ImprimeRelatorio
//    else
//    if flag_loja = 54 then
//      FrmrelControleRefeicao.ImprimeRelatorio;
end;

procedure TFrmConsFuncionario.RemoverFuncionarioSelecionado;
begin

  if Application.MessageBox('Confirma a Exclusão da Conta Selecionada?','Atenção!', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    stgrel.Cells[0,stgrel.Row] := '';
    stgrel.Cells[1,stgrel.Row] := '';
    stgrel.Cells[2,stgrel.Row] := '';
    stgrel.Cells[3,stgrel.Row] := '';
    stgrel.Cells[4,stgrel.Row] := '';
    stgrel.Cells[5,stgrel.Row] := '';
    stgrel.Cells[6,stgrel.Row] := '';
  end;
end;


end.
