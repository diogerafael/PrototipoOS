inherited FrmCadSolicitante: TFrmCadSolicitante
  Left = 209
  Top = 107
  Caption = ''
  ClientHeight = 412
  ClientWidth = 941
  OnCreate = FormCreate
  ExplicitWidth = 957
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 941
    ExplicitWidth = 941
    inherited sbsair: TPngSpeedButton
      Left = 861
      ExplicitLeft = 861
    end
    inherited sbexcluir: TPngSpeedButton
      OnClick = sbexcluirClick
    end
    inherited SpeedButton1: TPngSpeedButton
      OnClick = SpeedButton1Click
    end
    inherited sbgravar: TPngSpeedButton
      OnClick = sbgravarClick
    end
    inherited sbnovo: TPngSpeedButton
      OnClick = sbnovoClick
    end
  end
  object grp4: TGroupBox [1]
    Left = 22
    Top = 80
    Width = 897
    Height = 320
    Caption = 'Projeto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbl24: TLabel
      Left = 10
      Top = 24
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
    object lbl26: TLabel
      Left = 252
      Top = 51
      Width = 49
      Height = 14
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 10
      Top = 51
      Width = 17
      Height = 13
      Caption = 'Cpf'
    end
    object dbgrd2: TDBGrid
      Left = 0
      Top = 71
      Width = 830
      Height = 225
      TabStop = False
      DataSource = dsSolicitante
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgrd2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Nome'
          Width = 399
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Caption = 'Cpf'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Title.Caption = 'Telefone'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end>
    end
    object edtdesc: TEdit
      Left = 67
      Top = 22
      Width = 300
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
      TabOrder = 0
    end
    object edtCpf: TEdit
      Left = 67
      Top = 48
      Width = 165
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
      OnExit = edtCpfExit
      OnKeyPress = edtCpfKeyPress
    end
    object edtTelefone: TEdit
      Left = 324
      Top = 48
      Width = 165
      Height = 20
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
  inherited PopupMenu1: TPopupMenu
    Left = 552
    Top = 211
  end
  object qrySolicitante: TFDQuery
    Connection = DataModule1.ConMySql
    Left = 421
    Top = 120
  end
  object dsSolicitante: TDataSource
    DataSet = qrySolicitante
    Left = 493
    Top = 120
  end
  object pmSolicitante: TPopupMenu
    Left = 565
    Top = 120
  end
end
