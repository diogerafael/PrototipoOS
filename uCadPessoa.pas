unit uCadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  Datasnap.DBClient, Vcl.Menus, cxButtons, Vcl.ExtCtrls;

type
  TfrmCadCliente = class(TForm)
    lbl1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cds1: TClientDataSet;
    adotbcds1Nome: TStringField;
    adotbcds1Endereco: TStringField;
    adotbcds1Cidade: TStringField;
    adotbcds1Telefone: TStringField;
    adotbcds1dataCadastro: TStringField;
    ds1: TDataSource;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Endereco: TcxGridDBColumn;
    cxGrid1DBTableView1Cidade: TcxGridDBColumn;
    cxGrid1DBTableView1Telefone: TcxGridDBColumn;
    cxGrid1DBTableView1dataCadastro: TcxGridDBColumn;
    pnl1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}
  uses
  uCadPessoaCad;

procedure TfrmCadCliente.cxButton1Click(Sender: TObject);
begin
  frmCadPessoa:=TfrmCadPessoa.Create(Self,1);
  frmCadPessoa.show;
end;

procedure TfrmCadCliente.cxButton2Click(Sender: TObject);
begin
  frmCadPessoa:=TfrmCadPessoa.Create(Self,11);
  frmCadPessoa.show;
end;

procedure TfrmCadCliente.cxButton3Click(Sender: TObject);
begin
  Application.MessageBox('', 'Deseja Realmente Excluir ?', MB_YESNO);

end;

procedure TfrmCadCliente.cxButton4Click(Sender: TObject);
begin
  Self.Close;
end;

end.
