unit u_conscodmunicipio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Grids, DBGrids, Vcl.ExtCtrls, uConsProjeto,
  URelProjetoPorStatusRural, UFrmConsultaRapidaRural;

type
  Tfrmconscidade = class(TForm)
    sbsair: TSpeedButton;
    DBGrid1: TDBGrid;
    lbltipo: TLabel;
    edtopcao: TEdit;
    shp1: TShape;
    img10: TImage;
    lbl3: TLabel;
    procedure sbsairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtopcaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaDados;
  public
    { Public declarations }
  end;

var
  frmconscidade: Tfrmconscidade;

implementation

uses DataModule, uFrmCadastrarProjeto, uFrmCadastrarProjetoRural,UFrmConsultaRapida,
  URelProjetoPorStatus, UAlterarAnoUniversalizacao;

{$R *.DFM}

procedure Tfrmconscidade.sbsairClick(Sender: TObject);
begin
 modalresult := -1;
end;

procedure Tfrmconscidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_ESCAPE THEN
    Close;
end;

procedure Tfrmconscidade.edtopcaoKeyPress(Sender: TObject; var Key: Char);
var snom : string;
begin
  if key = #13 then
  begin
    snom := '';
    snom := edtopcao.text+'%';
    with datamodule1.query01 do
    begin
      close;
      sql.clear;
      sql.add('select * from municipios where nome_municipio like '+quotedstr(snom));
      open;
      if recordcount = 0 then
      begin
        Application.MessageBox('Aten��o! N�o Foram Encontrados Registros !', PChar(Application.Title),MB_OK + MB_ICONINFORMATION);
        edtopcao.setfocus;
      end
      else
      DBGrid1.setfocus;
    end;
  end;
end;

procedure Tfrmconscidade.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    CarregaDados();
end;

procedure Tfrmconscidade.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenarDbGrid(datamodule1.query01,column.FieldName);
end;

procedure Tfrmconscidade.FormShow(Sender: TObject);
begin
  datamodule1.query01.Close;
  edtopcao.Clear;
  edtopcao.setfocus;

end;

procedure Tfrmconscidade.CarregaDados;
begin
  if not datamodule1.query01.IsEmpty then
  begin
    if frmconscidade.tag = 1 then  //cadastro de clientes
    begin
      frmCadastrarProjeto.edtdescmunicipio.text      := datamodule1.query01.fieldbyname('nome_municipio').asstring;
      frmCadastrarProjeto.edtcodmunicipio.text       := datamodule1.query01.fieldbyname('cod_municipio').asstring;
      frmCadastrarProjeto.cbbcrs.setfocus;
    end;
    if frmconscidade.tag = 2 then  //cadastro de clientes
    begin
      frmCadastrarProjetoRural.edtdescmunicipio.text      := datamodule1.query01.fieldbyname('nome_municipio').asstring;
      frmCadastrarProjetoRural.edtcodmunicipio.text       := datamodule1.query01.fieldbyname('cod_municipio').asstring;
      frmCadastrarProjetoRural.cbbcrs.setfocus;
    end;
    if frmconscidade.Tag=3 then
    begin
     FrmConsultaRapida.edtcodmunicipio.Text := DataModule1.query01.FieldByName('cod_municipio').AsString;
     FrmConsultaRapida.edtdescmunicipio.Text:= DataModule1.query01.fieldbyname('nome_municipio').asstring;
    end;
    if frmconscidade.Tag=4 then
    begin
      frmConsutarProjeto.edtcodmunicipio.Text:=DataModule1.query01.FieldByName('cod_municipio').AsString;
      frmConsutarProjeto.edtdescmunicipio.Text:=DataModule1.query01.fieldbyname('nome_municipio').asstring;
    end;
    if frmconscidade.tag=5 then
    begin
      FrmRelProjetoStatusRural.edtcodmunicipio.Text:=DataModule1.query01.FieldByName('cod_municipio').AsString;
      FrmRelProjetoStatusRural.edtdescmunicipio.Text:=DataModule1.query01.fieldbyname('nome_municipio').asstring;
    end;
    if frmconscidade.tag=6 then
    begin
      FrmRelProjEstatus.edtcodmunicipio.Text:=DataModule1.query01.FieldByName('cod_municipio').AsString;
      FrmRelProjEstatus.edtdescmunicipio.Text:=DataModule1.query01.fieldbyname('nome_municipio').asstring;
    end;
    if frmconscidade.Tag=7 then
    begin
      FrmConsultaRapidaRural.edtcodmunicipio.Text:=DataModule1.query01.FieldByName('cod_municipio').AsString;
      FrmConsultaRapidaRural.edtdescmunicipio.Text:=DataModule1.query01.fieldbyname('nome_municipio').asstring;
    end;
    if frmconscidade.Tag=8 then
    begin
      FrmAlterarUniversalizacao.edtcodmunicipio.Text  :=DataModule1.query01.FieldByName('cod_municipio').AsString;
      FrmAlterarUniversalizacao.edtdescmunicipio.Text :=DataModule1.query01.fieldbyname('nome_municipio').asstring;
    end;
    close;
  end;
end;

procedure Tfrmconscidade.DBGrid1DblClick(Sender: TObject);
begin
  CarregaDados();
end;

procedure Tfrmconscidade.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 // with DBGrid1 do
//  begin
//    with Canvas do
//    begin
//      if not (gdSelected in State) then
//      Begin // Se o estado da c�lula n�o � selecionado
//        with DataSource.DataSet do
//        begin
//          if not(Odd(RecNo)) then
//          begin
//            Brush.Color := _corZebra; // Cor da c�lula
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
//      FillRect (Rect); // Pinta a c�lula
//      DefaultDrawDataCell (Rect, Column.Field, State) // Reescreve o valor que vem do banco
//    end;
//  end;
end;

end.
