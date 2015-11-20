unit UFrmDedoDuroRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxControls,
  cxContainer, cxEdit, Vcl.ComCtrls,














  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, PngSpeedButton,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TFrmDedoDuroRural = class(TForm)
    grpgpbdata: TGroupBox;
    lbl1: TLabel;
    edtIni: TcxDateEdit;
    edtFim: TcxDateEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edtcodigo: TEdit;
    edtnome: TEdit;
    btnconsultar: TPngSpeedButton;
    ds1: TDataSource;
    FDQuery1: TFDQuery;
    dbmmodboperacao: TDBMemo;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnconsultarClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDedoDuroRural: TFrmDedoDuroRural;

implementation

{$R *.dfm}

uses DataModule, UConsFuncionario;

procedure TFrmDedoDuroRural.btnconsultarClick(Sender: TObject);
begin
try
  try
    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    sqlstr:='select * from os_engenharia_dedo_rural where data_hora between :dtIni and :dtFim ';
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
  end;
finally
end;
end;

procedure TFrmDedoDuroRural.dbgrd1CellClick(Column: TColumn);
begin
  dbmmodboperacao.DataField:='operacao';
end;

procedure TFrmDedoDuroRural.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
    if trim(edtcodigo.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=16;
      FrmConsFuncionario.ShowModal;
    end
    else
    begin
      sqlstr:='select u.iduser,u.nome as nome_razaosocial,u.login from uccaduser  where u.login='+Trim(edtcodigo.Text);
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=16;
        FrmConsFuncionario.ShowModal;
      end;
    end;
  end
end;

procedure TFrmDedoDuroRural.FormShow(Sender: TObject);
begin
  edtIni.Text:=funcRetornaPrimeiroDiaMes;
  edtFim.Text:=funcRetornaUltimoDiaMes;
end;

end.
