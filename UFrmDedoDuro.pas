unit UFrmDedoDuro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, PngSpeedButton, Vcl.ComCtrls,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxControls,
  cxContainer, cxEdit,













  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, DataModule, UConsFuncionario,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrmDedoDuro = class(TForm)
    grpgpbdata: TGroupBox;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtcodigo: TEdit;
    edtnome: TEdit;
    btnconsultar: TPngSpeedButton;
    dbgrd1: TDBGrid;
    dbmmodboperacao: TDBMemo;
    lbl2: TLabel;
    FDQuery1: TFDQuery;
    ds1: TDataSource;
    edtIni: TcxDateEdit;
    edtFim: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnconsultarClick(Sender: TObject);
    procedure dbgrd1ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDedoDuro: TFrmDedoDuro;

implementation

{$R *.dfm}

procedure TFrmDedoDuro.btnconsultarClick(Sender: TObject);
begin
try
  try
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
   sqlstr:='select * from os_engenharia_dedo where data_hora between :dtIni and :dtFim ';
   if edtcodigo.Text<>'' then
        sqlstr:=sqlstr+' and cod_usuario='+edtcodigo.Text;

        FDQuery1.SQL.Add(sqlstr);
   FDQuery1.Params.ParamByName('dtIni').AsDateTime := edtIni.Date;
   FDQuery1.Params.ParamByName('dtFim').AsDateTime := edtFim.Date;
   FDQuery1.Open();
   if FDQuery1.IsEmpty then
   begin
     SemRegistros;
     Abort;
   end;
  except on E: Exception do
    CriarLog(Self,E,'Dedo Duro');
  end;
finally
end;
end;

procedure TFrmDedoDuro.dbgrd1ColEnter(Sender: TObject);
begin
        dbmmodboperacao.DataField:='operacao';
end;

procedure TFrmDedoDuro.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
    if trim(edtcodigo.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=15;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select u.iduser,u.nome as nome_razaosocial,u.login from uccaduser  where u.login='+Trim(edtcodigo.Text);
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=15;
        FrmConsFuncionario.ShowModal;
      end;
    end;
  end
end;

procedure TFrmDedoDuro.FormShow(Sender: TObject);
begin
        edtIni.Text:=funcRetornaPrimeiroDiaMes;
        edtFim.Text:=funcRetornaUltimoDiaMes;
end;

end.
