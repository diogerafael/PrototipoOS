unit UConsAssentamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConsPadraoNovaGrande, Data.DB,
  Data.Win.ADODB, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrmConsAssentamento = class(TFrmNovaConsultaPadraoGrande)
    Label1: TLabel;
    cbbopcao: TComboBox;
    FDQuery1: TFDQuery;
    procedure edtnomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure CarregarDados;
  public
    { Public declarations }
  end;

var
  FrmConsAssentamento: TFrmConsAssentamento;

implementation

{$R *.dfm}

uses DataModule, UCad_Assentamento;

procedure TFrmConsAssentamento.CarregarDados;
var
qryLocal:TFDQuery;
begin
  try
    try
     qryLocal:=TFDQuery.Create(nil);
     qryLocal.Connection:=DataModule1.ConMySql;

     sqlstr:=' SELECT '+
             ' os_assentamento_rural.descricao as assentamento ,os_assentamento_rural.data,'+
             ' os_assentamento_rural.id,'+
             ' os_engenharia_notas_rural.descricao,'+
             ' os_engenharia_clientes_rural.descricao as clientes '+
           ' FROM '+
             ' os_assentamento_rural,'+
             ' os_assentamento_os,'+
             ' os_engenharia_notas_rural,'+
             ' os_engenharia_clientes_rural '+
           ' WHERE '+
             ' (os_assentamento_rural.id = os_assentamento_os.id_assentamento_rural)'+
            ' AND (os_engenharia_notas_rural.id_os_projeto = os_assentamento_os.id_os_rural)'+
            ' AND (os_engenharia_clientes_rural.id_projeto = os_assentamento_os.id_os_rural)'+
            ' and (os_assentamento_rural.id=:id)';
//     qryLocal.SQL.Add(sqlstr);
//     qryLocal.Params.ParamByName('id').AsInteger := FDQuery1.FieldByName('id').AsInteger;
//     qryLocal.Open();

     //atualizar grid
     FrmCadAssentamento.EditCodAssentamento.Text                    := FDQuery1.FieldByName('id').AsString;
     FrmCadAssentamento.EditDescricaoAssentamento.Text              := FDQuery1.FieldByName('descricao').AsString;
     FrmCadAssentamento.edtdatacadastro.Text                        := FDQuery1.FieldByName('data').AsString;
     FrmCadAssentamento.FDQuery1.SQL.Clear;
     FrmCadAssentamento.FDQuery1.SQL.Add(sqlstr);
     FrmCadAssentamento.FDQuery1.Params.ParamByName('id').AsInteger := FDQuery1.FieldByName('id').AsInteger;
     FrmCadAssentamento.FDQuery1.Close;
     FrmCadAssentamento.FDQuery1.Open();
     FrmCadAssentamento.sbnovo.Enabled:=False;
     FrmCadAssentamento.sbexcluir.Enabled:=True;
     FrmCadAssentamento.sbgravar.Enabled:=True;
     Close;
    except on E: Exception do
      CriarLog(Self,E,'Pesquisar Assentamento');
    end;
  finally
    FreeAndNil(qryLocal);
  end;
end;

procedure TFrmConsAssentamento.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  CarregarDados;
end;

procedure TFrmConsAssentamento.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key =#13 then
  begin
    CarregarDados;
  end;
end;

procedure TFrmConsAssentamento.edtnomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if edtnome.Text='' then
    begin
      if not ConsultaSqlFd(FDQuery1,'select * from os_assentamento_rural') then
      begin
        SemRegistros;
        Abort;
      end;
    end
    ELSE
    begin
      sqlstr:='select * from os_assentamento_rural ';
      case cbbopcao.ItemIndex of
        0:begin
          sqlstr:=sqlstr+' where id='+edtnome.Text;
        end;
        1:begin
          sqlstr:=sqlstr+' where descricao like '+QuotedStr('%'+edtnome.Text+'%');
        end;
      end;

      if not ConsultaSqlFd(FDQuery1,sqlstr) then
      begin
        SemRegistros;
        Abort;
      end;
    end;

  end;
end;

end.
