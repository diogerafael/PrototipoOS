unit URelServicoInterno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, URelPadrao, Vcl.Menus, RDprint,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Samples.Gauges, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmRelServicoInterno = class(TFrmRelPadrao)
    lbl2: TLabel;
    edtCodSolicitante: TEdit;
    edtdescsolicitante: TEdit;
    lbl3: TLabel;
    edtcodsolicitado: TEdit;
    edtdescsol: TEdit;
    pnl2: TPanel;
    grp1: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    edtini: TcxDateEdit;
    edtfim: TcxDateEdit;
    lbl6: TLabel;
    cbbstatus: TComboBox;
    rg1: TRadioGroup;
    procedure edtCodSolicitanteKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ConsultarSolicitante;
    procedure CosultarSolicitado;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelServicoInterno: TFrmRelServicoInterno;

implementation

{$R *.dfm}

uses UConsFuncionario, DataModule;

procedure TFrmRelServicoInterno.edtCodSolicitanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
  begin
    ConsultarSolicitante;
  end;
end;

procedure TFrmRelServicoInterno.ConsultarSolicitante;
begin
  if trim(edtCodSolicitante.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=21;
      FrmConsFuncionario.ShowModal;
    end
  else
  begin
      sqlstr:='select * from cad_funcionarios where id='+edtCodSolicitado.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=21;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtCodSolicitado.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdescsol.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
  end;
end;

procedure TFrmRelServicoInterno.CosultarSolicitado;
begin
    if trim(edtCodSolicitante.text)='' then
    begin
      if FrmConsFuncionario = nil then
      Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
      FrmConsFuncionario.Tag :=20;
      FrmConsFuncionario.ShowModal;
    end
  else
  begin
      sqlstr:='select * from cad_funcionarios where id='+edtcodsolicitado.Text;
      if not ConsultaSqlFd(datamodule1.Query01,sqlstr)  then
      begin
        SemRegistros;
        if FrmConsFuncionario = nil then
        Application.CreateForm(TFrmConsFuncionario,FrmConsFuncionario);
        FrmConsFuncionario.Tag :=20;
        FrmConsFuncionario.ShowModal;
      end
      else
      begin
        edtCodSolicitado.text  := datamodule1.Query01.fieldbyname('id').asstring;
        edtdescsol.text := datamodule1.Query01.fieldbyname('nome_razaosocial').asstring;
      end;
  end;
end;

end.
