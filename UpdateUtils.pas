unit UpdateUtils;

interface

uses
  StrUtils, Dialogs, Messages, Forms, Classes, SysUtils, WUpdate,ShellAPI,Windows;

// declaramentos de funções e procedures
procedure Create_Request_Update;
// procedure AUpdateAppRestart(Sender: TObject; var Allow: Boolean);
function Busca_Update_Sistema(Link_File_Update, NomeModulo: string;
  lShowMsg_NOT_NewVersion: Boolean = True): Boolean;
function Executar_e_Esperar(FileExec, Params: string; ShowWindows: Boolean)
  : Boolean;


function MsgInfo(sMens1:    string; sMens2  : string = ''; sTitulo : string = 'Atenção'): Boolean;
function MsgAlerta(sMens1:  string; sMens2  : string = ''; sTitulo : string = 'Atenção'): Boolean;
function MsgErro(sMens1:    string; sMens2  : string = ''; sTitulo : string = 'Atenção'): Boolean;
function MsgConfirma(iMens1: string; iMens2 : string = ''; iTitulo : string = 'Confirma?'): Boolean;


var
  AUpdate: TWebUpdate;
  CommandUpdate: Boolean;

  // const
  // constantes

implementation




procedure Create_Request_Update;
begin
  AUpdate := TWebUpdate.Create(nil);

  with AUpdate do
  begin
    Agent := 'TWebUpdate';
    ApplyPatch := True;
    AutoRestart:=true;
    DateFormat := 'dd/mm/yyyy';
    DateSeparator := '/';
    ExtractCAB := false;
    Logging := True;
    ShowDownloadProgress := True;
    Signature := 'WebUpdate';
    TimeFormat := 'hh:nn';
    TimeSeparator := ':';
    UpdateUpdate := wuuSilent;
    //OnAppRestart   :=  Dm.AUpdateAppRestart;
  end;
end;

function Busca_Update_Sistema(Link_File_Update, NomeModulo: string;
  lShowMsg_NOT_NewVersion: Boolean = True): Boolean;
var
  Str, Ver, ADirSistema,A: String;
begin
  ADirSistema := ExtractFilePath(Application.ExeName);
  ForceDirectories(ADirSistema + 'LogUpdate');
  ForceDirectories(ADirSistema + 'Temp');

  if AUpdate = nil then
    Create_Request_Update;

  // if lShowMsg_NOT_NewVersion then
  // InformaStatus('','Buscando atualizações...',30);
  Application.ProcessMessages;

  AUpdate.URL := Link_File_Update + '/' + NomeModulo + '.INF';
  A:=AUpdate.URL;
  AUpdate.LogFileName := ADirSistema + 'LogUpdate\WebUpdate_' + FormatDateTime
    ('ddmmyyyy', Now) + '.log';
  AUpdate.TempDirectory := ADirSistema + 'Temp';
  AUpdate.UseWinTempDir := False;

  if AUpdate.NewVersionAvailable(True) then
  begin

    Str := IfThen(((AUpdate.NewVersionInfo <> EmptyStr) and
          (Length(AUpdate.NewVersionInfo) > 4)), 'versão', 'atualização');
    Ver := IfThen(Str = 'versão',
      '» Nova versão [' + AUpdate.NewVersionInfo + ']' + ^M, EmptyStr);

    // InformaStatus();
    if not lShowMsg_NOT_NewVersion then
      if Screen.ActiveForm <> nil then
        Screen.ActiveForm.Hide;

    if MsgConfirma('Uma nova ' + Str + ' do ' + NomeModulo +
        ' foi encontrada!', Ver + 'Deseja iniciar a atualização agora?',
      'Nova atualização encontrada') then
    begin

      if not FileExists(ADirSistema + 'Update.exe') then
      begin
        if FileExists(ADirSistema + 'GetDownload.exe') then
        begin
          Executar_e_Esperar(ADirSistema + 'GetDownload.exe',
            Link_File_Update + ' Update.exe ' + ADirSistema, True);
        end
        else if MsgErro('O gerenciador de download do Sistema não foi encontrado neste computador!') then
          exit;
      end;

      if FileExists(ADirSistema + 'Update.exe') then
      begin
        Result := True;
        AUpdate.DoUpdate;
      end
      else
      begin
        MsgErro('O Gestor de arquivos CAB não pode ser baixado!',
          'Clique OK para continuar', 'Gestor não encontrado');
      end;

    end;

  end
  else if lShowMsg_NOT_NewVersion then
  begin
   // InformaStatus();
    Application.ProcessMessages;

    MsgInfo('A versão atual do sistema é a mais recente!',
      'Nenhuma atualização disponível no momento.');
    Result := False;
  end;

end;

function Executar_e_Esperar(FileExec, Params: string; ShowWindows: Boolean)
  : Boolean;
var
  Sh: TShellExecuteInfo;
  CodigoSaida: DWORD;
begin
  FillChar(Sh, SizeOf(Sh), 0);
  Sh.cbSize := SizeOf(TShellExecuteInfo);
  with Sh do
  begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;
    lpVerb := nil;
    lpFile := PChar(FileExec);
    lpParameters := PChar(Params);
    if ShowWindows then
      nShow := SW_SHOWNORMAL
    else
      nShow := SW_HIDE;
  end;
  if ShellExecuteEx(@Sh) then
  begin
    repeat
      Application.ProcessMessages;
      GetExitCodeProcess(Sh.hProcess, CodigoSaida);
    until not(CodigoSaida = STILL_ACTIVE);
    Result := True;
  end
  else
    Result := False;
end;

function MsgInfo(sMens1, sMens2, sTitulo: String): Boolean;
var
  sAux: String;
begin
  if Trim(sMens2) <> '' then
    sAux := sMens1 + ^M + sMens2
  else
    sAux := sMens1;
  if Application.MessageBox(PChar(sAux), PChar(sTitulo),
    mb_ok + mb_iconinformation) = idok then
    Result := True
  else
    Result := False;
end;

function MsgAlerta(sMens1, sMens2, sTitulo: String): Boolean;
var
  sAux: String;
begin
  if Trim(sMens2) <> '' then
    sAux := sMens1 + ^M + sMens2
  else
    sAux := sMens1;
  Result := Application.MessageBox(PChar(sAux), PChar(sTitulo),
    mb_ok + MB_ICONWARNING) = idok;
end;

function MsgErro(sMens1, sMens2, sTitulo: String): Boolean;
var
  sAux: String;
begin
  if Trim(sMens2) <> '' then
    sAux := sMens1 + ^M + sMens2
  else
    sAux := sMens1;
  if Application.MessageBox(PChar(sAux), PChar(sTitulo), mb_ok + MB_ICONERROR)
    = idok then
    Result := True
  else
    Result := False;
end;

function MsgConfirma(iMens1, iMens2, iTitulo: String): Boolean;
var
  sAux: String;
begin
  if Trim(iMens2) <> '' then
    sAux := iMens1 + ^M + iMens2
  else
    sAux := iMens1;
  if Application.MessageBox(PChar(sAux), PChar(iTitulo),
    mb_yesno + MB_ICONQUESTION) = idyes then
    Result := True
  else
    Result := False;
end;



initialization

Create_Request_Update;

finalization

FreeAndNil(AUpdate);

end.
