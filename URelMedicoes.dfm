inherited FrmRelMedicoes: TFrmRelMedicoes
  Left = 384
  Top = 113
  Caption = 'Relat'#243'rio Medi'#231#245'es'
  ClientHeight = 493
  ClientWidth = 550
  OnShow = FormShow
  ExplicitWidth = 556
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 10
    Top = 417
    ExplicitLeft = 10
    ExplicitTop = 417
  end
  inherited shp1: TShape
    Width = 550
    ExplicitWidth = 558
  end
  inherited lbl1: TLabel
    Left = 207
    Width = 144
    Caption = 'Relat'#243'rio Medi'#231#245'es'
    ExplicitLeft = 207
    ExplicitWidth = 144
  end
  inherited pnl1: TPanel
    Top = 439
    Width = 550
    ExplicitTop = 439
    ExplicitWidth = 550
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  object grp1: TGroupBox [5]
    Left = 8
    Top = 71
    Width = 531
    Height = 345
    Caption = 'Per'#237'odo Chegada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object rgSaida: TRadioGroup
      Left = 20
      Top = 293
      Width = 491
      Height = 50
      Caption = 'Formato Relat'#243'rio'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'PDF'
        'EXCEL')
      ParentFont = False
      TabOrder = 4
    end
    object grpclasificacao: TGroupBox
      Left = 20
      Top = 138
      Width = 491
      Height = 54
      Caption = 'Informe a Classifica'#231#227'o'
      TabOrder = 2
      object lbl20: TLabel
        Left = 19
        Top = 23
        Width = 64
        Height = 14
        Caption = 'Classifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbbclassificacao: TComboBox
        Left = 103
        Top = 18
        Width = 388
        Height = 24
        TabOrder = 0
      end
    end
    object rgTpPeriodo: TRadioGroup
      Left = 17
      Top = 17
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
      TabOrder = 0
    end
    object grp2: TGroupBox
      Left = 17
      Top = 100
      Width = 496
      Height = 40
      TabOrder = 1
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
    object grp3: TGroupBox
      Left = 0
      Top = 194
      Width = 531
      Height = 93
      TabOrder = 3
      object chkcadastrada: TCheckBox
        Left = 15
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Cadastrada'
        TabOrder = 1
      end
      object chkLevantamento: TCheckBox
        Left = 15
        Top = 39
        Width = 97
        Height = 17
        Caption = 'Levantamento'
        TabOrder = 4
      end
      object chkAtualizar: TCheckBox
        Left = 15
        Top = 62
        Width = 97
        Height = 17
        Caption = 'Atualizar'
        TabOrder = 7
      end
      object chkProjetar: TCheckBox
        Left = 153
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Projetar'
        TabOrder = 2
      end
      object chkTopografia: TCheckBox
        Left = 153
        Top = 39
        Width = 97
        Height = 17
        Caption = 'Topografia'
        TabOrder = 5
      end
      object chkDevolvida: TCheckBox
        Left = 153
        Top = 62
        Width = 97
        Height = 17
        Caption = 'Devolvida'
        TabOrder = 8
      end
      object chkEnviadoCeltins: TCheckBox
        Left = 281
        Top = 15
        Width = 112
        Height = 17
        Caption = 'Enviado Energisa'
        TabOrder = 0
      end
      object chkConcluido: TCheckBox
        Left = 281
        Top = 62
        Width = 97
        Height = 17
        Caption = 'Conclu'#237'do'
        TabOrder = 9
      end
      object chkTodos: TCheckBox
        Left = 414
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Todos'
        TabOrder = 3
        OnClick = chkTodosClick
      end
      object chkPendente: TCheckBox
        Left = 281
        Top = 39
        Width = 97
        Height = 17
        Caption = 'Pendente'
        TabOrder = 6
      end
    end
  end
  inherited rdprnt1: TRDprint
    Left = 380
    Top = 16
  end
  inherited pm1: TPopupMenu
    Left = 440
    Top = 15
  end
  object SaveDialog1: TSaveDialog
    Left = 456
    Top = 335
  end
  object JvThread1: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = JvThread1Execute
    Left = 488
    Top = 16
  end
end
