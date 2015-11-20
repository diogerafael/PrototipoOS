unit uFrmViewUrbano;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFrmViewUrbano = class(TForm)
    lbl3: TLabel;
    edtnumos: TEdit;
    grp6: TGroupBox;
    edtidnota: TEdit;
    dbgrd1: TDBGrid;
    lbl6: TLabel;
    edtsolicitante: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmViewUrbano: TFrmViewUrbano;

implementation

{$R *.dfm}

end.
