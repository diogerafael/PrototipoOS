unit uCadProjetoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.Menus, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar, cxGroupBox, cxRadioGroup, Vcl.ImgList,
  cxCheckBox, Vcl.Grids;

type
  TfrmCadProjetoCad = class(TForm)
    lbl1: TLabel;
    pnl1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabControl1: TcxTabControl;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabControl2: TcxTabControl;
    lbl13: TLabel;
    cxDateEdit1: TcxDateEdit;
    lbl14: TLabel;
    cxDateEdit2: TcxDateEdit;
    cxRadioGroup1: TcxRadioGroup;
    cxTabSheet3: TcxTabSheet;
    cxTabControl3: TcxTabControl;
    cxButton3: TcxButton;
    cxImageList1: TcxImageList;
    lbl15: TLabel;
    edt1: TEdit;
    lbl16: TLabel;
    cxTextEdit10: TcxTextEdit;
    lbl17: TLabel;
    cxTextEdit11: TcxTextEdit;
    lbl18: TLabel;
    cxComboBox3: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    lbl19: TLabel;
    cxDateEdit3: TcxDateEdit;
    lbl20: TLabel;
    cxDateEdit4: TcxDateEdit;
    lbl21: TLabel;
    cxTextEdit12: TcxTextEdit;
    cxTabSheet4: TcxTabSheet;
    cxTabControl4: TcxTabControl;
    lbl22: TLabel;
    cxDateEdit5: TcxDateEdit;
    lbl23: TLabel;
    cxDateEdit6: TcxDateEdit;
    lbl24: TLabel;
    cxDateEdit7: TcxDateEdit;
    StringGrid1: TStringGrid;
    lbl25: TLabel;
    cxComboBox4: TcxComboBox;
    cxButton4: TcxButton;
    lbl26: TLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProjetoCad: TfrmCadProjetoCad;

implementation

{$R *.dfm}



procedure TfrmCadProjetoCad.cxButton2Click(Sender: TObject);
begin
  Application.MessageBox('Ao sair sem gravar, todos os dados serão perdidos',
    'Informação', MB_YESNO + MB_ICONWARNING);
  Self.Close;
end;

procedure TfrmCadProjetoCad.cxButton4Click(Sender: TObject);
begin
 // frmCadRevisao.Show;
end;

procedure TfrmCadProjetoCad.FormCreate(Sender: TObject);
begin
  with StringGrid1 do begin

    Width:=450;
    ColWidths[0] := 100;
    ColWidths[1] := 100;
    ColWidths[2] := 450;


    ColCount:=3;
    RowCount:=3;

    Cells[0,0]:='Inicio Revisão';
    Cells[1,0]:='Fim Revisão';
    Cells[2,0]:='Descrição';

    Cells[0,1]:='01/10/2014';
    Cells[1,1]:='05/10/2014';
    Cells[2,1]:='Por Motivo de ......';

  end;
end;

end.
