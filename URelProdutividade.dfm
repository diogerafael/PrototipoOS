inherited FrmRelProdutividade: TFrmRelProdutividade
  Caption = ''
  ClientHeight = 314
  OnShow = FormShow
  ExplicitWidth = 570
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 16
    Top = 236
    ExplicitLeft = 16
    ExplicitTop = 236
  end
  inherited lbl1: TLabel
    Left = 193
    Width = 179
    Caption = 'Relat'#243'rio Produtividade'
    ExplicitLeft = 193
    ExplicitWidth = 179
  end
  inherited pnl1: TPanel
    Top = 260
    ExplicitTop = 260
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  object grp2: TGroupBox [5]
    Left = 13
    Top = 76
    Width = 538
    Height = 40
    TabOrder = 1
    object lbl3: TLabel
      Left = 60
      Top = 12
      Width = 58
      Height = 14
      Caption = 'Data Inicial'
      FocusControl = edtini
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 287
      Top = 12
      Width = 52
      Height = 14
      Caption = 'Data Final'
      FocusControl = edtfim
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtini: TcxDateEdit
      Left = 124
      Top = 9
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
      Left = 345
      Top = 9
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
  object rgGroup: TRadioGroup [6]
    Left = 13
    Top = 127
    Width = 538
    Height = 44
    Caption = 'Perfil Funcionario'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Levantador'
      'Atualizador'
      'Projetista')
    TabOrder = 2
  end
  object grpFuncionario: TGroupBox [7]
    Left = 13
    Top = 182
    Width = 534
    Height = 48
    Caption = 'Funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object edtdesctecnico: TEdit
      Left = 122
      Top = 14
      Width = 393
      Height = 22
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
    object edtcodtecnico: TEdit
      Left = 18
      Top = 14
      Width = 100
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtcodtecnicoKeyPress
    end
  end
  inherited rdprnt1: TRDprint
    Left = 404
    Top = 16
  end
  inherited pm1: TPopupMenu
    Left = 464
    Top = 15
    object GrficoProdutividade1: TMenuItem
      Caption = 'Gr'#225'fico Produtividade'
      OnClick = GrficoProdutividade1Click
    end
  end
end
