unit uConfigBd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls, Buttons, IniFiles,
  PngBitBtn;

type
  Tfrmconfigdb = class(TForm)
    shp1: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtipservidor: TEdit;
    edtnomebd: TEdit;
    lbl4: TLabel;
    edtporta: TEdit;
    img1: TImage;
    btok: TPngBitBtn;
    btsair: TPngBitBtn;
    Label1: TLabel;
    edtusuariobd: TEdit;
    Label2: TLabel;
    edtsenhabd: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btsairClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfigdb: Tfrmconfigdb;

implementation

uses DataModule;

{$R *.dfm}

procedure Tfrmconfigdb.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then SelectNext(ActiveControl,True,True);
end;

procedure Tfrmconfigdb.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then close;
end;

procedure Tfrmconfigdb.FormShow(Sender: TObject);
begin
  edtipservidor.Text  :=  Trim(Servidor);
  edtnomebd.Text      :=  Trim(NomeBanco);
  edtporta.Text       :=  Trim(PortaServidor);
  edtusuariobd.Text   :=  Trim(UsuarioBD);
  edtsenhabd.Text     :=  Trim(SenhaBD);
  Servidor            :=  '';
  NomeBanco           :=  '';
  PortaServidor       :=  '';
  UsuarioBD           :=  '';
  SenhaBD             :=  '';
  edtipservidor.SetFocus;
end;

procedure Tfrmconfigdb.btokClick(Sender: TObject);
begin
  if Obrigatorio(Self, edtipservidor, 'Informe o IP ou Nome do Servidor !')       then Exit;
  if Obrigatorio(Self, edtnomebd, 'Informe o Nome do Banco de Dados !')           then Exit;
  if Obrigatorio(Self, edtporta, 'Informe a Porta de Conexão do Banco de Dados !') then Exit;
  if Obrigatorio(Self, edtusuariobd, 'Informe o Usuário do Banco de Dados !') then Exit;
  if Obrigatorio(Self, edtsenhabd, 'Informe a Senha do Usuário do Banco de Dados !') then Exit;

  Servidor      :=  Trim(edtipservidor.Text);
  NomeBanco     :=  Trim(edtnomebd.Text);
  PortaServidor :=  Trim(edtporta.Text);
  UsuarioBD     :=  Trim(edtusuariobd.Text);
  SenhaBD       :=  Trim(edtsenhabd.Text);
  with TIniFile.Create(ExtractFilePath(Application.ExeName)+'db.ini') do
  try
    WriteString('BANCO','Servidor',Servidor);
    WriteString('BANCO','NomeBanco',NomeBanco);
    WriteString('BANCO','Porta',PortaServidor);
    WriteString('BANCO','UsuarioBD',Crypt('E',UsuarioBD, 'QUANTUM28042004'));
    WriteString('BANCO','SenhaBD',Crypt('E',SenhaBD, 'QUANTUM28042004'));
  finally
    free;
  end;
  close;
end;

procedure Tfrmconfigdb.btsairClick(Sender: TObject);
begin
  Close;
  ExitProcess(0);
end;

end.
