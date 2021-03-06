unit UDistPeriodos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,













  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
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
  TFrmDistPeriodos = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    img10: TImage;
    grp1: TGroupBox;
    GroupBox1: TGroupBox;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtdatachegada: TcxDateEdit;
    edtlimite: TcxDateEdit;
    edtprorrogacao: TcxDateEdit;
    edtservcampo: TEdit;
    edtatualizacaomub: TEdit;
    edtprojeto: TEdit;
    Panel4: TPanel;
    Label41: TLabel;
    lblvlrtotal: TLabel;
    Label1: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    pnl1: TPanel;
    btsair: TcxButton;
    btgravar: TcxButton;
    lbl3: TLabel;
    edtTopografia: TEdit;
    lbl6: TLabel;
    procedure btnsairClick(Sender: TObject);
    procedure btsairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtdatachegadaExit(Sender: TObject);
    procedure edtconclusaoExit(Sender: TObject);
    procedure edtlimiteExit(Sender: TObject);
    procedure edtprorrogacaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure InicializaCompoentes;
    procedure CalculaDatas;
  public
    { Public declarations }
  end;

var
  FrmDistPeriodos: TFrmDistPeriodos;

implementation

{$R *.dfm}

uses uFrmCadastrarProjeto,System.DateUtils, DataModule;

procedure TFrmDistPeriodos.btgravarClick(Sender: TObject);
var
num,num2,num3,num4:Real;
begin
  num:= StrToIntDef(edtservcampo.Text,0);
  num2:= StrToIntDef(edtatualizacaomub.Text,0);
  num3:= StrToIntDef(edtprojeto.Text,0);
  num4:=StrToIntDef(edtTopografia.Text,0);
  if((num+num2+num3+num4) <> StrToFloat(lblvlrtotal.Caption))then
  begin
    ShowMessage('Verifique a Quantidade de Dias Distribuídos !');
    Exit;
  end;
  with DataModule1.comand do
  begin
    CommandText.Clear;
    CommandText.Text:=' INSERT INTO os_cargahoraria '+
                      ' (prorrogacao,servcampo,atualizacaomub,projeto,datainclusao,id_projeto,topografia) '+
                      ' VALUES(:prorrogacao ,:servcampo,:atualizacaomub,:projeto,:datainclusao,:id_projeto,:topografia) ';
   Params.ParamByName('prorrogacao').AsDate     :=edtprorrogacao.Date;
   Params.ParamByName('servcampo').AsFloat      :=StrToIntDef(edtservcampo.Text,0);
   Params.ParamByName('atualizacaomub').AsFloat :=StrToIntDef(edtatualizacaomub.Text,0);
   Params.ParamByName('projeto').AsFloat        :=StrToIntDef(edtprojeto.Text,0);
   Params.ParamByName('datainclusao').AsDate    :=Now;
   Params.ParamByName('id_projeto').AsInteger   :=frmCadastrarProjeto.FIdProjeto;
   Params.ParamByName('topografia').AsFloat     :=StrToIntDef(edtTopografia.Text,0);
   Execute();
   CommandText.Clear;
   Close;

   frmCadastrarProjeto.cbbclassificacaoosExit(Self);

   Application.MessageBox('Prorrogação Inserida com Sucesso !', 'Informação',
     MB_OK + MB_ICONINFORMATION);

     Self.Close;


  end;
end;

procedure TFrmDistPeriodos.btnsairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDistPeriodos.btsairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDistPeriodos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then   selectnext(activecontrol,true, true);
end;

procedure TFrmDistPeriodos.FormShow(Sender: TObject);
begin
  InicializaCompoentes();
end;

procedure TFrmDistPeriodos.InicializaCompoentes;
begin
  edtdatachegada.text       :=  frmCadastrarProjeto.edtdtchegadageral.Text;
  edtprorrogacao.text       :=  frmCadastrarProjeto.edtdataprorrogacao.Text;
  edtlimite.text            :=  frmCadastrarProjeto.edtdtlimitegeral.Text;
  lblvlrtotal.Caption:= inttostr(DaysBetween(frmCadastrarProjeto.edtdtlimitegeral.Date,frmCadastrarProjeto.edtdataprorrogacao.Date));
  if(frmCadastrarProjeto.edtdtchegada.Text<>'')then edtservcampo.ReadOnly:=True;
  if(frmCadastrarProjeto.edtretornoatualizacao.Text<>'')then edtatualizacaomub.ReadOnly:=True;
  if(frmCadastrarProjeto.edtretornoatualizacao.Text<>'')then edtprojeto.ReadOnly:=True;
end;

procedure TFrmDistPeriodos.CalculaDatas;
var
_datachegada,_dataconclusao,_datalimite,_prorrogacao:TDate;
sqlstr:string;
begin
  if Trim(edtdatachegada.Text) = '' then
  begin
    Application.MessageBox('Atenção, Informe a data de chegada!',PChar(Application.Title), MB_OK + MB_ICONWARNING);
    edtdatachegada.SetFocus;
    Abort;
  end;

  if Trim(edtdatachegada.Text)<> '' then
    _datachegada    := edtdatachegada.Date;


  if Trim(edtlimite.Text)<> '' then
    _datalimite     := edtlimite.Date
  else
    _datalimite     := edtdatachegada.Date;


  if Trim(edtprorrogacao.Text)<> '' then
    _prorrogacao    := edtprorrogacao.Date
  else
    _prorrogacao      := edtdatachegada.Date;

    sqlstr := datetostr((_datachegada -( _datachegada+_datalimite + _prorrogacao)));
end;

procedure TFrmDistPeriodos.edtconclusaoExit(Sender: TObject);
begin
  CalculaDatas;
end;

procedure TFrmDistPeriodos.edtdatachegadaExit(Sender: TObject);
begin
  CalculaDatas();
end;

procedure TFrmDistPeriodos.edtlimiteExit(Sender: TObject);
begin
  CalculaDatas();
end;

procedure TFrmDistPeriodos.edtprorrogacaoExit(Sender: TObject);
begin
  CalculaDatas();
end;

end.
