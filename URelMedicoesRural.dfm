inherited FrmRelMedicoesRural: TFrmRelMedicoesRural
  Left = 370
  Top = 96
  Caption = ''
  ClientWidth = 561
  OnShow = FormShow
  ExplicitWidth = 567
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited shp1: TShape
    Width = 561
    ExplicitWidth = 561
  end
  inherited lbl1: TLabel
    Left = 186
    Width = 189
    Caption = 'Relat'#243'rio Medi'#231#245'es Rural'
    ExplicitLeft = 186
    ExplicitWidth = 189
  end
  inherited pnl1: TPanel
    Width = 561
    ExplicitWidth = 561
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  object grp1: TGroupBox [5]
    Left = 14
    Top = 71
    Width = 532
    Height = 292
    Caption = 'Per'#237'odo Chegada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
        'Libera'#231#227'o Topografia'
        'Retorno Topografia'
        'Libera'#231#227'o Projetar'
        'Retorno Projetar'
        'Devolvida'
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
    object GroupBox1: TGroupBox
      Left = 17
      Top = 182
      Width = 504
      Height = 74
      TabOrder = 2
      object chkcadastrada: TCheckBox
        Left = 21
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Cadastrada'
        TabOrder = 0
      end
      object chkLevantamento: TCheckBox
        Left = 21
        Top = 27
        Width = 97
        Height = 17
        Caption = 'Levantamento'
        TabOrder = 1
      end
      object chkImprocedente: TCheckBox
        Left = 21
        Top = 50
        Width = 97
        Height = 17
        Caption = 'Improcedente'
        TabOrder = 2
      end
      object chksoltopografia: TCheckBox
        Left = 217
        Top = 50
        Width = 97
        Height = 17
        Caption = 'Sol. Topografia'
        TabOrder = 3
      end
      object chkTopografia: TCheckBox
        Left = 217
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Topografia'
        TabOrder = 4
      end
      object chkprojeto: TCheckBox
        Left = 217
        Top = 26
        Width = 136
        Height = 17
        Caption = 'Elabora'#231#227'o Projeto'
        TabOrder = 5
      end
      object chkConcluido: TCheckBox
        Left = 383
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Conclu'#237'do'
        TabOrder = 6
      end
      object chkTodos: TCheckBox
        Left = 383
        Top = 49
        Width = 97
        Height = 17
        Caption = 'Todos'
        TabOrder = 7
      end
      object chkDevolvida: TCheckBox
        Left = 383
        Top = 26
        Width = 97
        Height = 17
        Caption = 'Devolvida'
        TabOrder = 8
      end
    end
    object rgTipo: TRadioGroup
      Left = 17
      Top = 141
      Width = 496
      Height = 33
      Caption = 'Tipo'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 2
      Items.Strings = (
        'Ativo'
        'Passivo'
        'Ambos')
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited rdprnt1: TRDprint
    Left = 396
    Top = 64
  end
  inherited pm1: TPopupMenu
    Left = 496
    Top = 79
  end
  object SaveDialog1: TSaveDialog
    Left = 494
    Top = 343
  end
end
