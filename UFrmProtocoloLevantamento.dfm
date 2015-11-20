inherited FrmRelPadrao1: TFrmRelPadrao1
  Left = 109
  Top = 30
  Caption = 'FrmRelPadrao1'
  ClientHeight = 532
  ClientWidth = 578
  ExplicitLeft = 109
  ExplicitTop = 30
  ExplicitWidth = 594
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 8
    Top = 456
    ExplicitLeft = 8
    ExplicitTop = 456
  end
  inherited shp1: TShape
    Width = 578
  end
  inherited lbl1: TLabel
    Width = 182
    Caption = 'Protocolo Levantamento'
    ExplicitWidth = 182
  end
  inherited pnl1: TPanel
    Top = 478
    Width = 578
  end
  object grp1: TGroupBox [5]
    Left = 8
    Top = 212
    Width = 532
    Height = 41
    TabOrder = 1
    object lbl3: TLabel
      Left = 80
      Top = 13
      Width = 58
      Height = 14
      Caption = 'Data Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 255
      Top = 13
      Width = 52
      Height = 14
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtini: TcxDateEdit
      Left = 144
      Top = 10
      EditValue = 41640d
      ParentFont = False
      Properties.DateOnError = deNull
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWindow
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.ButtonStyle = btsDefault
      Style.ButtonTransparency = ebtHideUnselected
      Style.IsFontAssigned = True
      StyleFocused.Color = clMoneyGreen
      TabOrder = 0
      Width = 90
    end
    object edtfim: TcxDateEdit
      Left = 313
      Top = 10
      EditValue = 41640d
      ParentFont = False
      Properties.DateOnError = deNull
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWindow
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.ButtonStyle = btsDefault
      Style.ButtonTransparency = ebtHideUnselected
      Style.IsFontAssigned = True
      StyleFocused.Color = clMoneyGreen
      TabOrder = 1
      Width = 90
    end
  end
  object rgTpPeriodo: TRadioGroup [6]
    Left = 8
    Top = 127
    Width = 529
    Height = 87
    Caption = 'Per'#237'odo'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Recebimento Energisa'
      'Libera'#231#227'o Levantamento'
      'Retorno Levantamento'
      'Libera'#231#227'o Atualiza'#231#227'o'
      'Retorno Atualiza'#231#227'o'
      'Libera'#231#227'o Projetar'
      'Retorno Projetar'
      'Conclus'#227'o'
      'Devolvida')
    ParentFont = False
    TabOrder = 2
  end
  object grpClassificacao: TGroupBox [7]
    Left = 8
    Top = 259
    Width = 342
    Height = 56
    Caption = 'Classifica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object cbbclassificacao: TComboBox
      Left = 32
      Top = 16
      Width = 293
      Height = 24
      TabOrder = 0
    end
  end
  object grpFuncionario: TGroupBox [8]
    Left = 8
    Top = 71
    Width = 534
    Height = 48
    Caption = 'Funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object edtdesctecnico: TEdit
      Left = 122
      Top = 14
      Width = 393
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
    object edtcodtecnico: TEdit
      Left = 18
      Top = 14
      Width = 100
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object grpOrdenacao: TGroupBox [9]
    Left = 8
    Top = 321
    Width = 278
    Height = 38
    Caption = 'Ordena'#231#227'o'
    TabOrder = 5
  end
  inherited rdprnt1: TRDprint
    Left = 452
    Top = 16
  end
  inherited pm1: TPopupMenu
    Left = 496
    Top = 15
  end
end
