inherited FrmRelServicoInterno: TFrmRelServicoInterno
  BorderIcons = [biSystemMenu]
  Caption = ''
  Visible = True
  ExplicitWidth = 570
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 1
  end
  object pnl2: TPanel [5]
    Left = 8
    Top = 80
    Width = 548
    Height = 284
    TabOrder = 0
    object lbl2: TLabel
      Left = 139
      Top = 109
      Width = 60
      Height = 13
      Caption = 'Solicitante .:'
    end
    object lbl3: TLabel
      Left = 139
      Top = 142
      Width = 56
      Height = 13
      Caption = 'Solicitado .:'
    end
    object lbl6: TLabel
      Left = 139
      Top = 177
      Width = 38
      Height = 13
      Caption = 'Status :'
    end
    object edtcodsolicitado: TEdit
      Left = 213
      Top = 139
      Width = 31
      Height = 21
      Hint = 'C'#243'digo Funcion'#225'rio'
      NumbersOnly = True
      TabOrder = 4
    end
    object edtdescsol: TEdit
      Left = 249
      Top = 139
      Width = 154
      Height = 20
      Hint = 'N'#250'mero da Nota'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edtCodSolicitante: TEdit
      Left = 213
      Top = 106
      Width = 31
      Height = 21
      Hint = 'C'#243'digo Funcion'#225'rio'
      NumbersOnly = True
      TabOrder = 2
      OnKeyPress = edtCodSolicitanteKeyPress
    end
    object edtdescsolicitante: TEdit
      Left = 249
      Top = 106
      Width = 154
      Height = 20
      Hint = 'N'#250'mero da Nota'
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object grp1: TGroupBox
      Left = 100
      Top = 15
      Width = 347
      Height = 41
      TabOrder = 0
      object lbl4: TLabel
        Left = 11
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
      object lbl5: TLabel
        Left = 186
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
        Left = 75
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
        Left = 244
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
    object cbbstatus: TComboBox
      Left = 213
      Top = 174
      Width = 189
      Height = 21
      ItemIndex = 2
      TabOrder = 6
      Text = 'Em aberto'
      Items.Strings = (
        'Dentro do Prazo'
        'Fora do Prazo'
        'Em aberto')
    end
    object rg1: TRadioGroup
      Left = 106
      Top = 53
      Width = 336
      Height = 44
      Caption = 'Per'#237'odo'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Abertura'
        'Limite'
        'Conclus'#227'o')
      TabOrder = 1
    end
  end
  inherited rdprnt1: TRDprint
    Left = 476
    Top = 24
  end
  inherited pm1: TPopupMenu
    Left = 512
    Top = 23
  end
end
