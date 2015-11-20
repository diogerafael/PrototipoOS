unit uCadPessoaCad;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ImgList;

type
  TfrmCadPessoa = class(TForm)

    lbl1: TLabel;
    pnl1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    tbc1: TTabControl;
    lbl2: TLabel;
    lbl3: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    lbl4: TLabel;
    lbl5: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxImageList1: TcxImageList;
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
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

constructor TfrmCadPessoa.Create(AOwner: TComponent; valor: Integer);
begin
  inherited Create(AOwner);
  Self.cxButton1.OptionsImage.ImageIndex:=valor;

end;

procedure TfrmCadPessoa.cxButton1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadPessoa.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
