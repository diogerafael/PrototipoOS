unit UPadraoNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, ToolWin, ComCtrls, ExtCtrls, Menus,
  Vcl.StdCtrls;

type
  TFrmCadPadraoNovoGrande = class(TForm)
    PopupMenu1: TPopupMenu;
    CalculadoraF81: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    sbrelatorios: TPngSpeedButton;
    sbsair: TPngSpeedButton;
    sbexcluir: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    sbconsultar: TPngSpeedButton;
    sbgravar: TPngSpeedButton;
    sbnovo: TPngSpeedButton;
    btnopcoes: TPngSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbsairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CalculadoraF81Click(Sender: TObject);
  private
    { Private declarations }
    procedure InicializaComponentes;
  public
    { Public declarations }
  end;

var
  FrmCadPadraoNovoGrande: TFrmCadPadraoNovoGrande;

implementation



{$R *.dfm}

procedure TFrmCadPadraoNovoGrande.CalculadoraF81Click(Sender: TObject);
begin
  //Calculadora();
end;

procedure TFrmCadPadraoNovoGrande.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
  begin
    case Application.MessageBox('Deseja Encerrar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  Close;
    end;
  end;
end;

procedure TFrmCadPadraoNovoGrande.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then selectnext(activecontrol,true,true);
end;

procedure TFrmCadPadraoNovoGrande.FormShow(Sender: TObject);
begin
  InicializaComponentes();
end;

procedure TFrmCadPadraoNovoGrande.sbsairClick(Sender: TObject);
begin
  case Application.MessageBox('Deseja Encerrar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION) of
    IDYES:  Close;
  end;
end;

procedure TFrmCadPadraoNovoGrande.InicializaComponentes;
begin
  //habilitando desabilitando bot�es
  sbnovo.enabled        := true;
  sbconsultar.enabled   := true;
  sbrelatorios.enabled  := true;
  sbgravar.enabled      := false;
  sbexcluir.enabled     := false;
end;
end.
