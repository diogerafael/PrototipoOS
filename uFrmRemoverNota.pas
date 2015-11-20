unit uFrmRemoverNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmExcluirNotasRural = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure ExcluirNota(nota: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExcluirNotasRural: TFrmExcluirNotasRural;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrmExcluirNotasRural.Button1Click(Sender: TObject);
begin
  if Edit1.Text<>'' then
  begin
    case Application.MessageBox('Deseja Realmente Excluir a Nota?' + #13#10 +
      ' Isso Pode Gerar Erros em Relat�rios!', 'Aviso', MB_OKCANCEL +
      MB_ICONQUESTION) of
      IDOK:
        begin
          ExcluirNota(Edit1.Text);
          Close;
        end;
      IDCANCEL:
        begin

        end;
    end;

  end;
end;

procedure TFrmExcluirNotasRural.Button2Click(Sender: TObject);
begin
  if Edit1.Text<>'' then
    Edit1.Text:=''
  else
  Close;
end;

procedure TFrmExcluirNotasRural.ExcluirNota(nota:string);
begin
  //verificar se nota existe
  try
    DataModule1.qryCRUD.Close;
    DataModule1.qryCRUD.SQL.Clear;
    DataModule1.qryCRUD.SQL.Add('select * from os_engenharia_notas_rural where descricao ='+QuotedStr(nota));
    DataModule1.qryCRUD.Open();
    if DataModule1.qryCRUD.IsEmpty then
    begin
      Application.MessageBox('N�mero de Nota N�o Encontrado !', 'Aviso', MB_OK +
        MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      DataModule1.qryCRUD.Close;
      DataModule1.qryCRUD.SQL.Clear;
      DataModule1.qryCRUD.SQL.Add('delete from os_engenharia_notas_rural where descricao ='+QuotedStr(nota));
      DataModule1.qryCRUD.ExecSQL;
      InsereDedoDuroRural(DataModule1.qryusuario.FieldByName('iduser').AsString,DataModule1.qryusuario.FieldByName('nome').AsString,'Remover Nota de N�mero '+nota,1);
      Application.MessageBox('Opera��o Executada Com Sucesso !', 'Aviso', MB_OK
        + MB_ICONINFORMATION);

    end;
  except on E: Exception do
  CriarLog(Self,E,'Remover Nota');
  end;
end;

procedure TFrmExcluirNotasRural.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    case Application.MessageBox('Deseja Encerrar?', 'Aten��o!', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  Close;
    end;
  end;

end;

end.
