unit uProcessandoNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvAnimatedImage, JvGIFCtrl, StdCtrls, ExtCtrls,
  pngimage;

type
  TfrmProcessandoNovo = class(TForm)
    Panel1: TPanel;
    JvGIFAnimator2: TJvGIFAnimator;
    Image1: TImage;
  private
    { Private declarations }
    texto : String;
  public
    { Public declarations }
  end;

var
  frmProcessandoNovo: TfrmProcessandoNovo;

implementation



{$R *.dfm}

end.
