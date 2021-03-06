unit UGraficoChart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  VCLTee.Series, VCLTee.DBChart, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, VclTee.TeeGDIPlus, FireDAC.Stan.Intf,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrmGraficoPostProj = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    shp1: TShape;
    lbl1: TLabel;
    img10: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficoPostProj: TFrmGraficoPostProj;

implementation

{$R *.dfm}

uses DataModule, URelndicadoresGerais;

procedure TFrmGraficoPostProj.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
  begin
    case Application.MessageBox('Deseja Encerrar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  Close;
    end;
  end;
end;

procedure TFrmGraficoPostProj.FormShow(Sender: TObject);
begin
  FDQuery1.Params.ParamByName('dtini').AsDate := FrmRelIndicadoresGerais.edtini.Date;
  FDQuery1.Params.ParamByName('dtfim').AsDate := FrmRelIndicadoresGerais.edtfim.Date;
  FDQuery1.Open();
  DBChart1.Title.Text.Clear;
  DBChart1.Title.Text.Add('Postes Projetados Entre '+FrmRelIndicadoresGerais.edtini.Text +' e '+FrmRelIndicadoresGerais.edtfim.Text);
end;

end.
