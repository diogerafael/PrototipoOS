unit uCadSolicitante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoNovo, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf;

type
  TFrmCadSolicitante = class(TFrmCadPadraoNovoGrande)
    grp4: TGroupBox;
    lbl24: TLabel;
    lbl26: TLabel;
    dbgrd2: TDBGrid;
    edtdesc: TEdit;
    edtCpf: TEdit;
    edtTelefone: TEdit;
    lbl1: TLabel;
    qrySolicitante: TFDQuery;
    dsSolicitante: TDataSource;
    pmSolicitante: TPopupMenu;
    procedure sbnovoClick(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtCpfKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure sbgravarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbexcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FidSolicitante:Integer;
  public
    { Public declarations }
  end;

var
  FrmCadSolicitante: TFrmCadSolicitante;

implementation

{$R *.dfm}

uses DataModule, uFrmCadastrarProjetoRural;


procedure TFrmCadSolicitante.dbgrd2DblClick(Sender: TObject);
begin
  inherited;
  //
  edtdesc.Text  := qrySolicitante.FieldByName('descricao').AsString;
  edtCpf.Text   := qrySolicitante.FieldByName('cpf').AsString;
  edtTelefone.Text := qrySolicitante.FieldByName('telefone').AsString;

  FidSolicitante  := qrySolicitante.FieldByName('id').AsInteger;

  sbnovo.Enabled      := False;
  sbgravar.Enabled    :=  True;
  sbconsultar.Enabled :=  False;
  sbexcluir.Enabled   :=  False;
  SpeedButton1.Enabled:=True;


end;

procedure TFrmCadSolicitante.edtCpfExit(Sender: TObject);
  var b : boolean;
begin
  inherited;
 { if Trim(edtCpf.Text) = '' then
  begin
    Application.MessageBox('Aten��o! Param�tro Inv�lido! Campo Num�rio. !', PChar(Application.Title),MB_OK + MB_ICONINFORMATION);
    edtcpf.SetFocus;
  end
  else
  begin
    if trim(edtcpf.text) <> '' then
    begin
      b := TestaCpf(edtcpf.text);
      if (b = false) then
      begin
        Application.MessageBox('Aten��o! Cpf Inv�lido. N�o ser� poss�vel continuar.', PChar(Application.Title),MB_OK + MB_ICONINFORMATION);
        edtcpf.setfocus;
        Abort;
      end;
    end;
  end;}
end;

procedure TFrmCadSolicitante.edtCpfKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8,#13,#03,#22]) then key := #0;
end;

procedure TFrmCadSolicitante.FormCreate(Sender: TObject);
begin
  inherited;
  sbconsultar.Enabled:=False;
  sqlstr:='select * from os_engenharia_clientes_rural where id_projeto='+IntToStr(frmCadastrarProjetoRural.FIdProjeto);
     ConsultaSqlFd(qrySolicitante,sqlstr);
     edtdesc.Clear;
     edtCpf.Clear;
     edtTelefone.Clear;

end;

procedure TFrmCadSolicitante.sbexcluirClick(Sender: TObject);
begin
  inherited;
  try
    if Obrigatorio(Self,edtdesc,'Informe Solicitante a ser Removido !') then Exit;

    with DataModule1.comand do
    begin
      CommandText.Clear;
      CommandText.Add('DELETE from os_engenharia_clientes_rural where id = :id');
      Params.ParamByName('id').AsInteger := FidSolicitante;
      Execute();
    end;
     sqlstr:='select * from os_engenharia_clientes_rural where id_projeto='+IntToStr(frmCadastrarProjetoRural.FIdProjeto);
     ConsultaSqlFd(qrySolicitante,sqlstr);
     edtdesc.Clear;
     edtCpf.Clear;
     edtTelefone.Clear;
  finally
  end;
end;

procedure TFrmCadSolicitante.sbgravarClick(Sender: TObject);
begin
  inherited;
  try
    try
      if Obrigatorio(Self,edtdesc,'Infome o Nome !')then Exit;
      if Obrigatorio(Self,edtCpf,'Infome o Nome !')then Exit;

      with DataModule1.comand do
      begin
        CommandText.Clear;
        CommandText.Add('UPDATE supoc.os_engenharia_clientes_rural set descricao= :descricao,cpf = :cpf,telefone = :telefone where id= :id ');
        Params.ParamByName('descricao').AsString    := edtdesc.Text;
        Params.ParamByName('id').AsInteger          :=FidSolicitante;
        Params.ParamByName('cpf').AsString          := edtCpf.Text;
        Params.ParamByName('telefone').AsString     := edtTelefone.Text;
        Execute();

      end;
       sqlstr:='select * from os_engenharia_clientes_rural where id_projeto='+IntToStr(frmCadastrarProjetoRural.FIdProjeto);
       ConsultaSqlFd(qrySolicitante,sqlstr);
       edtdesc.Clear;
       edtCpf.Clear;
       edtTelefone.Clear;
       frmCadastrarProjetoRural.AtualizarGridSolicitante;
    except on E: Exception do
    end;

  finally
  end;
end;

procedure TFrmCadSolicitante.sbnovoClick(Sender: TObject);
var
  qry:TFDQuery;
begin
  inherited;
  try
    try
      if Obrigatorio(Self,edtdesc,'Inserir Nome Solicitante !') then Exit;
      {qry := TFDQuery.Create(nil);
      qry.Connection := DataModule1.ConMySql;
      qry.SQL.Add('select * from os_engenharia_projeto_rural where id'+IntToStr(frmCadastrarProjetoRural.FIdProjeto));
      qry.Open();
      if qry.IsEmpty then
        frmCadastrarProjetoRural.}
      with DataModule1.comand do
      begin


        CommandText.Clear;
        CommandText.Add('INSERT INTO supoc.os_engenharia_clientes_rural (descricao,id_projeto,cpf,telefone) '+
                        ' VALUES (:descricao,:id_projeto,:cpf,:telefone) ');
        Params.ParamByName('descricao').AsString  := edtdesc.Text;
        Params.ParamByName('id_projeto').AsInteger := frmCadastrarProjetoRural.FIdProjeto;
        Params.ParamByName('cpf').AsString          := edtCpf.Text;
        Params.ParamByName('telefone').AsString     := edtTelefone.Text;
        Execute();
        sqlstr:='select * from os_engenharia_clientes_rural where id_projeto='+IntToStr(frmCadastrarProjetoRural.FIdProjeto);
        ConsultaSqlFd(qrySolicitante,sqlstr);
       edtdesc.Clear;
       edtCpf.Clear;
       edtTelefone.Clear;
      end;
      frmCadastrarProjetoRural.AtualizarGridSolicitante;
    except on E: Exception do
      CriarLog(Self,E,E.Message);
    end;
  finally
  end;
end;

procedure TFrmCadSolicitante.SpeedButton1Click(Sender: TObject);
var
i:Integer;
begin
  inherited;
//
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
end;

end.
