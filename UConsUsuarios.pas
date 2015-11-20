unit UConsUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ADODB, Grids, DBGrids, ExtCtrls,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf;

type
  TfrmconsUsuarios = class(TForm)
    DBGrid1: TDBGrid;
    DsconsUsuarios: TDataSource;
    Shape1: TShape;
    Label1: TLabel;
    qryconsusuario: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  procedure BuscaUsr;
  public
    { Public declarations }
  end;

var
  frmconsUsuarios: TfrmconsUsuarios;

implementation

uses DataModule, CAdacesso;

{$R *.dfm}

procedure TfrmconsUsuarios.FormShow(Sender: TObject);
begin
  sqlStr := ''+
  'select login as codigo, nome from uccaduser where status = 1 and tipo = ''U'' order by nome';
  ConsultaSqlFd(qryconsusuario,sqlStr);
end;

procedure TfrmconsUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then close;
end;

procedure TfrmconsUsuarios.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then BuscaUsr();
end;

procedure TfrmconsUsuarios.DBGrid1DblClick(Sender: TObject);
begin
  BuscaUsr();
end;

procedure TfrmconsUsuarios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with DBGrid1 do
  begin
    with Canvas do
    begin
      if not (gdSelected in State) then
      Begin // Se o estado da célula não é selecionado
        with DataSource.DataSet do
        begin
          if not(Odd(RecNo)) then
          begin
            Brush.Color := _corZebra; // Cor da célula
          end;
        end;
      end
      else
      begin
        with DataSource.DataSet do
        begin
          Font.Color := clYellow;
        end;
      end;
      FillRect (Rect); // Pinta a célula
      DefaultDrawDataCell (Rect, Column.Field, State) // Reescreve o valor que vem do banco
    end;
  end;
end;

procedure TfrmconsUsuarios.BuscaUsr;
begin
  if not qryconsusuario.IsEmpty then
  begin
    FrmAcesso.edtcodusuario.text    :=  qryconsusuario.fieldbyname('codigo').asstring;
    FrmAcesso.lblnome.Caption       :=  qryconsusuario.fieldbyname('nome').asstring;
    //FrmAcesso.edtnomeusuario.Text   :=  qryconsusuario.fieldbyname('nome').asstring;
    FrmAcesso.edtsenhausuario.SetFocus;
    close;
  end;
end;

end.
