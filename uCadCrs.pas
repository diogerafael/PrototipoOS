unit uCadCrs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoNovo, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Menus, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf;

type
  TFrmCadCrs = class(TFrmCadPadraoNovoGrande)
    lbl24: TLabel;
    edtdesc: TEdit;
    dbgrd2: TDBGrid;
    qryCrs: TFDQuery;
    ds1: TDataSource;
    procedure sbnovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    private FidCrs:Integer;
    procedure AtualizarGrid;
  public
    { Public declarations }
  end;

var
  FrmCadCrs: TFrmCadCrs;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrmCadCrs.AtualizarGrid;
begin
//
  ConsultaSqlFd(qryCrs,'select * from os_engenharia_crs');
end;

procedure TFrmCadCrs.dbgrd2DblClick(Sender: TObject);
begin
  inherited;
 //
 edtdesc.Text  := qryCrs.FieldByName('descricao').AsString;
  FidCrs        := qryCrs.FieldByName('id').AsInteger;
  sbnovo.Enabled      := False;
  sbgravar.Enabled    :=  True;
  sbconsultar.Enabled :=  False;
  sbexcluir.Enabled   :=  False;
  SpeedButton1.Enabled:=True;
end;

procedure TFrmCadCrs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  AtualizarGridCrs(Self);
end;

procedure TFrmCadCrs.FormShow(Sender: TObject);
begin
  inherited;
  AtualizarGrid;
end;

procedure TFrmCadCrs.sbgravarClick(Sender: TObject);
begin
  inherited;
  if Obrigatorio(Self,edtdesc,'Inserir Descri�ao do CRS !') then Exit;

  with DataModule1.comand do
  begin
    CommandText.Clear;
    CommandText.Add('update os_engenharia_crs set descricao = :descricao where id = :id');
    Params.ParamByName('id').AsInteger:= FidCrs;
    Params.ParamByName('descricao').AsString :=edtdesc.Text;
    Execute();
    AtualizarGrid;
    edtdesc.Clear;
  end;
end;

procedure TFrmCadCrs.sbnovoClick(Sender: TObject);
var
qryTemp:TFDQuery;
begin
  inherited;
  if Obrigatorio(Self,edtdesc,'Inserir Descri��o do CRS !') then Exit;

  //verificar se ja existe
  qryTemp := TFDQuery.Create(nil);
  qryTemp.Connection := DataModule1.ConMySql;
  if ConsultaSqlFd(qryTemp,'select * from os_engenharia_crs where descricao='+QuotedStr(edtdesc.Text))then
  begin
    Application.MessageBox('CRS J� Cadastrado !', 'Aten��o', MB_OK +
      MB_ICONINFORMATION);
      Exit;
  end;

  try
    with DataModule1.comand do
    begin
      CommandText.Clear;
      CommandText.Add('INSERT INTO os_engenharia_crs (descricao) values (:descricao)');
      Params.ParamByName('descricao').AsString  := edtdesc.Text;
      Execute();
    end;
    AtualizarGrid;
    edtdesc.Clear;
  finally
    FreeAndNil(qryTemp);
  end;

end;

procedure TFrmCadCrs.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edtdesc.Clear;
end;

end.
