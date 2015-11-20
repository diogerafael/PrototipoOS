object FrmObservacao: TFrmObservacao
  Left = 434
  Top = 234
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Observa'#231#227'o'
  ClientHeight = 287
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 24
    Width = 548
    Height = 234
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btn1: TButton
    Left = 468
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 1
    OnClick = btn1Click
  end
end
