object frmCadastrarConfig: TfrmCadastrarConfig
  Left = 401
  Top = 59
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 573
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 0
    Top = 0
    Width = 527
    Height = 65
    Align = alTop
    ExplicitLeft = -8
    ExplicitTop = 8
    ExplicitWidth = 574
  end
  object lbl1: TLabel
    Left = 209
    Top = 26
    Width = 107
    Height = 18
    Alignment = taCenter
    Caption = 'Configura'#231#245'es'
    Color = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbl4: TLabel
    Left = 9
    Top = 99
    Width = 80
    Height = 14
    Caption = 'Servi'#231'o Campo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl17: TLabel
    Left = 114
    Top = 356
    Width = 39
    Height = 14
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 10
    Top = 169
    Width = 28
    Height = 14
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 187
    Top = 169
    Width = 28
    Height = 14
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pgcontrol: TPageControl
    Left = 0
    Top = 68
    Width = 527
    Height = 460
    ActivePage = tsConfig
    TabOrder = 0
    object tsprojeto: TTabSheet
      Caption = 'Projeto'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl24: TLabel
        Left = 220
        Top = 275
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object grp2: TGroupBox
        Left = 8
        Top = 135
        Width = 508
        Height = 138
        Caption = 'Valores'
        TabOrder = 0
        object lblTravessia: TLabel
          Left = 187
          Top = 64
          Width = 49
          Height = 14
          Caption = 'Travessia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl39: TLabel
          Left = 187
          Top = 22
          Width = 71
          Height = 14
          Caption = 'Incorpora'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl40: TLabel
          Left = 187
          Top = 88
          Width = 78
          Height = 14
          Caption = 'Improcedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl41: TLabel
          Left = 187
          Top = 106
          Width = 77
          Height = 14
          Caption = 'Deslocamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl18: TLabel
          Left = 187
          Top = 43
          Width = 37
          Height = 14
          Caption = 'Outros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl21: TLabel
          Left = 4
          Top = 22
          Width = 87
          Height = 14
          Caption = 'Poste Proj. Urb.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl33: TLabel
          Left = 4
          Top = 43
          Width = 90
          Height = 14
          Caption = 'Poste Proj. Rural'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl34: TLabel
          Left = 4
          Top = 64
          Width = 92
          Height = 14
          Caption = 'Poste Levantado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl35: TLabel
          Left = 4
          Top = 85
          Width = 90
          Height = 14
          Caption = 'Poste Atualizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl38: TLabel
          Left = 4
          Top = 106
          Width = 58
          Height = 14
          Caption = 'Topografia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 354
          Top = 22
          Width = 41
          Height = 14
          Caption = 'Lev Rur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtvlpostproj: TcxCurrencyEdit
          Left = 97
          Top = 21
          Properties.AssignedValues.EditFormat = True
          TabOrder = 0
          Width = 86
        end
        object edtvlpostrural: TcxCurrencyEdit
          Left = 97
          Top = 43
          Properties.AssignedValues.EditFormat = True
          TabOrder = 1
          Width = 86
        end
        object edtvlpostlev: TcxCurrencyEdit
          Left = 97
          Top = 65
          Properties.AssignedValues.EditFormat = True
          TabOrder = 2
          Width = 86
        end
        object edtvlpostatu: TcxCurrencyEdit
          Left = 97
          Top = 87
          Properties.AssignedValues.EditFormat = True
          TabOrder = 3
          Width = 86
        end
        object edtvltopografia: TcxCurrencyEdit
          Left = 97
          Top = 109
          Properties.AssignedValues.EditFormat = True
          TabOrder = 4
          Width = 86
        end
        object edtvlincorporacao: TcxCurrencyEdit
          Left = 266
          Top = 21
          Properties.AssignedValues.EditFormat = True
          TabOrder = 5
          Width = 86
        end
        object edtvloutros: TcxCurrencyEdit
          Left = 266
          Top = 43
          Properties.AssignedValues.EditFormat = True
          TabOrder = 6
          Width = 86
        end
        object edtvltravessia: TcxCurrencyEdit
          Left = 266
          Top = 65
          Properties.AssignedValues.EditFormat = True
          TabOrder = 7
          Width = 86
        end
        object edtvlimpro: TcxCurrencyEdit
          Left = 266
          Top = 87
          Properties.AssignedValues.EditFormat = True
          TabOrder = 8
          Width = 86
        end
        object edtvldeslocamento: TcxCurrencyEdit
          Left = 266
          Top = 109
          Properties.AssignedValues.EditFormat = True
          TabOrder = 9
          Width = 86
        end
        object edtlevRural: TcxCurrencyEdit
          Left = 407
          Top = 21
          Properties.AssignedValues.EditFormat = True
          TabOrder = 10
          Width = 86
        end
      end
      object grp4: TGroupBox
        Left = 179
        Top = 2
        Width = 167
        Height = 124
        Caption = 'Sem Levantamento'
        TabOrder = 1
        object lbl7: TLabel
          Left = 14
          Top = 19
          Width = 80
          Height = 14
          Caption = 'Servi'#231'o Campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 14
          Top = 45
          Width = 60
          Height = 14
          Caption = 'Atualiza'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 14
          Top = 70
          Width = 40
          Height = 14
          Caption = 'Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 14
          Top = 95
          Width = 28
          Height = 14
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtdiassemlvatu: TEdit
          Left = 96
          Top = 42
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          OnExit = edtdiassemlvatuExit
        end
        object edtdiassemlvcampo: TEdit
          Left = 96
          Top = 15
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          OnExit = edtdiassemlvcampoExit
        end
        object edttotaldiassemlev: TEdit
          Left = 96
          Top = 92
          Width = 54
          Height = 21
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 3
        end
        object edtdiassemlvpro: TEdit
          Left = 96
          Top = 67
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 2
          OnExit = edtdiassemlvproExit
        end
      end
      object grp1: TGroupBox
        Left = 9
        Top = 311
        Width = 507
        Height = 115
        Caption = 'Acessos'
        TabOrder = 2
        object rgcampo: TRadioGroup
          Left = 15
          Top = 13
          Width = 118
          Height = 45
          Hint = 'Liberar Edi'#231#227'o Servi'#231'o de Campo'
          Caption = 'Servi'#231'o Campo'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object rgatu: TRadioGroup
          Left = 15
          Top = 63
          Width = 118
          Height = 45
          Hint = 'Liberar Edi'#231#227'o Atualiza'#231#227'o MUB'
          Caption = 'Atualiza'#231#227'o'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object rgproj: TRadioGroup
          Left = 170
          Top = 13
          Width = 118
          Height = 45
          Hint = 'Liberar Edi'#231#227'o Projeto'
          Caption = 'Projeto'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object rgvalor: TRadioGroup
          Left = 170
          Top = 63
          Width = 118
          Height = 45
          Hint = 'Liberar Visualiza'#231#227'o Valores'
          Caption = 'Valores'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object rgacesso: TRadioGroup
          Left = 314
          Top = 13
          Width = 118
          Height = 45
          Hint = 'Liberar Acesso Configura'#231#245'es'
          Caption = 'Acesso'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object rgedtvl: TRadioGroup
          Left = 314
          Top = 63
          Width = 118
          Height = 45
          Hint = 'Liberar Edi'#231#227'o Valores'
          Caption = 'Edi'#231#227'o Valores'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
      object grp3: TGroupBox
        Left = 6
        Top = 2
        Width = 167
        Height = 124
        Caption = 'Com Levantamento'
        TabOrder = 3
        object lbl2: TLabel
          Left = 9
          Top = 19
          Width = 80
          Height = 14
          Caption = 'Servi'#231'o Campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 9
          Top = 46
          Width = 60
          Height = 14
          Caption = 'Atualiza'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 9
          Top = 96
          Width = 28
          Height = 14
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 9
          Top = 71
          Width = 40
          Height = 14
          Caption = 'Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtdiaslvatu: TEdit
          Left = 97
          Top = 42
          Width = 54
          Height = 21
          Hint = 'Quantidade de Dias Definido Para Atualiza'#231#227'o'
          NumbersOnly = True
          TabOrder = 1
          OnExit = edtdiaslvatuExit
        end
        object edtdiaslvcampo: TEdit
          Left = 97
          Top = 15
          Width = 54
          Height = 21
          Hint = 'Quantidade de Dias Definido Para  Levantamento de Campo'
          NumbersOnly = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = edtdiaslvcampoExit
        end
        object edtdiaslvpro: TEdit
          Left = 97
          Top = 67
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 2
          OnExit = edtdiaslvproExit
        end
        object edttotaldiascomlev: TEdit
          Left = 97
          Top = 92
          Width = 54
          Height = 21
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 3
        end
      end
      object grp5: TGroupBox
        Left = 351
        Top = 2
        Width = 164
        Height = 124
        Caption = 'Topografia'
        TabOrder = 4
        object lbl13: TLabel
          Left = 9
          Top = 20
          Width = 80
          Height = 14
          Caption = 'Servi'#231'o Campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl14: TLabel
          Left = 9
          Top = 58
          Width = 60
          Height = 14
          Caption = 'Atualiza'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl15: TLabel
          Left = 9
          Top = 78
          Width = 40
          Height = 14
          Caption = 'Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl16: TLabel
          Left = 9
          Top = 100
          Width = 28
          Height = 14
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl20: TLabel
          Left = 9
          Top = 36
          Width = 58
          Height = 14
          Caption = 'Topografia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edttottop: TEdit
          Left = 95
          Top = 98
          Width = 54
          Height = 21
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 4
        end
        object edtatutop: TEdit
          Left = 95
          Top = 54
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 2
          OnExit = edtatutopExit
        end
        object edtcampotop: TEdit
          Left = 95
          Top = 14
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          OnExit = edtcampotopExit
        end
        object edtprojtop: TEdit
          Left = 95
          Top = 76
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 3
          OnExit = edtprojtopExit
        end
        object edtTopografia: TEdit
          Left = 95
          Top = 34
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          OnExit = edtTopografiaExit
        end
      end
      object edtcodtecnico: TEdit
        Left = 157
        Top = 294
        Width = 24
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyPress = edtcodtecnicoKeyPress
      end
      object edtdesctecnico: TEdit
        Left = 220
        Top = 294
        Width = 221
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
    end
    object tsRural: TTabSheet
      Caption = 'Projeto Rural'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl25: TLabel
        Left = 220
        Top = 142
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object grp6: TGroupBox
        Left = 14
        Top = 10
        Width = 491
        Height = 124
        Caption = 'Rural'
        TabOrder = 0
        object lbl19: TLabel
          Left = 133
          Top = 19
          Width = 120
          Height = 14
          Caption = 'Levantamento Campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl22: TLabel
          Left = 133
          Top = 69
          Width = 28
          Height = 14
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl23: TLabel
          Left = 133
          Top = 44
          Width = 40
          Height = 14
          Caption = 'Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtRuralCampo: TEdit
          Left = 262
          Top = 15
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          OnExit = edtRuralCampoExit
        end
        object edtRuralProjeto: TEdit
          Left = 262
          Top = 40
          Width = 54
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          OnExit = edtRuralProjetoExit
        end
        object edtRuralTotal: TEdit
          Left = 262
          Top = 65
          Width = 54
          Height = 21
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 2
        end
      end
      object edtCodAcesso: TEdit
        Left = 163
        Top = 161
        Width = 24
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edtCodAcessoKeyPress
      end
      object edtDescAcesso: TEdit
        Left = 228
        Top = 161
        Width = 213
        Height = 19
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
      object grp7: TGroupBox
        Left = 9
        Top = 209
        Width = 507
        Height = 115
        Caption = 'Acessos'
        TabOrder = 3
        object rgRuralCampo: TRadioGroup
          Left = 15
          Top = 13
          Width = 118
          Height = 45
          Caption = 'Servi'#231'o Campo'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 0
        end
        object rgRuralTopografia: TRadioGroup
          Left = 15
          Top = 63
          Width = 118
          Height = 45
          Caption = 'Topografia'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 3
        end
        object rgRuralProjeto: TRadioGroup
          Left = 170
          Top = 13
          Width = 118
          Height = 45
          Caption = 'Projeto'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 1
        end
        object rgRuralValores: TRadioGroup
          Left = 170
          Top = 64
          Width = 118
          Height = 45
          Caption = 'Valores'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 4
        end
        object rgRuralAcesso: TRadioGroup
          Left = 314
          Top = 13
          Width = 118
          Height = 45
          Caption = 'Acesso'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 2
        end
        object rgRuralEdValores: TRadioGroup
          Left = 314
          Top = 70
          Width = 118
          Height = 45
          Caption = 'Edi'#231#227'o Valores'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 5
        end
      end
    end
    object tsConfig: TTabSheet
      Caption = 'Configura'#231#245'es Alerta/Relat'#243'rios'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 180
        Top = 13
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 52
        Width = 513
        Height = 105
        Caption = 'Configura'#231#245'es'
        TabOrder = 0
        object chkExibirAnomalia: TCheckBox
          Left = 16
          Top = 21
          Width = 353
          Height = 17
          Caption = 'Exibir Relat'#243'rio de OS ao Logar no Sistema'
          TabOrder = 0
        end
        object chkexibirprodutividade: TCheckBox
          Left = 16
          Top = 47
          Width = 353
          Height = 17
          Caption = 'Exibir Relat'#243'rio Produtividade'
          TabOrder = 1
        end
        object Chkexbirindicadoresgerais: TCheckBox
          Left = 16
          Top = 70
          Width = 353
          Height = 17
          Caption = 'Exibir Relat'#243'rio Indicadores Gerais'
          TabOrder = 2
        end
      end
      object edtCodUser: TEdit
        Left = 117
        Top = 32
        Width = 24
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edtCodUserKeyPress
      end
      object edtDescricao: TEdit
        Left = 180
        Top = 32
        Width = 221
        Height = 19
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
  end
  object pnl1: TPanel
    Left = 0
    Top = 521
    Width = 527
    Height = 52
    Align = alBottom
    TabOrder = 1
    object btnbtsair: TcxButton
      Left = 266
      Top = 13
      Width = 99
      Height = 32
      Caption = '&Sair'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00060000000B0000000C0000000C0000000C0000000C0000000C0000000C0000
        000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
        000B000000080000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000009000000160000
        001E000000280000002800000027000000270000002700000027000000270000
        0027000000270000002700000027000000270000002700000027000000270000
        002600000022000000190000000C000000010000000000000000000000000000
        00000000000000000000000000000000000000000006000000160707065E1D1F
        1ABC1C221BBF1F251EBE1F251EBE1F251EBE1F251EBE1F251EBE1F251EBE1F25
        1EBE1F251EBE1F251EBE1F251EBE1F251EBE1F251EBE1F251EBE1F251EBE1F26
        1FBE21241EBD080707660000001B0000000B0000000000000000000000000000
        00000000000000000000000000000000000000000008000000150D0C0A7E607C
        69FF438C63FF26824FFF2A8452FF2E8656FF2F8656FF2F8656FF2F8656FF2F86
        56FF2F8656FF2F8656FF2F8656FF2F8656FF2F8656FF2F8656FF2F8656FF2E8C
        58FF33784FFF0E0D0B86000000190000000D0000000000000000000000000000
        0000000000000000000000000000000000000000000200000005090A066BA5B1
        A5FFD2DDD7FF85A693FF467F5EFF2E734AFF2E744BFF32764FFF33764FFF3376
        4FFF33764FFF33764FFF33764FFF33764FFF33764FFF33764FFF33764FFF327E
        52FF317A50FF0B0B0A7500000008000000030000000000000000000000000000
        00000000000000000000000000000000000000000000000000000505166B949D
        AFFFFFFFFCFFF5F4F5FFCFD5D2FF8BA596FF4E8063FF30734CFF2D744BFF3175
        4EFF33764FFF33764FFF33764FFF33764FFF33764FFF33764FFF33754FFF327D
        52FF317950FF0B0A096200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000080748792B2A
        AEFFBABBDCFFFCFEF4FFF6F7F7FFF1F0F1FFCFD2D1FF91A298FF527A63FF316E
        49FF2B7047FF2F714AFF30714BFF31714BFF31714BFF31714BFF31704BFF3078
        4EFF2D744BFF13120F5E00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000B0A40742221
        C6FF2A29BFFFA2A2D3FFF8FAF1FFEAECEAFFE6E9E9FFE6E6E7FFCDCDCDFF939E
        97FF547461FF306546FF2B6A45FF2E6C48FF2F6C48FF2E6C48FF2E6B48FF2D73
        4BFF2B7049FF1413115F00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000A093B6C2C2C
        CCFF2424E0FF201FC0FF8989CCFFEDF0E9FFE0E3DFFFD3D7D5FFD4D8D7FFD9DB
        DAFFCACACAFF969C99FF52695BFF2F6245FF2B6643FF2C6544FF2C6444FF2B6C
        47FF2A6D48FF1413115F00000000000000000000000000000000000000000404
        2C430606446906064164060641640606416406064164060641620D0B6BAC2B2A
        CBFF0606DDFF1B1BDEFF201EC5FF6B6BC1FFDCDFDDFFD9DDD7FFC9CECCFFBFC5
        C3FFBFC5C2FFD3D7D5FFB0AFB0FF365945FF265F3EFF296040FF295F40FF2867
        43FF296B46FF1413115F00000000000000000000000000000000000000000D0C
        73AE2B2ACCFF2928CFFF2928CEFF2928CEFF2928CEFF2928CEFF2A29CFFF3232
        DBFF0303D9FF0000D8FF1818DEFF201FCBFF5151BAFFC7CBD1FFD2D8CFFFC0C6
        C4FFB5BCB9FFB9BFBDFFB6B8B8FF365945FF245939FF275A3CFF27593CFF2661
        3FFF286843FF1413115F00000000000000000000000000000000000000000F0D
        71A82928DCFF0505DCFF0505DBFF0505DBFF0505DBFF0505DBFF0505DBFF0404
        D9FF0000D7FF0000D7FF0000D7FF1313DDFF201FD1FF3C3BB6FFAFB3C4FFCBD1
        C6FFB6BDBAFFBBC1BFFFB4B6B6FF345542FF205435FF245538FF245438FF235C
        3BFF276642FF1413115F00000000000000000000000000000000000000000F0E
        70A72727DCFF0001DCFF0101DBFF0000DBFF0000DBFF0000DBFF0000DBFF0000
        DBFF0000DBFF0000DBFF0000DBFF0000DBFF0F0FE0FF2121D9FF2F2EB9FF9195
        BAFFB9C0BBFFBBC2BFFFB4B7B6FF325140FF1E4D32FF224F35FF224E35FF2156
        38FF266340FF1413115F00000000000000000000000000000000000000000F0E
        70A72D2DE7FF0809E9FF0707E8FF0A0AE8FF0E0EE8FF1616E9FF1A1AE9FF1C1C
        E9FF1B1BE9FF1818E9FF1111E9FF0C0CE8FF0303E7FF1E1EF0FF2827DDFF2D2C
        ABFFB0B6B9FFBEC4BFFFB5B7B6FF314D3DFF1B472EFF1F4931FF1F4831FF1E50
        34FF24603FFF1413115F00000000000000000000000000000000000000000F0E
        71A73333F1FF1818F6FF2828F5FF3636F6FF3E3EF7FF4141F7FF4242F7FF4343
        F7FF4343F7FF4242F7FF4040F7FF3737F7FF3A3AFAFF3433E8FF3838BAFFA5A9
        BEFFC1C8C1FFBDC4C1FFB5B7B6FF2F4A3AFF19412AFF1D432DFF1D422DFF1B4A
        30FF235D3DFF1413115F00000000000000000000000000000000000000000E0D
        71A74242FBFF3E3EFFFF4343FFFF4242FFFF4141FFFF4141FFFF4141FFFF4040
        FFFF4040FFFF4040FFFF3E3EFFFF5151FFFF4F4FEBFF4B4BBCFFB7BCC6FFC2C8
        BEFF868B89FFB4BBB8FFB7BAB8FF2D4638FF163B26FF1A3E29FF1A3D29FF1943
        2CFF225B3AFF1413115F00000000000000000000000000000000000000000E0C
        76AF4D4DF6FF5656FAFF5454FAFF5453FAFF5454FAFF5353FBFF5454FAFF5555
        FEFF3C3CFFFF3737FFFF4C4CFFFF4545E5FF5353BDFFC6CAD0FFD3D8D0FFBEC4
        C2FF636766FF4D4F4FFFACAEADFF2E4438FF143421FF183825FF183724FF163E
        28FF205839FF1413115F00000000000000000000000000000000000000000807
        4A71100E76AF111073AA111073AA111073AA111073AA100E70A515138ED44948
        E5FF3939FFFF4647FFFF3E3DDFFF6160C0FFD6D9DBFFDADED8FFC9CECDFFC6CC
        CAFF989E9BFF565958FFABADACFF2D4136FF112F1DFF163222FF163120FF1438
        25FF205537FF1413115F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000090842734241
        E1FF4949FFFF3736D9FF7070C5FFE7E9E6FFE2E5E0FFD3D7D5FFCACFCDFFC1C7
        C5FFABB1AEFFB2B8B5FFB9BCBAFF293B31FF0E291AFF132D1EFF132C1DFF1133
        21FF1F5236FF1413115F00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000A0A3E73403F
        E2FF3635D8FF7E7EC8FFF2F4EFFFEAECEAFFDCDFDFFFD3D7D5FFCACFCDFFC0C6
        C4FFB8BFBCFFBDC4C1FFB7BAB9FF28372EFF0B2316FF11271AFF112619FF0F2D
        1DFF1E5034FF1413115F00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000A0944761F1D
        BAFF8F90D0FFF5F7F0FFEFF1EFFFE6E8E8FFDCDFDFFFD3D7D5FFCACFCDFFC0C6
        C4FFB6BDBAFFBBC2BFFFB7BAB9FF27342CFF091D12FF0E2116FF0E2015FF0C27
        19FF1C4D32FF1413115F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000008073C737377
        AAFFF8FBF2FFEFF0F0FFECEEEEFFE6E8E8FFDCDFDFFFD3D7D5FFCACFCDFFC0C6
        C4FFB6BDBAFFBBC2BFFFB7BAB9FF253029FF07170DFF0C1C12FF0C1B11FF0A22
        15FF1B4B2FFF1413115F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000010100F599CA2
        98FFF4F6F5FFEDEEEFFFECEEEEFFE6E8E8FFDCDFDFFFD3D7D5FFCACFCDFFC0C6
        C4FFB6BDBAFFBBC2BFFFB7BAB9FF232C27FF041109FF09160EFF09150DFF071C
        11FF19482EFF1413115F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000011110D58979D
        98FFF3F5F5FFEDEEEFFFECEEEEFFE6E8E8FFDCDFDFFFD3D7D5FFCBD0CEFFC2C8
        C6FFB7BEBBFFBBC2BFFFB7BAB9FF212824FF010A05FF070F0AFF070E0AFF0515
        0EFF18452CFF1413115F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000011100E58979C
        98FFF3F6F5FFEDEEEFFFECEEEEFFE6E8E8FFDDE0E0FFD7DBD9FFCBD0CEFFB7BC
        BBFFA5ABA8FFA6ACAAFFA3A6A5FF1D211EFF000401FF040906FF040806FF0210
        0AFF17422BFF1413115F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000011100E58979C
        97FFF4F7F6FFEEEFF0FFEFF0F1FFECEFEFFFDCDFDFFFBDC1BFFF9FA3A1FF8F93
        91FF878C8AFF8A908EFF878988FF161817FF000100FF010302FF010202FF000A
        06FF164029FF1413115F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000011100E599CA1
        9DFFFAFEFDFFF2F5F5FFE7E9E9FFBDC0C0FF909291FF7A7C7BFF747776FF7073
        72FF6A6E6DFF6A6E6DFF595C5AFF0E0F0FFF000000FF000000FF000000FF0003
        00FF133C25FF1514116000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000012120F5A7274
        70FF989D99FF868A87FF5F615FFF474946FF434542FF424442FF3F403EFF3A3C
        39FF373736FF333433FF2E2F2DFF191817FF100F0DFF100F0EFF11110FFF1313
        10FF212A21FF1514116100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000B0A09342222
        1E9721211E951F1E1B951D1D1A951E1E1B951F1F1B951E1E1B951E1E1B951E1D
        1A951E1D1A951D1D1A951D1D1A951D1D19951D1C19951D1C19951D1D1A951E1D
        1A951F1E1B970C0B0A3700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = btnbtsairClick
    end
    object btnbtgravar: TcxButton
      Left = 161
      Top = 13
      Width = 99
      Height = 32
      Caption = '&Gravar'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000103010303080308010201020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000020703080F35113F1E612372112D132F0204020400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000207
        02080C340F46187B1CC64BBF4FFA268A2BAD1A301C3103040304000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010602080934
        0D46117515C44DBD54FF8CF595FF4CCE53FC308B35AE1D301F31020403040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001060108062F0A450E6E
        12C442C34AFF79FC86FF81FF8DFF7FFA8AFF44CE4BFC29882DAD152F18310204
        0204000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000050108042C07450C6A11C439B9
        41FF61FA6FFF64FF73FF68FF77FF6FFF7DFF70FA7CFF3BCC43FC1D8623AE0F2E
        1231010402040000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000500080129054608670FC435B43DFF55F0
        63FF55F664FF5BF86AFF63FA71FF5DFC6CFF61FE70FF61F96FFF33CA3BFC1782
        1DAE0C2B0F310103010300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000400080025044506670DC430AF39FF49E558FF49EA
        58FF58ED66FF76F282FF7EF58AFF64F471FF55F564FF58F867FF58F566FF2FC8
        37FC138019AE0A290D3201020103000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000400080120044506620DC42BAE35FF3CD94BFF40DE4FFF5FE5
        6CFF80EC8AFF86EE8FFF82EF8DFF7BF086FF5EEE6CFF4EEE5DFF51F160FF52EF
        60FF2EC337FC107516AD07250A31000301040000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000003000807200945155F1BC429A534FF30CC3EFF3FD34DFF6FE079FF89E7
        92FF88E891FF85E98EFF85EA8FFF7FEA89FF77EB82FF58E865FF47E756FF4AEA
        59FF4CE75AFF2AB232FC0C6611AE042207310003000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000004
        00080E251146376F3DC438A542FF27BF35FF4ACD56FF82DE8AFF90E298FF8CE3
        94FF88E390FF87E28FFF8FE096FF7FE488FF7BE585FF73E57EFF51E15FFF3FDF
        4EFF42E251FF45DF53FF26A02DFC07580CAE021F043100030004000000000000
        0000000000000000000000000000000000000000000000000000000300070E26
        11425F8A62C44FAF58FF27B635FF62CD6CFF93DD9AFF95DF9CFF90DE97FF8DDF
        94FF88DE90FF4FC559FD32AC39F387DF8FFF7DE186FF77E081FF6EE079FF4BDA
        58FF37D746FF3ADB49FF3DD64BFF219128FC034F07AD001C0331000200030000
        0000000000000000000000000000000000000000000000000000000B00191656
        1AAB6CB672FF40B54AFF81D188FFA0DDA6FF9BDCA1FF96DC9CFF92DB99FF8CDA
        94FF50C65BFF10821BB9164E1A6A54AA5CCF67D371FF78DB81FF73DB7DFF6ADA
        75FF44D351FF2FCF3EFF32D241FF35CD43FF1D8624FC014406AE001702310002
        00040000000000000000000000000000000000000000000000000007000F1447
        18847CBB82F6A4D7A9FFAEDCB3FFA5DAAAFF9FDAA4FF9AD9A0FF93D899FF50C1
        5AFF0C7C16B80320052F0105010707320B451D9728D05BCC65FF74D77EFF6FD6
        79FF65D570FF3DCB4AFF27C636FF29CA39FF2DC33BFF197A20FC013A06AD0012
        023100010003000000000000000000000000000000000000000000000000040E
        05173365378C66B96FF6A4D5A9FFAFD8B3FFA7D6ABFF9ED5A3FF52BC5AFF0778
        11B8011F042F00010001000000000004010504300845189223D059C864FF71D2
        7AFF6BD175FF61CF6BFF35C343FF1EBE2DFF20C130FF25BA33FF17771EFB0236
        06AB000F02310001000400000000000000000000000000000000000000000000
        0000010D021706570D8C3CAE45F6A9D8AEFFB5DAB9FF58BC60FF06750FB8001E
        032F0001000100000000000000000000000000030104022F0746148E20D056C3
        60FF6DCD76FF67CC70FF5CC966FF2EBB3BFF14B423FF17B826FF1DB42BFF1575
        1DFB023207AB000E023100010004000000000000000000000000000000000000
        000000000000000E01170159098B57BA60F675C77CFF0A7914B8001E032F0001
        0001000000000000000000000000000000000000000000030004012C05450F88
        1AD052BD5BFF6AC772FF63C66CFF57C361FF26B333FF0BAB1AFF0DAE1DFF14AA
        22FF11721AFB033307AC010F0231000100040000000000000000000000000000
        00000000000000000000010F021708540E830A640FA4021E042E000100020000
        000000000000000000000000000000000000000000000000000000030005002A
        03450E8018D051B45AFF6ABF72FF62BE6BFF55BC5FFF20A92DFF02A011FF04A3
        13FF0BA119FF17751FFB204824AB071309310001000400000000000000000000
        00000000000000000000000000000006010A0009010E00010001000000000000
        0000000000000000000000000000000000000000000000000000000000000002
        0004002903460F7E18D056B15EFF6CB773FF64B56CFF56B15EFF1F9C2BFF0091
        0DFF00950EFF0A9717FF46944EFB3A593EAB020E032E00010003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000300050029034510801AD057AE5FFF6EB074FF66AD6CFF57A85FFF208D
        2AFF007F0CFF00830BFF188E23FF37733BFC022103870003000B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000030005002A034510821AD058AD60FF70AE75FF67AA6EFF59A2
        60FF208329FF02730DFF157A1DFF105A16EB001B026000010005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000030005002B034610821AD05AAD61FF72AC77FF69A7
        6FFF5BA062FF2C8634FF0A6411EA0026036A0003000A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000030004002B034612821CD05EAD65FF79AD
        7EFF75B07AFF37893EEA012D05690004000A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000030005002A034514821ED061AD
        67FF72AD76EA1B411E690004000A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000003000500280343055B
        0AAE133D16650105010A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000200030008
        000E000200050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = btnbtgravarClick
    end
  end
end