inherited FrmRelProjEstatus: TFrmRelProjEstatus
  Left = 360
  Top = 13
  Caption = 'Relat'#243'rio Urbano'
  ClientHeight = 619
  ClientWidth = 565
  OnShow = FormShow
  ExplicitWidth = 571
  ExplicitHeight = 648
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 26
    Top = 545
    ExplicitLeft = 26
    ExplicitTop = 545
  end
  inherited shp1: TShape
    Width = 565
    ExplicitWidth = 567
  end
  inherited lbl1: TLabel
    Width = 128
    Caption = 'Relat'#243'rio Urbano'
    ExplicitWidth = 128
  end
  inherited pnl1: TPanel
    Top = 565
    Width = 565
    TabOrder = 10
    ExplicitTop = 565
    ExplicitWidth = 565
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
    object btnExportar: TBitBtn
      Left = 435
      Top = 15
      Width = 109
      Height = 26
      Cursor = crHandPoint
      Caption = '&Exportar Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btnExportarClick
    end
  end
  object grp1: TGroupBox [5]
    Left = 14
    Top = 167
    Width = 347
    Height = 41
    TabOrder = 2
    object lbl3: TLabel
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
    object lbl2: TLabel
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
  object grp2: TGroupBox [6]
    Left = 8
    Top = 361
    Width = 531
    Height = 93
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object chkcadastrada: TCheckBox
      Left = 15
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Cadastrada'
      TabOrder = 2
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
      Left = 155
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Projetar'
      TabOrder = 3
    end
    object chkTopografia: TCheckBox
      Left = 155
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Topografia'
      TabOrder = 5
    end
    object chkDevolvida: TCheckBox
      Left = 155
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Devolvida'
      TabOrder = 8
    end
    object chkEnviadoCeltins: TCheckBox
      Left = 297
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Enviado Energisa'
      TabOrder = 0
    end
    object chkConcluido: TCheckBox
      Left = 298
      Top = 62
      Width = 143
      Height = 17
      Caption = 'Conclu'#237'do Improcedente'
      TabOrder = 9
    end
    object chkTodos: TCheckBox
      Left = 429
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Todos'
      TabOrder = 1
      OnClick = chkTodosClick
    end
    object chkPendente: TCheckBox
      Left = 297
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Pendente'
      TabOrder = 6
    end
  end
  object rgGroup: TRadioGroup [7]
    Left = 8
    Top = 263
    Width = 538
    Height = 44
    Caption = 'Perfil Funcionario'
    Columns = 4
    ItemIndex = 3
    Items.Strings = (
      'Levantador'
      'Atualizador'
      'Projetista'
      'Nenhum')
    TabOrder = 4
  end
  object grpFuncionario: TGroupBox [8]
    Left = 12
    Top = 311
    Width = 534
    Height = 48
    Caption = 'Funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
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
      TabOrder = 1
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
      TabOrder = 0
      OnKeyPress = edtcodtecnicoKeyPress
    end
  end
  object rgTpPeriodo: TRadioGroup [9]
    Left = 17
    Top = 73
    Width = 529
    Height = 87
    Hint = 'Per'#237'odos Para Pesquisa'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object grpClassificacao: TGroupBox [10]
    Left = 14
    Top = 208
    Width = 532
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
      Width = 467
      Height = 24
      TabOrder = 0
    end
  end
  object grpOrdenacao: TGroupBox [11]
    Left = 8
    Top = 505
    Width = 240
    Height = 38
    Caption = 'Ordena'#231#227'o'
    TabOrder = 8
    object chkPeriodo: TCheckBox
      Left = 14
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Per'#237'odo'
      TabOrder = 0
    end
    object chkStatus: TCheckBox
      Left = 100
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Status'
      TabOrder = 1
    end
  end
  object grpmunicipio: TGroupBox [12]
    Left = 8
    Top = 461
    Width = 531
    Height = 41
    Caption = 'Municipio'
    TabOrder = 7
    object lbl8: TLabel
      Left = 8
      Top = 17
      Width = 49
      Height = 14
      Caption = 'Munic'#237'pio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtcodmunicipio: TEdit
      Left = 64
      Top = 14
      Width = 71
      Height = 20
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtcodmunicipioKeyPress
    end
    object edtdescmunicipio: TEdit
      Left = 148
      Top = 14
      Width = 364
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
  object grpProtocolo: TGroupBox [13]
    Left = 327
    Top = 510
    Width = 212
    Height = 33
    Caption = 'Exibir Somente Dias Levantamento'
    TabOrder = 9
    object chkProtocolo: TCheckBox
      Left = 58
      Top = 15
      Width = 97
      Height = 17
      TabOrder = 0
    end
  end
  object rgContrato: TRadioGroup [14]
    Left = 380
    Top = 164
    Width = 166
    Height = 44
    Caption = 'Contrato'
    Columns = 2
    ItemIndex = 2
    Items.Strings = (
      'Normal'
      'Extra'
      'Todos')
    TabOrder = 1
  end
  inherited rdprnt1: TRDprint
    Left = 364
    Top = 24
  end
  inherited pm1: TPopupMenu
    Left = 424
    Top = 23
    object E1: TMenuItem
      Caption = 'Exportar Excel'
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel|xls'
    Title = 'Salvar Exporta'#231#227'o'
    Left = 456
    Top = 428
  end
  object ThreadProcessando: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = ThreadProcessandoExecute
    Left = 497
    Top = 431
  end
end
