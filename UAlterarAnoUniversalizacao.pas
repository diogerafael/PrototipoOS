unit UAlterarAnoUniversalizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus,
  cxButtons, JvComponentBase, JvThread;

type
  TFrmAlterarUniversalizacao = class(TForm)
    lbl8: TLabel;
    edtcodmunicipio: TEdit;
    edtdescmunicipio: TEdit;
    edtuniversalizacao: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ThreadProcessando: TJvThread;
    procedure edtcodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ThreadProcessandoExecute(Sender: TObject; Params: Pointer);
  private
    procedure AlterarUniversalizacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlterarUniversalizacao: TFrmAlterarUniversalizacao;

implementation

{$R *.dfm}

uses u_conscodmunicipio, DataModule, uProcessandoNovo;


procedure TFrmAlterarUniversalizacao.cxButton1Click(Sender: TObject);
begin
  AlterarUniversalizacao;
end;

procedure TFrmAlterarUniversalizacao.AlterarUniversalizacao;
var
  qryExe: TFDQuery;
begin
  Obrigatorio(Self, edtcodmunicipio, 'Definir Municipio Que Será Modificado !');
  Obrigatorio(Self, edtuniversalizacao, 'Definir Novo Ano de Universalização !');
  try
    qryExe := TFDQuery.Create(nil);
    qryExe.Connection := DataModule1.ConMySql;
    try
      qryExe.SQL.Add('update os_engenharia_projeto_rural set universalizacao = :universalizacao where (dt_conclusao is NULL or dt_conclusao < ''2000-01-01'') and (id_municipio = :cidade) ');
      qryExe.Params.ParamByName('universalizacao').AsString := Trim(edtuniversalizacao.Text);
      qryExe.Params.ParamByName('cidade').AsInteger := strtointdef(edtcodmunicipio.Text, 0);
      qryExe.ExecSQL;
      Application.MessageBox('Universalização Modificada com Sucesso !',
        'Atenção', MB_OK + MB_ICONINFORMATION);
    except
      on E: Exception do
        CriarLog(Self, E, 'Alterar Vinculacao Projeto Rural');
    end;
  finally
    FreeAndNil(qryExe);
  end;
end;

procedure TFrmAlterarUniversalizacao.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmAlterarUniversalizacao.edtcodmunicipioKeyPress(
  Sender: TObject; var Key: Char);
begin
  {pesquisar municipio}
 if key = #13 then
  begin
    if trim(edtcodmunicipio.text)='' then
    begin
      if frmconscidade = nil then
        application.createform(tfrmconscidade,frmconscidade);
      frmconscidade.edtopcao.text := edtcodmunicipio.text;
      frmconscidade.tag :=  8 ;
      frmconscidade.showmodal;
    end
    else
    begin
       sqlstr:= ' '+
       ' select * from municipios where cod_municipio = '+(edtcodmunicipio.text);
      if consultasqlFD(datamodule1.Qry20,sqlstr)then
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

procedure TFrmAlterarUniversalizacao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_ESCAPE then
  begin
    if Application.MessageBox('Deseja Encerrar ?', 'Atenção', MB_YESNO +
      MB_ICONQUESTION) = IDYES then
    begin
      Self.Close;
    end;

  end;
end;

procedure TFrmAlterarUniversalizacao.ThreadProcessandoExecute(
  Sender: TObject; Params: Pointer);
begin
    AlterarUniversalizacao;
end;

end.
