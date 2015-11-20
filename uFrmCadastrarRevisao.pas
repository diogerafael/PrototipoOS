unit uFrmCadastrarRevisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoNovo, cxControls,
  cxContainer, cxEdit,












  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  Vcl.Menus, Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TfrmCadastrarRevisao = class(TFrmCadPadraoNovoGrande)
    grp4: TGroupBox;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    edtdtenviorevisao: TcxDateEdit;
    edtdtretornorevisao: TcxDateEdit;
    dbgrd2: TDBGrid;
    edtcodprojetistarevisao: TEdit;
    edtdescprojetistarevisao: TEdit;
    ds1: TDataSource;
    qry: TFDQuery;
    procedure edtcodprojetistarevisaoKeyPress(Sender: TObject; var Key: Char);
    procedure sbnovoClick(Sender: TObject);
    procedure sbgravarClick(Sender: TObject);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbexcluirClick(Sender: TObject);
  private
    { Private declarations }
    FidRevisao:Integer;
  public
    { Public declarations }
  end;

var
  frmCadastrarRevisao: TfrmCadastrarRevisao;

implementation

{$R *.dfm}

uses UConsFuncionario, DataModule, uFrmCadastrarProjeto;

procedure TfrmCadastrarRevisao.dbgrd2DblClick(Sender: TObject);
begin
  inherited;
  //setas os dados para edicao
  if Self.Tag=0 then
  begin
    edtcodprojetistarevisao.Text:=qry.FieldByName('cod_projetista').AsString;
    edtdescprojetistarevisao.Text:=qry.FieldByName('nome').AsString;
    edtdtenviorevisao.Text:= qry.FieldByName('dt_inicio').AsString;
    edtdtretornorevisao.Text:= qry.FieldByName('dt_fim').AsString;
    FidRevisao:=qry.FieldByName('id').AsInteger;
  end
  else if Self.Tag=1 then
  begin
    edtcodprojetistarevisao.Text:=qry.FieldByName('id_tecnico').AsString;
    edtdescprojetistarevisao.Text:=qry.FieldByName('nome').AsString;
    edtdtenviorevisao.Text:= qry.FieldByName('dt_inicio').AsString;
    edtdtretornorevisao.Text:= qry.FieldByName('dt_fim').AsString;
    FidRevisao:=qry.FieldByName('id').AsInteger;
  end
  else if Self.Tag=2 then
  begin
    edtcodprojetistarevisao.Text:=qry.FieldByName('cod_atualizador').AsString;
    edtdescprojetistarevisao.Text:=qry.FieldByName('nome').AsString;
    edtdtenviorevisao.Text:= qry.FieldByName('dt_inicio').AsString;
    edtdtretornorevisao.Text:= qry.FieldByName('dt_fim').AsString;
    FidRevisao:=qry.FieldByName('id').AsInteger;
  end
  else if Self.Tag=3 then
  begin
    edtdescprojetistarevisao.Text:=qry.FieldByName('nome').AsString;
    edtdtenviorevisao.Text:= qry.FieldByName('dt_inicio').AsString;
    edtdtretornorevisao.Text:= qry.FieldByName('dt_fim').AsString;
    FidRevisao:=qry.FieldByName('id').AsInteger;
  end;

  //habilitando botoes

  sbnovo.Enabled      := False;
  sbgravar.Enabled    :=  True;
  sbconsultar.Enabled :=  False;
  sbexcluir.Enabled   :=  False;
  SpeedButton1.Enabled:=True;
end;

procedure TfrmCadastrarRevisao.edtcodprojetistarevisaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if trim(edtcodprojetistarevisao.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=12;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodprojetistarevisao.Text;
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
        edtcodprojetistarevisao.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdescprojetistarevisao.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
    end;
  end;
end;

procedure TfrmCadastrarRevisao.FormShow(Sender: TObject);
begin
  inherited;
  if(Self.Tag=0)then
  begin
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao os '+
              'left JOIN cad_funcionarios  cad on os.cod_projetista = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     lbl24.Caption:='Projetista';
  end
  else if(Self.tag=1)then
  begin
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_servicocampo os '+
              'left JOIN cad_funcionarios  cad on os.id_tecnico = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     lbl24.Caption:='Levantador';
  end
  else if(Self.tag=2)then
  begin
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_atualizacao os '+
              'left JOIN cad_funcionarios  cad on os.cod_atualizador = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     lbl24.Caption:='Atualizador';
  end
  else if(Self.tag=3)then
  begin
    edtcodprojetistarevisao.Visible:=False;
    edtdescprojetistarevisao.Left:=67;
    sqlstr:='SELECT os.topografo as nome,os.* FROM os_engenharia_revisao_topografia os WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     lbl24.Caption:='Topografo';
  end;

end;

procedure TfrmCadastrarRevisao.sbexcluirClick(Sender: TObject);
begin
  inherited;
 if(Self.Tag=0)then
 begin
  with DataModule1.comand do
  begin
    sqlstr:='DELETE os_engenharia_revisao WHERE id = :id';
    CommandText.Add(sqlstr);
    ParamByName('id').Value:=FidRevisao;
    Execute();
  end;
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao os '+
              'left JOIN cad_funcionarios  cad on os.cod_projetista = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     edtdtenviorevisao.Clear;
     edtdtretornorevisao.Clear;
     edtcodprojetistarevisao.Clear;
     edtdescprojetistarevisao.Clear;

  sbnovo.Enabled      :=  True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;

 end
 else if Self.Tag=1 then
 begin
    with DataModule1.comand do
  begin
    sqlstr:='DELETE os_engenharia_revisao_servicocampo WHERE id = :id';
    CommandText.Add(sqlstr);
    ParamByName('id').Value:=FidRevisao;
    Execute();
  end;
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_servicocampo os '+
              'left JOIN cad_funcionarios  cad on id_tecnico = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     edtdtenviorevisao.Clear;
     edtdtretornorevisao.Clear;
     edtcodprojetistarevisao.Clear;
     edtdescprojetistarevisao.Clear;

  sbnovo.Enabled      :=  True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;
 end else if Self.Tag=2 then
 begin
    with DataModule1.comand do
  begin
    sqlstr:='DELETE os_engenharia_revisao_atualizacao WHERE id = :id';
    CommandText.Add(sqlstr);
    ParamByName('id').Value:=FidRevisao;
    Execute();
  end;
    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_atualizacao os '+
              'left JOIN cad_funcionarios  cad on id_tecnico = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     edtdtenviorevisao.Clear;
     edtdtretornorevisao.Clear;
     edtcodprojetistarevisao.Clear;
     edtdescprojetistarevisao.Clear;

  sbnovo.Enabled      :=  True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;
 end
 else if Self.Tag=3 then
 begin
    with DataModule1.comand do
  begin
    sqlstr:='DELETE os_engenharia_revisao_topografia WHERE id = :id';
    CommandText.Add(sqlstr);
    ParamByName('id').Value:=FidRevisao;
    Execute();
  end;
    sqlstr:='SELECT os.topografo as nome,os.* FROM os_engenharia_revisao_topografia os  WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     edtdtenviorevisao.Clear;
     edtdtretornorevisao.Clear;
     edtcodprojetistarevisao.Clear;
     edtdescprojetistarevisao.Clear;

  sbnovo.Enabled      :=  True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;
 end;
end;

procedure TfrmCadastrarRevisao.sbgravarClick(Sender: TObject);
begin
  inherited;
  if Obrigatorio(Self,edtdescprojetistarevisao,'Inserir Projetista !')then Exit;
  if Obrigatorio(Self,edtdtenviorevisao,'Inserir Inicio da Revis�o')then exit;

  if(Self.Tag=0)then
  begin
  with  DataModule1.comand do
  begin
    sqlstr:='UPDATE os_engenharia_revisao SET cod_projetista= :cod_projetista,'+
            'dt_inicio= :dt_inicio,dt_fim= :dt_fim WHERE id = :ID ';
    CommandText.Add(sqlstr);
     ParamByName('cod_projetista').Value:=Trim(edtcodprojetistarevisao.Text);
     ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
     ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
     ParamByName('id').Value:=FidRevisao;
     Execute();
     CommandText.Clear;

  end;

  sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao os '+
              'left JOIN cad_funcionarios  cad on os.cod_projetista = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
     ConsultaSqlFd(qry,sqlstr);
     edtdtenviorevisao.Clear;
     edtdtretornorevisao.Clear;
     edtcodprojetistarevisao.Clear;
     edtdescprojetistarevisao.Clear;

  sbnovo.Enabled      :=  True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;

  Application.MessageBox('Revis�o Editada com Sucesso !', 'Informa��o',
       MB_OK + MB_ICONINFORMATION);
  end
  else if Self.Tag=1 then
  begin
    with  DataModule1.comand do
    begin
      sqlstr:='UPDATE os_engenharia_revisao_servicocampo SET id_tecnico= :cod_projetista,'+
              'dt_inicio= :dt_inicio,dt_fim= :dt_fim WHERE id = :ID ';
      CommandText.Add(sqlstr);
       ParamByName('cod_projetista').Value:=Trim(edtcodprojetistarevisao.Text);
       ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
       ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
       ParamByName('id').Value:=FidRevisao;
       Execute();
       CommandText.Clear;

    end;

    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_servicocampo os '+
                'left JOIN cad_funcionarios  cad on os.id_tecnico = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
       ConsultaSqlFd(qry,sqlstr);
       edtdtenviorevisao.Clear;
       edtdtretornorevisao.Clear;
       edtcodprojetistarevisao.Clear;
       edtdescprojetistarevisao.Clear;

    sbnovo.Enabled      :=  True;
    sbgravar.Enabled    :=  False;
    sbconsultar.Enabled :=  True;
    sbexcluir.Enabled   :=  False;

    Application.MessageBox('Revis�o Editada com Sucesso !', 'Informa��o',
         MB_OK + MB_ICONINFORMATION);
  end
  else if Self.Tag=2 then
  begin
    with  DataModule1.comand do
    begin
      sqlstr:='UPDATE os_engenharia_revisao_atualizacao SET cod_atualizador= :cod_projetista,'+
              'dt_inicio= :dt_inicio,dt_fim= :dt_fim WHERE id = :ID ';
      CommandText.Add(sqlstr);
       ParamByName('cod_projetista').Value:=Trim(edtcodprojetistarevisao.Text);
       ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
       ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
       ParamByName('id').Value:=FidRevisao;
       Execute();
       CommandText.Clear;

    end;

    sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_atualizacao os '+
                'left JOIN cad_funcionarios  cad on os.cod_atualizador = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
       ConsultaSqlFd(qry,sqlstr);
       edtdtenviorevisao.Clear;
       edtdtretornorevisao.Clear;
       edtcodprojetistarevisao.Clear;
       edtdescprojetistarevisao.Clear;

    sbnovo.Enabled      :=  True;
    sbgravar.Enabled    :=  False;
    sbconsultar.Enabled :=  True;
    sbexcluir.Enabled   :=  False;

    Application.MessageBox('Revis�o Editada com Sucesso !', 'Informa��o',
         MB_OK + MB_ICONINFORMATION);
  end
  else if Self.Tag=3 then
  begin
    with  DataModule1.comand do
    begin
      sqlstr:='UPDATE os_engenharia_revisao_topografo SET topografo=:cod_projetista,'+
              'dt_inicio= :dt_inicio,dt_fim= :dt_fim WHERE id = :ID ';
      CommandText.Add(sqlstr);
       ParamByName('cod_projetista').Value:=Trim(edtdescprojetistarevisao.Text);
       ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
       ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
       ParamByName('id').Value:=FidRevisao;
       Execute();
       CommandText.Clear;

    end;

    sqlstr:='SELECT os.topografo as nome,os.* as nome FROM os_engenharia_revisao_atualizacao os  WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
       ConsultaSqlFd(qry,sqlstr);
       edtdtenviorevisao.Clear;
       edtdtretornorevisao.Clear;
       edtcodprojetistarevisao.Clear;
       edtdescprojetistarevisao.Clear;

    sbnovo.Enabled      :=  True;
    sbgravar.Enabled    :=  False;
    sbconsultar.Enabled :=  True;
    sbexcluir.Enabled   :=  False;

    Application.MessageBox('Revis�o Editada com Sucesso !', 'Informa��o',
         MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TfrmCadastrarRevisao.sbnovoClick(Sender: TObject);
begin
  inherited;
  //if Obrigatorio(Self,edtcodprojetistarevisao,'Inserir Projetista !')then Exit;
  if Obrigatorio(Self,edtdtenviorevisao,'Inserir Inicio da Revis�o !')then exit;
  if Obrigatorio(Self,edtdescprojetistarevisao,'Inserir Respons�vel !') then Exit;

  with DataModule1.comand do
  begin
    //verificando se o projeto ja esta salvo
    if(frmCadastrarProjeto.FIdProjeto=0)then
    begin
      ShowMessage('Nescess�rio Salvar o Projeto Para Inserir Uma Revis�o');
    end
    else
    begin
      if(Self.Tag=0)then
      begin
              CommandText.Add('INSERT INTO os_engenharia_revisao '+
                '(cod_projetista,dt_inicio,dt_fim,id_projeto) '+
                ' values '+
                '(:cod_projetista,:dt_inicio,:dt_fim,:id_projeto)');

             ParamByName('cod_projetista').Value:=Trim(edtcodprojetistarevisao.Text);
             ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
             ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
             ParamByName('id_projeto').Value:=frmCadastrarProjeto.FIdProjeto;

             Execute();
             CommandText.Clear;
             //carregar
             sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao os '+
                      'left JOIN cad_funcionarios  cad on os.cod_projetista = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
             ConsultaSqlFd(qry,sqlstr);
             edtdtenviorevisao.Clear;
             edtdtretornorevisao.Clear;
             edtcodprojetistarevisao.Clear;
             edtdescprojetistarevisao.Clear;

             frmCadastrarProjeto.AtualizarGrid;

             Application.MessageBox('Revis�o Inserida com Sucesso !', 'Informa��o',
               MB_OK + MB_ICONINFORMATION);
      end
      else if(Self.Tag=1)then
      begin
        CommandText.Add('INSERT INTO os_engenharia_revisao_servicocampo '+
                '(id_tecnico,dt_inicio,dt_fim,id_projeto) '+
                ' values '+
                '(:cod_projetista,:dt_inicio,:dt_fim,:id_projeto)');

             ParamByName('cod_projetista').Value:=Trim(edtcodprojetistarevisao.Text);
             ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
             ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
             ParamByName('id_projeto').Value:=frmCadastrarProjeto.FIdProjeto;

             Execute();
             CommandText.Clear;
             //carregar
             sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_servicocampo os '+
                      'left JOIN cad_funcionarios  cad on os.id_tecnico = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
             ConsultaSqlFd(qry,sqlstr);
             edtdtenviorevisao.Clear;
             edtdtretornorevisao.Clear;
             edtcodprojetistarevisao.Clear;
             edtdescprojetistarevisao.Clear;

             frmCadastrarProjeto.AtualizarGrid;

             Application.MessageBox('Revis�o Inserida com Sucesso !', 'Informa��o',
               MB_OK + MB_ICONINFORMATION);
      end
      else if(Self.Tag=2)then
      begin
        CommandText.Add('INSERT INTO os_engenharia_revisao_atualizacao '+
                '(cod_atualizador,dt_inicio,dt_fim,id_projeto) '+
                ' values '+
                '(:cod_projetista,:dt_inicio,:dt_fim,:id_projeto)');

             ParamByName('cod_projetista').Value:=Trim(edtcodprojetistarevisao.Text);
             ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
             ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
             ParamByName('id_projeto').Value:=frmCadastrarProjeto.FIdProjeto;

             Execute();
             CommandText.Clear;
             //carregar
             sqlstr:='SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revisao_atualizacao os '+
                      'left JOIN cad_funcionarios  cad on os.cod_atualizador = cad.id WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
             ConsultaSqlFd(qry,sqlstr);
             edtdtenviorevisao.Clear;
             edtdtretornorevisao.Clear;
             edtcodprojetistarevisao.Clear;
             edtdescprojetistarevisao.Clear;

             frmCadastrarProjeto.AtualizarGrid;

             Application.MessageBox('Revis�o Inserida com Sucesso !', 'Informa��o',
               MB_OK + MB_ICONINFORMATION);
      end
      else if(Self.Tag=3)then
      begin
        CommandText.Clear;
        CommandText.Add('INSERT INTO os_engenharia_revisao_topografia '+
                '(topografo,dt_inicio,dt_fim,id_projeto) '+
                ' values '+
                '(:cod_projetista,:dt_inicio,:dt_fim,:id_projeto)');

             ParamByName('cod_projetista').Value:=Trim(edtdescprojetistarevisao.Text);
             ParamByName('dt_inicio').Value:=(edtdtenviorevisao.Date);
             ParamByName('dt_fim').Value:=(edtdtretornorevisao.Date);
             ParamByName('id_projeto').Value:=frmCadastrarProjeto.FIdProjeto;

             Execute();
             CommandText.Clear;
             //carregar
             sqlstr:='SELECT os.topografo as nome,os.* FROM os_engenharia_revisao_topografia os  WHERE os.id_projeto='+IntToStr(frmCadastrarProjeto.FIdProjeto);
             ConsultaSqlFd(qry,sqlstr);
             edtdtenviorevisao.Clear;
             edtdtretornorevisao.Clear;
             edtcodprojetistarevisao.Clear;
             edtdescprojetistarevisao.Clear;

             frmCadastrarProjeto.AtualizarGrid;

             Application.MessageBox('Revis�o Inserida com Sucesso !', 'Informa��o',
               MB_OK + MB_ICONINFORMATION);
      end
    end;
    end
end;


procedure TfrmCadastrarRevisao.SpeedButton1Click(Sender: TObject);
var
i:Integer;
begin
  inherited;
    for i:=0 to (ComponentCount - 1) do
    if components[i] is tcustomedit then
    begin
      (components[i] as tcustomedit).text := '';
    end
    else if(Components[i] is TCustomComboBox) then
    begin
      (components[i] as TCustomComboBox).ItemIndex:=-1;
    end;


      //HABILITA PESQUISA
  sbnovo.Enabled      :=  True;
  sbgravar.Enabled    :=  False;
  sbconsultar.Enabled :=  True;
  sbexcluir.Enabled   :=  False;
  //qry.Close;
end;

end.
