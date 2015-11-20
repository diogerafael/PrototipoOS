inherited FrmRelIndicadoresGerais: TFrmRelIndicadoresGerais
  Caption = ''
  ClientHeight = 233
  OnShow = FormShow
  ExplicitWidth = 570
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 16
    Top = 157
    ExplicitLeft = 16
    ExplicitTop = 157
  end
  inherited lbl1: TLabel
    Left = 179
    Width = 216
    Caption = 'Relat'#243'rio Indicadores Gerais'
    ExplicitLeft = 179
    ExplicitWidth = 216
  end
  inherited pnl1: TPanel
    Top = 179
    TabOrder = 1
    ExplicitTop = 179
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  object grp2: TGroupBox [5]
    Left = 17
    Top = 90
    Width = 496
    Height = 40
    TabOrder = 0
    object lbl3: TLabel
      Left = 60
      Top = 12
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
      Left = 287
      Top = 12
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
  inherited rdprnt1: TRDprint
    OpcoesPreview.Preview = True
    Left = 468
    Top = 24
  end
  inherited pm1: TPopupMenu
    Left = 512
    Top = 23
    object GrficoPostesProjetados1: TMenuItem
      Caption = 'Gr'#225'fico Postes Projetados'
      OnClick = GrficoPostesProjetados1Click
    end
  end
end
