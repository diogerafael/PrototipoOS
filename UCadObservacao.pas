unit UCadObservacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmObservacao = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmObservacao: TFrmObservacao;

implementation

{$R *.dfm}

uses uFrmCadastrarProjeto, DataModule, uFrmCadastrarProjetoRural;

procedure TFrmObservacao.btn1Click(Sender: TObject);
begin
  if Trim(mmo1.Text)='' then
  begin
    Application.MessageBox('Inserir Informa��es !', 'Aten��o', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
  if MessageDlg('Deseja Gravar Obsrva��o ?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if Self.Tag=1 then
    begin
      FrmCadastrarProjetoRural.mmoobservacao.Lines.Add(DataModule1.qryusuario.FieldByName('nome').AsString + ': '+ mmo1.Text);
    end
    else
      frmCadastrarProjeto.mmoobservacao.Lines.Add(DataModule1.qryusuario.FieldByName('nome').AsString + ': '+ mmo1.Text);
  end;
  Close;
end;

procedure TFrmObservacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_escape then
  begin
    case Application.MessageBox('Deseja Encerrar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  Close;
    end;
  end;
end;
end.
