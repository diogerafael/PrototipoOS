object FrmViewUrbano: TFrmViewUrbano
  Left = 523
  Top = 49
  ClientHeight = 416
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel
    Left = 6
    Top = 14
    Width = 16
    Height = 14
    Caption = 'OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 246
    Top = 12
    Width = 56
    Height = 14
    Caption = 'Solicitante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtnumos: TEdit
    Left = 69
    Top = 12
    Width = 170
    Height = 20
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object grp6: TGroupBox
    Left = 6
    Top = 38
    Width = 233
    Height = 98
    Caption = 'Notas Inseridas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object edtidnota: TEdit
      Left = 16
      Top = 42
      Width = 37
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object dbgrd1: TDBGrid
      Left = 65
      Top = 20
      Width = 168
      Height = 78
      TabStop = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Nota'
          Width = 127
          Visible = True
        end>
    end
  end
  object edtsolicitante: TEdit
    Left = 313
    Top = 9
    Width = 282
    Height = 20
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
end
