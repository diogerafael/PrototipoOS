unit uCadValorProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  Vcl.ComCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ImgList, cxCurrencyEdit;

type
  TfrmCadValorProjeto = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    pnl1: TPanel;
    btnbtsair: TcxButton;
    btnbtgravar: TcxButton;
    lbl21: TLabel;
    edtqtdposteprojurbano: TEdit;
    lbl33: TLabel;
    edtqtdposterural: TEdit;
    lbl34: TLabel;
    edtqtdlevantado: TEdit;
    lbl35: TLabel;
    edtqtdposteatualizado: TEdit;
    lbl38: TLabel;
    edtqtdtopografia: TEdit;
    lblTravessia: TLabel;
    edtqttravessia: TEdit;
    lbl39: TLabel;
    edtqtincorporacao: TEdit;
    lbl40: TLabel;
    edtqtdimprocedente: TEdit;
    lbl41: TLabel;
    edtqtddeslocamento: TEdit;
    lbl12: TLabel;
    edtqtdoutros: TEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    constructor Create(AOwner: TComponent;valor:Integer);reintroduce;
  private
    { Private declarations }
    FValor:Integer;
  public
    { Public declarations }

  end;

var
  frmCadValorProjeto: TfrmCadValorProjeto;

implementation

{$R *.dfm}

constructor TfrmCadValorProjeto.Create(AOwner: TComponent; valor: Integer);
begin
  inherited Create(AOwner);


end;

procedure TfrmCadValorProjeto.cxButton1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadValorProjeto.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
