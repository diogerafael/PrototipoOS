unit U_ordermServicoInterno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoNovo, Vcl.Menus,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmOrdemServicoInterno = class(TFrmCadPadraoNovoGrande)
    edtnumos: TEdit;
    edtsolicitante: TEdit;
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtdescsol: TEdit;
    edtCodSolicitado: TEdit;
    dataAbertura: TcxDateEdit;
    lbl3: TLabel;
    edtdtlimite: TcxDateEdit;
    cbbprioridade: TComboBox;
    mmoobservacao: TMemo;
    grp1: TGroupBox;
    lbl4: TLabel;
    edtdtconclusao: TcxDateEdit;
    cbbstatus: TComboBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lblprazo: TLabel;
    grp2: TGroupBox;
    mmo1: TMemo;
    procedure edtCodSolicitadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sbnovoClick(Sender: TObject);
    procedure sbconsultarClick(Sender: TObject);
    procedure sbgravarClick(Sender: TObject);
    procedure sbexcluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbrelatoriosClick(Sender: TObject);
  private
    FIdSolicitante: integer;
    procedure limparCampos;
    procedure InserirOrdemServicoInterno;
    procedure AlterarOrdemServicoInterno;
    procedure Alterar;
    procedure DeletarOrdemServicoInterno;
    procedure SetIdSolicitante(const Value: integer);
    function DataIsMaior(dtIni, dtFim: TDateTime): Boolean;
    procedure SalvaSolicitanteDataAber;
    { Private declarations }
  public
    { Public declarations }
    property IdSolicitante:integer read FIdSolicitante write SetIdSolicitante;
  end;

var
  FrmOrdemServicoInterno: TFrmOrdemServicoInterno;

implementation

{$R *.dfm}

uses UConsFuncionario, DataModule, U_ConsultarOSInterno, FireDAC.Comp.Client,
  URelAnomalias, URelServicoInterno;

procedure TFrmOrdemServicoInterno.AlterarOrdemServicoInterno;
begin

end;

procedure TFrmOrdemServicoInterno.edtCodSolicitadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if trim(edtCodSolicitado.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=19;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select * from cad_funcionarios where id='+edtCodSolicitado.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=19;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtCodSolicitado.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdescsol.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
    end;
  end
end;

procedure TFrmOrdemServicoInterno.FormShow(Sender: TObject);
begin
  inherited;
  SalvaSolicitanteDataAber;
end;

procedure TFrmOrdemServicoInterno.limparCampos;
var
  i:Integer;
begin
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
      lblprazo.Caption:='';
    end
    else if(Components[i] is TcxDateEdit) then
    begin
      (Components[i] as TcxDateEdit).Clear;
    end;

    sbnovo.Enabled := True;
    SalvaSolicitanteDataAber;
end;

procedure TFrmOrdemServicoInterno.sbconsultarClick(Sender: TObject);
begin
  inherited;
  FrmConsOrdemServico := TFrmConsOrdemServico.Create(Self,1);
  FrmConsOrdemServico.ShowModal;
  FreeAndNil(FrmConsOrdemServico);
     sbgravar.Enabled :=true ;
     SpeedButton1.Enabled:=true;
     sbexcluir.Enabled := true;
end;

procedure TFrmOrdemServicoInterno.sbexcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Realmente Deseja Excluir Esta Ordem de Servi�o ?',
    'Aten��o', MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    DeletarOrdemServicoInterno;
  end;

end;

procedure TFrmOrdemServicoInterno.sbgravarClick(Sender: TObject);
begin
  inherited;
Alterar;
end;

procedure TFrmOrdemServicoInterno.sbnovoClick(Sender: TObject);
begin
  inherited;
  InserirOrdemServicoInterno;
end;

procedure TFrmOrdemServicoInterno.sbrelatoriosClick(Sender: TObject);
begin
  inherited;
  FrmRelServicoInterno := TFrmRelServicoInterno.Create(Self);
  FrmRelServicoInterno.ShowModal;
  FreeAndNil(FrmRelServicoInterno);

end;

procedure TFrmOrdemServicoInterno.SetIdSolicitante(const Value: integer);
begin
  FIdSolicitante := Value;
end;

procedure TFrmOrdemServicoInterno.SpeedButton1Click(Sender: TObject);
begin
  inherited;
limparCampos;

sbnovo.Enabled:=True;
sbexcluir.Enabled:= False;
sbgravar.Enabled:=False;
end;

procedure TFrmOrdemServicoInterno.InserirOrdemServicoInterno;
begin
  try
    {Validar Campos}
    if Obrigatorio(Self,edtCodSolicitado,'Defina o Solicitado !') then begin edtsolicitante.SetFocus; Exit end;
    if Obrigatorio(Self,dataAbertura,'Defina a data de abertura!') then begin dataAbertura.SetFocus;Exit end;
    if Obrigatorio(Self,cbbprioridade,'Defina a prioridade !')  then begin cbbprioridade.SetFocus;Exit end;
    if Obrigatorio(Self,edtdtlimite,'Defina a data limite ')    then begin edtdtlimite.SetFocus;Exit end;
    if DataIsMaior(dataAbertura.Date,edtdtlimite.Date) then
    begin
      Application.MessageBox('Data de Abertura Inferior a Data Limite!',
        'Aten��o !!', MB_OKCANCEL + MB_ICONINFORMATION);
      edtdtlimite.SetFocus;
      Exit;
    end;
    { GRAVAR OS}
     with DataModule1.qryCRUD do
     begin
        SQL.Text:= ' INSERT INTO os_engenharia_ordem_servico (cod_solicitante,cod_solicitado,dt_abertura,prioridade,descricao,observacao,dt_limite,status)'+
       ' VALUES  (:cod_solicitante,:cod_solicitado,:dt_abertura,:prioridade,:descricao,:observacao,:dt_limite,:status)';

        ParamByName('cod_solicitante').AsInteger  := DataModule1.qryusuario.FieldByName('iduser').AsInteger;
        ParamByName('cod_solicitado').AsInteger   := StrToInt(Trim (edtCodSolicitado.text));
        ParamByName('dt_abertura').AsDateTime     := (dataAbertura.Date);
        ParamByName('prioridade').AsInteger       := (cbbprioridade.ItemIndex);
        ParamByName('descricao').AsString         := Trim(mmoobservacao.Text);
        ParamByName('observacao').AsString        := Trim(mmo1.Text);
        ParamByName('dt_limite').AsDateTime       := (edtdtlimite.Date);
        ParamByName('status').AsInteger           := (cbbstatus.ItemIndex);
        Execute();
        Application.MessageBox('Ordem de Servi�o Cadastrada Com Sucesso !',
          'Aten��o', MB_OK + MB_ICONINFORMATION);
        SQL.Clear;
        SQL.Add('select LAST_INSERT_ID() ');
        Open();
        edtnumos.Text := Fields[0].AsString;
        Close;
        sbnovo.Enabled    := False;
        sbgravar.Enabled  := True;
        sbexcluir.Enabled := True;


     end;


  except on E: Exception do
    CriarLog(Self,E,'Inserir Ordem Servico Interno');

  end;
end;

procedure TFrmOrdemServicoInterno.Alterar;
begin
  try
    {Validar Campos}
    if DataIsMaior(dataAbertura.Date,edtdtlimite.Date) then
    begin
      Application.MessageBox('Data de Abertura Inferior a Data Limite!',
        'Aten��o !!', MB_OKCANCEL + MB_ICONINFORMATION);
      edtdtlimite.SetFocus;
      Exit;
    end;
    { alterar OS}
     with DataModule1.qryCRUD do
     begin
       SQL.Clear;
       SQL.Text:= 'update os_engenharia_ordem_servico set prioridade=:prioridade,descricao=:descricao,'+
       ' observacao=:observacao,status=:status where id=:id';
       ParamByName('prioridade').AsInteger:= (cbbprioridade.ItemIndex);
       ParamByName('descricao').AsString  :=   Trim(mmoobservacao.Text);
       ParamByName('observacao').AsString := Trim(mmo1.Text);
       ParamByName('status').AsInteger    := (cbbstatus.ItemIndex);
       ParamByName('id').AsInteger        := StrToInt(edtnumos.Text);
       Execute();
       limparCampos;
       sbgravar.Enabled:=False;
     end;

  except on E: Exception do
    CriarLog(Self,E,'Inserir Ordem Servico Interno');
  end;

end;

procedure TFrmOrdemServicoInterno.DeletarOrdemServicoInterno;
var
  qry:tfdquery;
begin
  try
    try
      qry := TFDQuery.Create(nil);
      qry.Connection := DataModule1.ConMySql;
      qry.SQL.Add('delete from os_engenharia_ordem_servico where id =:id');
      qry.ParamByName('id').AsInteger := strtoint(edtnumos.Text);
      qry.ExecSQL;
      limparCampos;


    except on E: Exception do
      CriarLog(Self,E,'Deletar Ordem Servico Interna');
    end;
     sbgravar.Enabled :=false ;
     SpeedButton1.Enabled:=false;
     sbexcluir.Enabled := False;

  finally
    FreeAndNil(qry);

  end;
end;

function TFrmOrdemServicoInterno.DataIsMaior(dtIni:TDateTime;dtFim:TDateTime):Boolean;
begin
  try
    Result :=True;
    if dtIni > dtFim then
      Result := False
  except on E: Exception do
    CriarLog(Self,E,'Validacao de Datas');
  end;
end;

procedure TFrmOrdemServicoInterno.SalvaSolicitanteDataAber;
begin
  edtsolicitante.Text := DataModule1.qryusuario.FieldByName('nome').AsString;
  dataAbertura.Text := RetornaDataMysqlComHora;
end;

end.
