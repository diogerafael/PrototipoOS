unit UGerenciamentoMicros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  PngBitBtn, Vcl.Menus,
  cxButtons, Adodb, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, dxGDIPlusClasses;

type
  Tfrmgerenciamentomicros = class(TForm)
    lbl1: TLabel;
    shp1: TShape;
    img10: TImage;
    RgServidorDedicado: TRadioGroup;
    Qrymicros: TFDQuery;
    DsMicros: TDataSource;
    DBGrid1: TDBGrid;
    lblcadastrados: TLabel;
    lblcontratados: TLabel;
    PngBitBtn2: TPngBitBtn;
    QryLibera: TFDQuery;
    PopupMenu1: TPopupMenu;
    RemoverMicroCadastrado1: TMenuItem;
    cxButton1: TcxButton;
    Label1: TLabel;
    edtnrmicros: TEdit;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RemoverMicroCadastrado1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgerenciamentomicros: Tfrmgerenciamentomicros;

implementation

{$R *.dfm}

uses DataModule;

procedure Tfrmgerenciamentomicros.cxButton1Click(Sender: TObject);
var _msg : String;
begin
  if Obrigatorio(Self, edtnrmicros, 'Informe a Quantidade de Micros!')  then Exit;

  if RgServidorDedicado.ItemIndex = 0 then
    _msg := ' SERVIDOR NORMAL.'
  else
    _msg := ' SERVIDOR DEDICADO.';

  if Application.MessageBox(PChar('Atenção! Confirma a Alteração para '+_msg+' e '+edtnrmicros.Text+' Micros ?'),
    PChar(Application.Title), MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    try
      DataModule1.ConMySql.ExecSQL('update libera set servidordedicado = '+InttoStr(RgServidorDedicado.ItemIndex)+',qtdmicro='+Trim(edtnrmicros.Text));
    except
      on E : Exception do
      begin
        MessageDlg(''+#13+#10+'Atenção: Alteração Não Realizada.' + #13+#10+#13+#10 + E.Message, mtError, [mbOK], 0);
      end;
    end;
    Qrymicros.Close;
    Qrymicros.Open;
    Application.MessageBox('Atenção! Alteração Realizada com Sucesso!',PChar(Application.Title), MB_OK + MB_ICONINFORMATION);
    frmgerenciamentomicros.Close;
  end;
end;

procedure Tfrmgerenciamentomicros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ExitProcess(0);
end;

procedure Tfrmgerenciamentomicros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then Close;
end;

procedure Tfrmgerenciamentomicros.FormShow(Sender: TObject);
begin
  edtnrmicros.Text       := IntToStr(_QtdMicrosContratados);
  lblcadastrados.Caption := 'Total de Micros Cadastrados: '+IntToStr(_QtdMicrosContratados);
  lblcontratados.Caption := 'Total de Micros Contratados: '+IntToStr(_QtdMicrosLiberados);
  QryLibera.Close;
  QryLibera.Open;
  Qrymicros.Close;
  Qrymicros.Open;
  RgServidorDedicado.ItemIndex := QryLibera.FieldByName('servidordedicado').AsInteger;
  DBGrid1.SetFocus;
end;

procedure Tfrmgerenciamentomicros.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmgerenciamentomicros.RemoverMicroCadastrado1Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Atenção! Confirma a Exclusão do Micro Selecionado?'
    + #13#10 + 'IP: '+Qrymicros.FieldByName('ip').AsString+ #13#10 + 'Nome Micro: '+Qrymicros.FieldByName('nomemicro').AsString+ #13#10 +
    'Volume HD: '+Qrymicros.FieldByName('volume').AsString), PChar(Application.Title), MB_YESNO +
    MB_ICONQUESTION) = IDYES then
  begin
    try
      DataModule1.ConMySql.ExecSQL('delete from microscadastrados where id='+Qrymicros.FieldByName('id').AsString);
    except
      on E : Exception do
      begin
        MessageDlg(''+#13+#10+'Atenção: Exclusão Não Realizada.' + #13 + E.Message, mtError, [mbOK], 0);
      end;
    end;
    Qrymicros.Close;
    Qrymicros.Open;
  end;
end;


end.
