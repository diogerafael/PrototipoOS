inherited frmRelVinculacao: TfrmRelVinculacao
  Caption = 'Relat'#243'rio Vincula'#231#227'o'
  ClientHeight = 298
  OnShow = FormShow
  ExplicitWidth = 570
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 17
    Top = 225
    ExplicitLeft = 17
    ExplicitTop = 225
  end
  inherited lbl1: TLabel
    Left = 205
    Width = 155
    Caption = 'Relat'#243'rio Vincula'#231#227'o'
    ExplicitLeft = 205
    ExplicitWidth = 155
  end
  inherited pnl1: TPanel
    Top = 244
    ExplicitTop = 244
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  object grp2: TGroupBox [5]
    Left = 34
    Top = 158
    Width = 496
    Height = 40
    TabOrder = 2
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
  object rgTpPeriodo: TRadioGroup [6]
    Left = 34
    Top = 72
    Width = 496
    Height = 77
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
      'Conclus'#227'o')
    ParentFont = False
    TabOrder = 1
  end
  inherited rdprnt1: TRDprint
    Left = 448
    Top = 16
  end
  inherited pm1: TPopupMenu
    Left = 492
    Top = 17
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.ConMySql
    Left = 404
    Top = 16
  end
  object JvThread1: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = JvThread1Execute
    Left = 528
    Top = 16
  end
end
