unit UConsPadraoNovaGrande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, ExtCtrls, StdCtrls, DB, ADODB, Menus, Grids,
  DBGrids;

type
  TFrmNovaConsultaPadraoGrande = class(TForm)
    edtnome: TEdit;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    CalculadoraF81: TMenuItem;
    N3: TMenuItem;
    qry: TADOQuery;
    dsqry: TDataSource;
    shp1: TShape;
    lbltipo: TLabel;
    img10: TImage;
    lbl1: TLabel;
    btnsair: TPngSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CalculadoraF81Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNovaConsultaPadraoGrande: TFrmNovaConsultaPadraoGrande;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmNovaConsultaPadraoGrande.btnsairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNovaConsultaPadraoGrande.CalculadoraF81Click(Sender: TObject);
begin
  //Calculadora();
end;

procedure TFrmNovaConsultaPadraoGrande.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmNovaConsultaPadraoGrande.DBGrid1TitleClick(Column: TColumn);
begin
  //OrdenarDbGrid(qry,column.FieldName);
end;

procedure TFrmNovaConsultaPadraoGrande.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
    close;
end;

procedure TFrmNovaConsultaPadraoGrande.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then selectnext(activecontrol,true,true);
end;

procedure TFrmNovaConsultaPadraoGrande.FormShow(Sender: TObject);
begin
  qry.Close;
  edtnome.setfocus;
end;

end.
