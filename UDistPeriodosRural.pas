unit UDistPeriodosRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,System.DateUtils,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  dxGDIPlusClasses;

type
  TFrmDistPeriodosRural = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    img10: TImage;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtdatachegada: TcxDateEdit;
    edtlimite: TcxDateEdit;
    edtprorrogacao: TcxDateEdit;
    grp2: TGroupBox;
    lbl3: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edtservcampo: TEdit;
    edtatualizacaomub: TEdit;
    edtprojeto: TEdit;
    pnl1: TPanel;
    lbl6: TLabel;
    lblvlrtotal: TLabel;
    pnl2: TPanel;
    btnbtsair: TcxButton;
    btnbtgravar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnbtsairClick(Sender: TObject);
    procedure btnbtgravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure InicializaCompoentes();
  public
    { Public declarations }
  end;

var
  FrmDistPeriodosRural: TFrmDistPeriodosRural;

implementation

{$R *.dfm}

uses uFrmCadastrarProjetoRural, DataModule;

procedure TFrmDistPeriodosRural.btnbtgravarClick(Sender: TObject);
var
num,num2,num3:Real;
begin
  num:= StrToIntDef(edtservcampo.Text,0);
  num2:= StrToIntDef(edtatualizacaomub.Text,0);
  num3:= StrToIntDef(edtprojeto.Text,0);
  if((num+num2+num3) <> StrToFloat(lblvlrtotal.Caption))then
  begin
    Application.MessageBox('Verifique a Quantidade de Dias !', 'Aten��o',
      MB_OK + MB_ICONINFORMATION);
    Exit;
   end;
     with DataModule1.comand do
    begin
      CommandText.Clear;
      CommandText.Text:=' INSERT INTO os_cargahoraria_rural '+
                      ' (prorrogacao,servcampo,atualizacaomub,projeto,datainclusao,id_projeto) '+
                      ' VALUES(:prorrogacao ,:servcampo,:atualizacaomub,:projeto,:datainclusao,:id_projeto) ';
      Params.ParamByName('prorrogacao').AsDate     :=edtprorrogacao.Date;
      Params.ParamByName('servcampo').AsFloat      :=StrToIntDef(edtservcampo.Text,0);
      Params.ParamByName('atualizacaomub').AsFloat :=StrToIntDef(edtatualizacaomub.Text,0);
      Params.ParamByName('projeto').AsFloat        :=StrToIntDef(edtprojeto.Text,0);
      Params.ParamByName('datainclusao').AsDate    :=Now;
      Params.ParamByName('id_projeto').AsInteger   :=frmCadastrarProjetoRural.FIdProjeto;
      Execute();
      CommandText.Clear;

      Close;
      frmCadastrarProjetoRural.edtdtchegadageralExit(Self);

      Application.MessageBox('Prorroga��o Inserida com Sucesso !', 'Informa��o',
     MB_OK + MB_ICONINFORMATION);

    end;

  Self.Close;
end;

procedure TFrmDistPeriodosRural.btnbtsairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmDistPeriodosRural.FormShow(Sender: TObject);
begin
  //
  InicializaCompoentes;
end;

procedure TFrmDistPeriodosRural.InicializaCompoentes;
begin
  edtdatachegada.text       :=  frmCadastrarProjetoRural.edtdtchegadageral.Text;
  edtprorrogacao.text       :=  frmCadastrarProjetoRural.edtdtprorrogacao.Text;
  edtlimite.text            :=  frmCadastrarProjetoRural.edtdtlimitegeral.Text;
  lblvlrtotal.Caption:= inttostr(DaysBetween(frmCadastrarProjetoRural.edtdtlimitegeral.Date,frmCadastrarProjetoRural.edtdtprorrogacao.Date));
  {controlar campos com data final}
  if(frmCadastrarProjetoRural.edtdtchegada.Text<>'')then edtservcampo.ReadOnly:=True;
  if(frmCadastrarProjetoRural.edtretornotopografia.Text<>'')then edtatualizacaomub.ReadOnly:=True;
  if(frmCadastrarProjetoRural.edtdtretornoprojeto.Text<>'')then edtprojeto.ReadOnly:=True;
end;

end.

