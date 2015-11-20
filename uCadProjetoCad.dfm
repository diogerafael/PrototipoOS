object frmCadProjetoCad: TfrmCadProjetoCad
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 485
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 753
    Height = 39
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro Projetos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    ExplicitWidth = 250
  end
  object cxPageControl1: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 42
    Width = 747
    Height = 359
    Align = alTop
    TabOrder = 0
    Properties.ActivePage = cxTabSheet4
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 355
    ClientRectLeft = 4
    ClientRectRight = 743
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      AlignWithMargins = True
      Caption = 'Cadastro'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxTabControl1: TcxTabControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 727
        Height = 319
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <
          item
          end
          item
          end>
        Properties.CustomButtons.Mode = cbmEveryTab
        ClientRectBottom = 315
        ClientRectLeft = 4
        ClientRectRight = 723
        ClientRectTop = 4
        object lbl2: TLabel
          Left = 15
          Top = 16
          Width = 58
          Height = 23
          Alignment = taRightJustify
          Caption = 'Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 19
          Top = 80
          Width = 54
          Height = 23
          Alignment = taRightJustify
          Caption = 'Proton'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 52
          Top = 120
          Width = 21
          Height = 23
          Alignment = taRightJustify
          Caption = 'Os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 34
          Top = 160
          Width = 39
          Height = 23
          Alignment = taRightJustify
          Caption = 'Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 20
          Top = 200
          Width = 53
          Height = 23
          Alignment = taRightJustify
          Caption = 'N'#186' Pvt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 212
          Top = 80
          Width = 85
          Height = 23
          Alignment = taRightJustify
          Caption = 'Solicitante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 218
          Top = 160
          Width = 79
          Height = 23
          Alignment = taRightJustify
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 240
          Top = 200
          Width = 57
          Height = 23
          Alignment = taRightJustify
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl10: TLabel
          Left = 225
          Top = 120
          Width = 72
          Height = 23
          Alignment = taRightJustify
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 271
          Top = 233
          Width = 26
          Height = 23
          Alignment = taRightJustify
          Caption = 'Crs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 7
          Top = 234
          Width = 66
          Height = 23
          Alignment = taRightJustify
          Caption = 'Tipo OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl16: TLabel
          Left = 588
          Top = 16
          Width = 45
          Height = 23
          Alignment = taRightJustify
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxTextEdit1: TcxTextEdit
          Left = 79
          Top = 21
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          TextHint = 'C'#243'digo do Projeto'
          Width = 90
        end
        object cxTextEdit2: TcxTextEdit
          Left = 79
          Top = 80
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          TextHint = 'Informe Proton'
          Width = 90
        end
        object cxTextEdit3: TcxTextEdit
          Left = 79
          Top = 120
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          TextHint = 'Informe OS'
          Width = 90
        end
        object cxTextEdit4: TcxTextEdit
          Left = 79
          Top = 160
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          TextHint = 'Informe Nota'
          Width = 90
        end
        object cxTextEdit5: TcxTextEdit
          Left = 79
          Top = 200
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          TextHint = 'Informe n'#186' Pvt'
          Width = 90
        end
        object cxTextEdit6: TcxTextEdit
          Left = 303
          Top = 80
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          TextHint = 'Informe o Solicitante'
          Width = 410
        end
        object cxTextEdit7: TcxTextEdit
          Left = 303
          Top = 160
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          Properties.ReadOnly = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          TextHint = 'Endere'#231'o do Solicitante'
          Width = 410
        end
        object cxTextEdit8: TcxTextEdit
          Left = 303
          Top = 200
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          Properties.ReadOnly = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          TextHint = 'Endere'#231'o do Solicitante'
          Width = 410
        end
        object cxTextEdit9: TcxTextEdit
          Left = 303
          Top = 120
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          Properties.ReadOnly = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          TextHint = 'Endere'#231'o do Solicitante'
          Width = 154
        end
        object cxComboBox1: TcxComboBox
          Left = 303
          Top = 229
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -14
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Text = 'Selecione'
          Width = 314
        end
        object cxComboBox2: TcxComboBox
          Left = 79
          Top = 230
          ParentFont = False
          Properties.Items.Strings = (
            'Com Levantamento'
            'Sem Levantamento'
            'PVT'#39's')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -14
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Text = 'Selecione'
          Width = 154
        end
        object cxTextEdit10: TcxTextEdit
          Left = 639
          Top = 16
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          Properties.ReadOnly = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          TextHint = 'Endere'#231'o do Solicitante'
          Width = 50
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxTabControl2: TcxTabControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 733
        Height = 325
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 321
        ClientRectLeft = 4
        ClientRectRight = 729
        ClientRectTop = 4
        object lbl13: TLabel
          Left = 20
          Top = 48
          Width = 109
          Height = 23
          Alignment = taRightJustify
          Caption = 'Recebimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl14: TLabel
          Left = 80
          Top = 77
          Width = 49
          Height = 23
          Alignment = taRightJustify
          Caption = 'Limite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl15: TLabel
          Left = 321
          Top = 53
          Width = 71
          Height = 23
          Alignment = taRightJustify
          Caption = 'Diretorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl17: TLabel
          Left = 596
          Top = 11
          Width = 45
          Height = 23
          Alignment = taRightJustify
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDateEdit1: TcxDateEdit
          Left = 160
          Top = 53
          TabOrder = 1
          Width = 121
        end
        object cxDateEdit2: TcxDateEdit
          Left = 160
          Top = 82
          TabOrder = 3
          Width = 121
        end
        object cxRadioGroup1: TcxRadioGroup
          Left = 20
          Top = 143
          Caption = 'Documenta'#231#227'o'
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'Sem Documenta'#231#227'o'
            end
            item
              Caption = 'Com Documenta'#231#227'o'
            end>
          ItemIndex = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Height = 105
          Width = 261
        end
        object cxButton3: TcxButton
          Left = 419
          Top = 96
          Width = 150
          Height = 41
          Caption = 'Documenta'#231#227'o'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000505051517171763272727A7343434DC3B3B3BFB3434
            34DC272727A71717176105050515000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000010101043292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF292929B00F0F0F410000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000101010432F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC90F0F0F4100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000505
            0515292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929B005050515000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000001717
            17633C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF17171763000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000002727
            27A73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF272727A7000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0707071F3434
            34DC3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DC000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF010101033B3B
            3BFB3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
            000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3B3B3BFB000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0707071F3434
            34DC3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
            0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF343434DC000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1313134F2727
            27A73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000000000
            00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF272727A7000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D1717
            17633C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000001E1E
            1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF17171763000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71010
            1042292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929B005050515000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2424
            2497101010442F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC91010104300000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF1F1F1F8210101044292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF292929B0101010430000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF242424971010104217171763272727A7343434DC3B3B3BFB3434
            34DC272727A71717176305050515000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF333333D72121218D1313134F0707071F010101030707
            071F1313134F2121218D00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000080808201E1E1E801E1E1E801E1E
            1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
            1E801E1E1E801E1E1E8000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000080808201E1E1E801E1E
            1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
            1E801E1E1E801E1E1E8000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000080808201E1E
            1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
            1E801E1E1E801E1E1E8000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000808
            08201E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
            1E801E1E1E800808082000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.ImageIndex = 18
          TabOrder = 4
        end
        object edt1: TEdit
          Left = 419
          Top = 53
          Width = 294
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object cxTextEdit11: TcxTextEdit
          Left = 647
          Top = 11
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          Properties.ReadOnly = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          TextHint = 'Endere'#231'o do Solicitante'
          Width = 50
        end
        object cxCheckBox1: TcxCheckBox
          Left = 419
          Top = 160
          Caption = 'Levantamento'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 222
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      AlignWithMargins = True
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxTabControl3: TcxTabControl
        Left = 0
        Top = 0
        Width = 733
        Height = 325
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 321
        ClientRectLeft = 4
        ClientRectRight = 729
        ClientRectTop = 4
        object lbl18: TLabel
          Left = 81
          Top = 42
          Width = 64
          Height = 23
          Alignment = taRightJustify
          Caption = 'T'#233'cnico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl19: TLabel
          Left = 65
          Top = 88
          Width = 80
          Height = 23
          Alignment = taRightJustify
          Caption = 'Libera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl20: TLabel
          Left = 71
          Top = 136
          Width = 74
          Height = 23
          Alignment = taRightJustify
          Caption = 'Chegada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl21: TLabel
          Left = 604
          Top = 19
          Width = 45
          Height = 23
          Alignment = taRightJustify
          Caption = 'Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl24: TLabel
          Left = 96
          Top = 184
          Width = 49
          Height = 23
          Alignment = taRightJustify
          Caption = 'Limite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxComboBox3: TcxComboBox
          Left = 151
          Top = 44
          ParentFont = False
          Properties.Items.Strings = (
            'Jo'#227'o da Silva'
            'Pedro Lemos')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -14
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Text = 'Selecione'
          Width = 242
        end
        object cxDateEdit3: TcxDateEdit
          Left = 151
          Top = 93
          TabOrder = 2
          Width = 121
        end
        object cxDateEdit4: TcxDateEdit
          Left = 151
          Top = 141
          TabOrder = 3
          Width = 121
        end
        object cxTextEdit12: TcxTextEdit
          Left = 655
          Top = 19
          ParentFont = False
          ParentShowHint = False
          Properties.LookupItems.Strings = (
            'Pessoa da Silva'
            'Pessoa de Morais'
            'Fulano da Silva'
            'Fulano da Azevedo'
            'Ciclano Z'#233
            'Jose'
            'Jo'#227'o')
          Properties.ReadOnly = True
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          TextHint = 'Endere'#231'o do Solicitante'
          Width = 50
        end
        object cxDateEdit7: TcxDateEdit
          Left = 151
          Top = 189
          TabOrder = 4
          Width = 121
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      AlignWithMargins = True
      Caption = 'cxTabSheet4'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxTabControl4: TcxTabControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 727
        Height = 319
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 315
        ClientRectLeft = 4
        ClientRectRight = 723
        ClientRectTop = 4
        object lbl22: TLabel
          Left = 73
          Top = 48
          Width = 153
          Height = 23
          Alignment = taRightJustify
          Caption = 'Envio para Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl23: TLabel
          Left = 152
          Top = 96
          Width = 74
          Height = 23
          Alignment = taRightJustify
          Caption = 'Chegada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl25: TLabel
          Left = 66
          Top = 23
          Width = 64
          Height = 23
          Alignment = taRightJustify
          Caption = 'T'#233'cnico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl26: TLabel
          Left = 103
          Top = 146
          Width = 123
          Height = 23
          Alignment = taRightJustify
          Caption = 'Inserir Revis'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDateEdit5: TcxDateEdit
          Left = 232
          Top = 53
          TabOrder = 1
          Width = 121
        end
        object cxDateEdit6: TcxDateEdit
          Left = 232
          Top = 101
          TabOrder = 2
          Width = 121
        end
        object StringGrid1: TStringGrid
          Left = 4
          Top = 208
          Width = 719
          Height = 107
          Align = alBottom
          TabOrder = 4
        end
        object cxComboBox4: TcxComboBox
          Left = 136
          Top = 22
          ParentFont = False
          Properties.Items.Strings = (
            'Jo'#227'o da Silva'
            'Pedro Lemos')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -14
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Text = 'Selecione'
          Width = 242
        end
        object cxButton4: TcxButton
          Left = 232
          Top = 141
          Width = 107
          Height = 41
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000060606201919197B2828
            28C6323232F8282828C61919197B060606200000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000001919197E00000000212121A5333333FF3333
            33FF333333FF333333FF333333FF212121A50606062000000000000000000000
            0000000000000000000000000000333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF08080828333333FF1919197E333333FF282828C71313
            135F0303030F1313135F282828C7333333FF1919197B00000000000000000000
            0000000000000000000000000000333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF01010105333333FF333333FF333333FF1313135F0000
            000000000000000000001313135F333333FF282828C600000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF333333FF1B1B1B860000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF333333FF333333FF1919
            197E000000001919197E333333FF333333FF333333FF333333FF000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000001B1B1B86333333FF333333FF333333FF000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D400000000000000000282828C6333333FF1313135F0000
            000000000000000000001313135F333333FF333333FF333333FF000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000001919197B333333FF282828C71313
            135F0303030F1313135F282828C7333333FF1919197E333333FF000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D40000000000000000000000000212121A5333333FF3333
            33FF333333FF333333FF333333FF212121A5000000001919197E000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000060606201919197B2828
            28C6323232F8282828C61919197B060606200000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000003333
            33FF333333FF333333FF333333FF333333FF000000000D0D0D40000000000D0D
            0D40000000000D0D0D4000000000333333FF333333FF00000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
            33FF333333FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 3
          OnClick = cxButton4Click
        end
      end
    end
  end
  object pnl1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 422
    Width = 747
    Height = 60
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'pnl1'
    ShowCaption = False
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 220
      Top = 9
      Width = 150
      Height = 41
      Caption = 'Gravar'
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
        00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
        34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050505141919
        196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011111147292929AF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
        1760000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
        36E5171717600000000000000000000000000000000000000000000000000000
        0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF333333D71111114700000000000000000000000000000000000000000000
        00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
        0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
        00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E0000000000000000000000001E1E1E7E3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
        00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E00000000000000000000000000000000000000001E1E1E7E3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
        0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000000000001E1E
        1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
        00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
        00000000000000000000000000001E1E1E810000000000000000000000000000
        00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
        0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
        000000000000000000001E1E1E813C3C3CFF1E1E1E8100000000000000000000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
        00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000
        000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
        00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000
        00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
        0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E81000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
        00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E81000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
        0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E810000000000000000000000003C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
        00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000003C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
        00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000003C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
        0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
        00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
        0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF333333D71111114700000000000000000000000000000000000000000000
        000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
        36E5171717600000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
        1760000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011111147292929AF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050505141919
        196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
        34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.ImageIndex = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 376
      Top = 9
      Width = 150
      Height = 41
      Caption = 'Cancelar'
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
        00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
        34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050505141919
        196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011111147292929AF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
        1760000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
        36E5171717600000000000000000000000000000000000000000000000000000
        0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF333333D71111114700000000000000000000000000000000000000000000
        00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
        0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
        00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
        00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
        0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
        1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
        0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
        0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
        00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
        0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
        00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
        0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
        00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
        0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
        0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
        00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
        0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
        0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
        00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
        0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
        1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
        00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
        0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
        00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
        0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF333333D71111114700000000000000000000000000000000000000000000
        000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
        36E5171717600000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
        1760000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011111147292929AF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050505141919
        196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
        34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 9044643
    ImageInfo = <
      item
        Image.Data = {
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
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F4000000000000000000F0F
          0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0F0F403C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0F0F403C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F4000000000000000000F0F
          0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E0000000000000000000000001E1E1E7E3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E00000000000000000000000000000000000000001E1E1E7E3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00000000000000000000000000001E1E1E810000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          000000000000000000001E1E1E813C3C3CFF1E1E1E8100000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E81000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E810000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000600000007000000070000
          0006000000050000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000060000000B0000001000000015000000180000001A0000001A0000
          001800000016000000110000000C000000070000000400000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E0000001706031B4D0F084595180B69D11A0B6FD91E0E87FF1E0D87FF180A
          6ED9170968D10F06449606021B4F000000190000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000150B06
          2E6B1C0F76E11F148FFF1C199AFF1A1EA4FF1A1FA5FF1823ACFF1822ACFF191E
          A5FF1A1DA3FF1B1899FF1D118DFF1A0C75E20A052C6D000000180000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000D040311361C0F6ECF2119
          96FF1D21A8FF1C27B2FF1E2AB4FF202DBAFF212DBAFF232FBDFF232FBCFF202D
          B9FF202CB9FF1E2AB6FF1B26B0FF1B1FA5FF1E1492FF180B6AD10402103A0000
          0010000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000E0A062455241788F02022A5FF202B
          B5FF2231BBFF2432BDFF2533BDFF2533BDFF2533BEFF2533BEFF2433BEFF2532
          BEFF2432BEFF2433BDFF2532BDFF222EBAFF1E2AB3FF1E1EA1FF1D1181F10804
          225A000000120000000600000001000000000000000000000000000000000000
          000000000000000000040000000C0A072553281C93FA2329ADFF2532BCFF2735
          BFFF2735C1FF2836BFFF2836C1FF2836C0FF2836C2FF2836C0FF2836C0FF2836
          C0FF2736C0FF2736C0FF2736BFFF2635BFFF2635BEFF2230BAFF1F25A9FF2114
          8BFA080523590000001000000005000000010000000000000000000000000000
          0000000000020000000906041638281E8CEE262FB2FF2935C0FF2A38C1FF2B38
          C2FF2A39C3FF2B39C2FF2A3AC2FF2B3AC3FF2C3AC3FF2C3AC3FF2C3AC3FF2B3A
          C3FF2B39C3FF2B3AC3FF2939C2FF2A38C2FF2938C2FF2837C0FF2634BFFF2228
          AEFF211585EF0503143E0000000C000000030000000100000000000000000000
          00010000000500000010241B77CB2B2EAFFF2C3BC2FF2D3BC4FF2E3DC4FF2D3D
          C4FF3140C5FF4556CFFF4F5ED2FF4454CEFF303FC7FF2F3EC5FF2F3EC5FF303F
          C6FF4453CEFF4D5DD3FF4555CFFF303FC5FF2C3CC3FF2D3BC4FF2B3AC3FF2A38
          C1FF2526A8FF1D1270D000000016000000070000000100000000000000000000
          00020000000A110D3465312BA5FF3040C4FF2F3FC5FF2F40C6FF3041C6FF3344
          C7FF4B5ACFFF434ABBFF3D41B2FF444CBDFF4A5AD0FF3344C8FF3344C9FF495A
          D1FF4249BAFF393BACFF3E44B6FF4958CDFF3343C7FF2F3FC5FF2E3EC5FF2E3D
          C5FF2E3CC2FF29219AFF0D08306B0000000E0000000300000001000000010000
          00040000000F2C2489DD323BBBFF3344C8FF3243C8FF3244C8FF3444C9FF4B5A
          CFFF4046B6FF9597D4FFE8E8F6FF8081CBFF4147B8FF4D5ED3FF4D5FD3FF3E45
          B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4959CEFF3244C7FF3142C7FF3041
          C7FF3243C7FF2C35B6FF24187EDF000000160000000700000001000000020000
          00070E0C294E3A36ACFF3A4AC9FF3546C9FF3646CAFF3648C9FF3748CBFF4349
          B9FF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
          C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C41B3FF3648C9FF3546CAFF3445
          C9FF3344C8FF3747C7FF2F29A1FF0B0827570000000B00000002000000020000
          00091F1A59924044BBFF3E4ECCFF384ACCFF394CCBFF3A4CCCFF3B4DCCFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
          F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF3A4CCCFF384BCBFF384A
          CAFF3748CAFF3A4CCBFF373AB2FF181252980000000E00000003000000020000
          000B2F2882C6444FC7FF3D50CEFF3C4ECDFF3C50CFFF3D50CFFF3D51CFFF3B43
          B8FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
          E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3E50CEFF3C4FCDFF3B4D
          CDFF3A4DCCFF3C4ECDFF3F48C0FF251D77CA0000001100000004000000030000
          000C3A36A2EC4958CEFF4052D0FF3F52D0FF4053D0FF4054D1FF4155D1FF4255
          D1FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
          E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4054CFFF4054D0FF3F52D0FF3E52
          CFFF3D50CFFF3E50CFFF4554CBFF2F2694ED0000001300000005000000030000
          000C423CAFFA5061D5FF4154D1FF4256D1FF4356D2FF4357D2FF4458D3FF4559
          D3FF465AD2FF3E43B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
          E6FFF4EBE5FF706AB4FF393EB1FF4559D1FF4459D3FF4358D2FF4357D2FF4256
          D1FF4054D0FF3F53D0FF4C60D3FF362CA0FA0000001300000005000000030000
          000B4541B1FA5B6DDAFF4557D3FF4559D3FF465AD4FF465BD4FF475CD4FF4A5F
          D5FF687ADDFF464BB6FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3F43B1FF6578DCFF4A5ED5FF475BD4FF465AD4FF4559
          D3FF4357D2FF4356D1FF576BD8FF3830A4FA0000001200000005000000020000
          000A433FABEC6576DAFF485ED5FF475CD5FF485DD5FF5468D9FF687BDDFF8496
          E5FF5255BAFF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF4549B2FF7789E0FF5D70DBFF5063D8FF485D
          D5FF465BD4FF475BD4FF6372D8FF38309DED0000001100000004000000020000
          000839378FC56F7DDAFF4E63D9FF5167D8FF7084E1FF7C8FE4FF7D90E4FF5A5F
          BFFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4D51B6FF6B7FDFFF687CDEFF5F73
          DBFF4E62D6FF4D62D7FF6A77D5FF302B84C80000000E00000003000000010000
          00062A28668F747DD6FF6F83E1FF8092E4FF8295E5FF8295E5FF8295E6FF3A3B
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6F84E2FF6E81E0FF6B7F
          DFFF677BDEFF6376DDFF6C73CFFF23205F940000000B00000003000000010000
          0004151430486F72D1FF9FB0EDFF8699E6FF879AE7FF879AE7FF889BE8FF4E53
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF494DB3FF484CB3FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4245B0FF7589E2FF7287E2FF7083
          E2FF6C80E0FF889BE8FF5F5FC4FF11102D4E0000000700000002000000000000
          0002000000075757AEDAA8B5EBFF90A3E9FF8D9FE9FF8EA0E9FF8EA0E9FF8696
          E4FF4649B0FF7E75ADFFC3B1B7FF6D66ABFF4A4FB4FF8799E6FF8698E6FF474C
          B1FF6B64A9FFC2B0B6FF796FAAFF3A3CA8FF7587DEFF7A8EE5FF778BE3FF7489
          E3FF768AE3FF99A5E5FF4643A0DC0000000E0000000400000001000000000000
          0001000000042324455B7E82D9FFB0C1F2FF92A5EAFF93A5EBFF93A5EBFF93A5
          EBFF8A9AE4FF4F54B6FF3534A2FF565CBBFF8D9FE8FF8FA2EBFF8EA1EAFF899C
          E7FF5157B9FF2E2C9CFF454AB0FF7C8EE1FF8295E7FF7F92E6FF7C90E5FF798D
          E5FF9EB0EDFF6C6ECBFF1C1B4061000000080000000200000000000000000000
          000000000002000000065455A2C6A8B2E9FFA8B9F0FF97AAECFF98AAECFF98AA
          ECFF98AAECFF97AAECFF97A9ECFF96A9ECFF95A8ECFF94A7ECFF93A6EBFF91A4
          EBFF8FA3EAFF8DA0EAFF8B9FEAFF899CE9FF859AE8FF8397E8FF8194E6FF93A5
          EBFF9CA5E3FF464497C80000000C000000040000000100000000000000000000
          000000000001000000030F0F1C286B6EC5ECBDCAF2FFACBEF1FF9DAFEDFF9DAF
          EEFF9DAFEDFF9DAFEDFF9BAEEDFF9AADEDFF9AACEDFF99ABEDFF97AAEDFF96A9
          ECFF94A7ECFF91A5EBFF8FA3EAFF8CA0EAFF8A9EEAFF879BE9FF99ACEDFFB2C0
          EEFF5C5CBBED0C0C1A2D00000006000000020000000000000000000000000000
          00000000000000000001000000041D1D3646787BD5F9BFCBF2FFBCCCF5FFA1B4
          EFFFA1B3EFFFA1B3EFFFA0B3EEFF9FB1EFFF9EB1EFFF9DAFEEFF9BAEEEFF9AAD
          EEFF98ABEDFF95A9ECFF93A6ECFF90A4EBFF8EA1EAFFACBEF2FFB6C3EFFF696B
          CBFA1818324A0000000700000002000000000000000000000000000000000000
          0000000000000000000000000001000000041D1E36457074CBEEB0BAEEFFD0E0
          F9FFB5C6F3FFA5B7F0FFA5B7F0FFA3B6F0FFA3B5EFFFA1B4EFFF9FB2EFFF9EB0
          EEFF9CAEEEFF99ACEDFF97ABEDFFA6B9F0FFC7D8F7FFA8B1E9FF6466C4EE1A1A
          334A000000070000000200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000030E0F1A235E60AAC89196
          E4FFC4D0F4FFD7E7FBFFC7D7F7FFB8C8F4FFB3C4F3FFA6B8F0FFA4B7F0FFAFC0
          F2FFB1C2F2FFC0D1F6FFD2E3FAFFBFCCF2FF888EDEFF5556A6CA0D0D19280000
          0006000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000052728
          4656686CBCDA878CE1FFAAB2ECFFC4D1F4FFCAD6F6FFDDECFCFFDCECFCFFC8D5
          F5FFC1CEF3FFA5AEEAFF8085DEFF6163B7DA2526475B00000007000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000004161728323E3F6E825F61A9C56366B2CE797EDBFC787CDAFC6064
          B1CF5C5EA9C63A3D6D8415162734000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
          0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
          0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0001000000010000000200000005000000060000000600000006000000060000
          0006000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000060000000600000003000000010000000100000000000000000000
          0001000000040000000B00000013000000170000001800000019000000190000
          001900000019000000190000001A0000001A0000001A0000001A0000001A0000
          001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
          001C0000001B000000160000000E000000050000000100000000000000010000
          00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
          96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
          93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
          8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
          0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
          B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
          B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
          B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
          000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
          C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
          C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
          C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
          000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
          C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
          C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
          C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
          000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
          C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
          C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
          C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
          0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
          C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
          C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
          C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
          0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
          CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
          D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
          C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
          0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
          D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
          B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
          C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
          0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
          BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
          C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
          C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
          000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
          F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
          CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
          000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
          B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
          E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
          CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
          00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
          D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
          E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
          CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
          00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
          D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
          E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
          D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
          00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
          D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
          D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
          00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
          DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
          D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
          00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
          BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
          D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
          00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
          D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
          00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
          DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
          00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
          E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
          B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
          E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
          00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
          EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
          E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
          E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
          0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
          EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
          E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
          E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
          0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
          EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
          EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
          E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
          000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
          EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
          EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
          E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
          0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
          EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
          EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
          E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
          0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
          F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
          F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
          F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
          00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
          DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
          D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
          D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
          0000000000010000000200000004000000050000000600000006000000060000
          0006000000070000000700000007000000070000000700000007000000080000
          0008000000080000000800000008000000080000000800000009000000090000
          0009000000080000000700000004000000020000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000011111148363636E73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF383838EE1111114800000000000000000000000000000000000000000000
          00000000000000000000383838EC3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF383838EC00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
          0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
          0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00000000000000000000363636E73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF363636E700000000000000000000000000000000000000000000
          000000000000000000000F0F0F3F2F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF323232D60F0F0F3F00000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0F0F403C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
          0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0F0F403C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
          00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
          0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
          00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
          00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
          0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
          00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
          0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF333333D71111114700000000000000000000000000000000000000000000
          000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E5171717600000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
          1760000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111147292929AF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505141919
          196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
          34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C341E1E1E802D2D2DC0383838ED3838
          38ED2D2D2DC01E1E1E800C0C0C34000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018181867333333DA3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF333333DA181818670000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018181867393939F43C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F41818186700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C34333333DA3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333DA0C0C0C34000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00001E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00002D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000383838ED3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF383838ED000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000383838ED3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF383838ED000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C34333333DA3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333DA0C0C0C34000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018181867393939F43C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F41818186700000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018181867333333DA3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF333333DA181818670000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C341E1E1E802D2D2DC0383838ED3838
          38ED2D2D2DC01E1E1E800C0C0C34000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B0B0B3818181878232323AE2B2B2BD8313131F5313131F52B2B2BD82323
          23AE181818780B0B0B3800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0C0C3D1E1E
          1E98303030EF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF303030EF1E1E1E980C0C0C3D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001515156A2B2B2BD83333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF2B2B2BD81515156A00000000000000000000
          0000181818770000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000018181879323232F8333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF323232F800000002000000001A1A
          1A81323232F81515156A00000000000000000000000000000000000000000000
          00000000000000000000000000001515156A323232F8333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF1919197E000000001A1A1A813333
          33FF333333FF2B2B2BD80C0C0C3D000000000000000000000000000000000000
          000000000000000000000C0C0C3D2B2B2BD8333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF1919197E000000001A1A1A81333333FF3333
          33FF333333FF333333FF1E1E1E98000000000000000000000000000000000000
          000000000000000000001E1E1E98333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF1919197E000000001A1A1A81333333FF333333FF3333
          33FF333333FF333333FF303030EF0B0B0B380000000000000000000000000000
          0000000000000B0B0B38303030EF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF1919197E000000001A1A1A81333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF181818780000000000000000000000000000
          00000000000018181878333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF1919197E000000001A1A1A81333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF232323AE0000000000000000000000000000
          000000000000232323AE333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF1919
          197E000000001A1A1A81333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF2B2B2BD80000000000000000000000000000
          0000000000002B2B2BD8333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF1919197E0000
          00001A1A1A81333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF313131F50000000000000000000000000000
          000000000000313131F5333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF1919197E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000313131F5333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF313131F500000000000000000000000000000000000000000000
          0000000000002B2B2BD8333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF2B2B2BD800000000000000000000000000000000000000000000
          000000000000232323AE333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF232323AE00000000000000000000000000000000000000000000
          00000000000018181878333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF1818187800000000000000000000000000000000000000000000
          0000000000000B0B0B38303030EF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF303030EF0B0B0B3800000000000000000000000000000000000000000000
          000000000000000000001E1E1E98333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF1E1E1E980000000000000000000000000000000000000000000000000000
          000000000000000000000C0C0C3D2B2B2BD8333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF2B2B
          2BD80C0C0C3D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001515156A323232F8333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF323232F81515
          156A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000018181879323232F8333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF323232F8181818790000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001515156A2B2B2BD83333
          33FF333333FF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF333333FF333333FF2B2B2BD81515156A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0C0C3D1E1E
          1E98303030EF333333FF333333FF333333FF333333FF00000000333333FF3333
          33FF333333FF333333FF303030EF1E1E1E980C0C0C3D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B0B0B3818181878232323AE2B2B2BD8313131F500000000313131F52B2B
          2BD8232323AE181818780B0B0B38000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A0A0A341A1A1A80262626C02F2F2FED2F2F
          2FED262626C01A1A1A800A0A0A34000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000151515672B2B2BD5333333FF333333FF333333FF3333
          33FF333333FF333333FF2B2B2BD5151515670000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000015151567303030F1333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF303030F11515156700000000000000000000
          00000000000000000000000000000000000000000000050505190A0A0A300E0E
          0E44161616701F1F1F99252525BB2B2B2BD82F2F2FED323232FB323232FB2222
          22AC0C0C0C3C2B2B2BD5333333FF333333FF333333FF333333FF000000000000
          0000333333FF333333FF333333FF333333FF2B2B2BD50A0A0A34000000000000
          0000000000000000000000000000000000001010104E1919197D292929CD3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF1717
          17721A1A1A80333333FF333333FF333333FF333333FF333333FF000000000000
          0000333333FF333333FF333333FF333333FF333333FF1A1A1A80000000000000
          00000000000000000000000000001010104F2A2A2AD1333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0B0B
          0B38262626C0333333FF333333FF333333FF333333FF333333FF000000000000
          0000333333FF333333FF333333FF333333FF333333FF262626C0000000000000
          00000000000000000000000000002A2A2AD1333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0303
          030F2F2F2FED333333FF333333FF000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF2F2F2FED000000000000
          0000000000000000000000000000313131F3333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0303
          030F2F2F2FED333333FF333333FF000000000000000000000000000000000000
          0000000000000000000000000000333333FF333333FF2F2F2FED000000000000
          0000000000000000000000000000313131F7333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0B0B
          0B38262626C0333333FF333333FF333333FF333333FF333333FF000000000000
          0000333333FF333333FF333333FF333333FF333333FF262626C0000000000000
          0000000000000000000000000000313131F7333333FF333333FF313131F42626
          26C01D1D1D92151515680E0E0E45080808280404041201010104010101040202
          02081A1A1A80333333FF333333FF333333FF333333FF333333FF000000000000
          0000333333FF333333FF333333FF333333FF333333FF1A1A1A80000000000000
          0000000000000000000000000000313131F3292929CF1A1A1A810E0E0E440D0D
          0D42161616701F1F1F99252525BB2B2B2BD82F2F2FED323232FB323232FB2222
          22AC0C0C0C3C2B2B2BD5333333FF333333FF333333FF333333FF000000000000
          0000333333FF333333FF333333FF333333FF2B2B2BD50A0A0A34000000000000
          0000000000000000000000000000181818781010104E1919197D292929CD3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF1717177315151567303030F1333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF303030F11515156700000000000000000000
          00000000000000000000000000001010104F2A2A2AD1333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF2D2D2DDF1212125C151515672B2B2BD5333333FF333333FF333333FF3333
          33FF333333FF333333FF2B2B2BD5151515670000000000000000000000000000
          00000000000000000000000000002A2A2AD1333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF2D2D2DDF171717730C0C0C3E1A1A1A80262626C02F2F2FED2F2F
          2FED262626C01A1A1A800A0A0A34000000000000000000000000000000000000
          0000000000000000000000000000333333FE333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF252525B9171717720B0B0B380303030F0303
          030F0B0B0B380000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F7333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF313131F70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F7333333FF333333FF313131F42626
          26C01D1D1D92151515680E0E0E45080808280404041201010104010101040404
          0412080808280E0E0E45151515681D1D1D92262626C0313131F4333333FF3333
          33FF313131F70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F3292929CF1A1A1A810E0E0E440D0D
          0D42161616701F1F1F99252525BB2B2B2BD82F2F2FED323232FB323232FB2F2F
          2FED2B2B2BD8252525BB1F1F1F99161616700D0D0D420E0E0E441A1A1A812929
          29CF313131F30000000000000000000000000000000000000000000000000000
          0000000000000000000000000000181818781010104E1919197D292929CD3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF292929CD1919197D1010
          104E181818780000000000000000000000000000000000000000000000000000
          00000000000000000000000000001010104F2A2A2AD1333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF2A2A
          2AD11010104F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2AD1333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF2A2A2AD10000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F3333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF313131F30000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F7333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF313131F70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F7333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF313131F70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000313131F3333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF313131F30000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2AD1333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF2A2A2AD10000000000000000000000000000000000000000000000000000
          00000000000000000000000000001010104F2A2A2AD1333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF2A2A
          2AD11010104F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000909092C1919197D292929CD3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF292929CD1919197D0909
          092C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000303030F0D0D
          0D42161616701F1F1F99252525BB2B2B2BD82F2F2FED323232FB323232FB2F2F
          2FED2B2B2BD8252525BB1F1F1F99161616700D0D0D420303030F000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          00000000000000000000000000001E1E1E7E1E1E1E8100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000171717602B2B2BB83A3A3AF52B2B
          2BB8171717600000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF1E1E1E81000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001919196C3B3B3BFC3C3C3CFF3C3C3CFF3C3C
          3CFF3A3A3AF81717176000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF1E1E1E810000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000111111483B3B3BFC3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF2B2B2BB800000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E1E1E7E3C3C3CFF1E1E
          1E81000000000000000000000000000000000000000000000000000000000000
          0000000000000B0B0B2D393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3A3A3AF500000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001E1E1E7E3C3C
          3CFF1E1E1E810000000000000000000000000000000000000000000000000000
          000006060618353535E13C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF2B2B2BB800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E7E3C3C3CFF1E1E1E8100000000000000000000000000000000000000000303
          030C313131CF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3B3B3BFC1717176000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E7E3C3C3CFF1E1E1E81000000000000000000000000010101032B2B
          2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3B3B
          3BFC1919196C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF1E1E1E810000000000000000010101042C2C
          2CBB3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF61212
          124E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF2D2D2DC0323232D52C2C2CB90606
          061A222222903C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF363636E40B0B0B2D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF3C3C3CFF3636
          36E40B0B0B30181818663C3C3CFF3C3C3CFF313131D20606061B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000323232D53C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3A3A3AF61212124E0E0E0E3D292929AF0303030C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001282828AA3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3B3B3BFC1919196C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000303030C2424249A05050516353535E13C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF232323960101010300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101032B2B2BB73C3C3CFF242424970B0B0B2D393939F33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2A2A2AB10303030C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
          2BB72E2E2EC23C3C3CFF3C3C3CFF3C3C3CFF19191969111111483B3B3BFC3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF313131D20606061B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0C0C0C331919196C3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF363636E40B0B
          0B2D000000000000000000000000000000000000000000000000000000000000
          00000707071D292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2A2A2AB10303030C000000002323
          23933C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A
          3AF61212124E0000000000000000000000000000000000000000000000000000
          00001A1A1A703C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2E2E2EC40101010300000000000000000101
          01032B2B2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3B3B3BFC1919196C00000000000000000000000000000000000000000000
          00002B2B2BB73C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3636
          36E53C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB70000000000000000000000000000
          00000303030C313131CF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3B3B3BFC17171760000000000000000000000000000000000000
          0000373737EA363636E50F0F0F3F000000000000000000000000000000001E1E
          1E7F3C3C3CFF3C3C3CFF3C3C3CFF373737EA0000000000000000000000000000
          00000000000006060618353535E13C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2B2B2BB8000000000000000000000000000000000000
          0000313131D20F0F0F3F00000000000000000000000000000000000000000A0A
          0A2A3C3C3CFF3C3C3CFF3C3C3CFF373737EA0000000000000000000000000000
          000000000000000000000B0B0B2D393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3A3A3AF5000000000000000000000000000000000000
          00000B0B0B2D0000000000000000000000000000000000000000000000000A0A
          0A2A3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB70000000000000000000000000000
          0000000000000000000000000000111111483B3B3BFC3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2B2B2BB8000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E7F3C3C3CFF3C3C3CFF3C3C3CFF1A1A1A700000000000000000000000000000
          0000000000000000000000000000000000001919196C3B3B3BFC3C3C3CFF3C3C
          3CFF3C3C3CFF3A3A3AF817171760000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F0F0F3F3636
          36E53C3C3CFF3C3C3CFF292929B00707071D0000000000000000000000000000
          00000000000000000000000000000000000000000000171717602B2B2BB83A3A
          3AF52B2B2BB81717176000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0F0F3F363636E53C3C
          3CFF3C3C3CFF292929B00D0D0D39000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B0B0B2D313131D2373737EA2B2B
          2BB71A1A1A700707071D00000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000F0F0F4100000000000000001E1E1E7E3C3C3CFF000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00001E1E1E813C3C3CFF1E1E1E8100000000000000001E1E1E7E000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF24242499000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000024242499000000001E1E1E813C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F4000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E1E1E813C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000F0F
          0F41000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF0000000000000000000000000000000000000000000000001919196C3C3C
          3CFF1E1E1E81000000001E1E1E7E3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000323232D53C3C
          3CFF3C3C3CFF1E1E1E81000000000F0F0F3E0000000024242499000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF0000000000000000000000000000000000000000000000001E1E1E803C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F4000000000242424993C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF0000000000000000000000000000000000000000000000000606061A1E1E
          1E80323232D51919196900000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF24242499000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000024242499000000000F0F0F410000
          00000000000000000000000000000000000000000000000000000D0D0D382626
          26A0383838F01D1D1D7C010101060000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E1E1E813C3C3CFF1E1E
          1E81000000000000000000000000000000000000000000000000262626A03C3C
          3CFF3C3C3CFF3C3C3CFF0F0F0F3E0000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000000000000000000000383838F03C3C
          3CFF3C3C3CFF3C3C3CFF242424970000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E81000000000000000000000000050505163C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF242424980000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000000303030C3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF393939F30000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000010101063C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF393939F30000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E7E3C3C
          3CFF3C3C3CFF3C3C3CFF313131D10000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000001E1E
          1E7E3C3C3CFF3C3C3CFF262626A00000000000000000000000003C3C3CFF3C3C
          3CFF0000000000000000000000000000000000000000000000000F0F0F403C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000
          00002D2D2DBF3C3C3CFF171717630000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001717
          17613C3C3CFF2E2E2EC50707071C0000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000F0F0F413C3C
          3CFF3C3C3CFF18181865000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000F0F0F413C3C3CFF3C3C
          3CFF2020208900000001000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000F0F0F413C3C3CFF3C3C3CFF2020
          20890404041200000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E000000000F0F0F413C3C3CFF2E2E2EC5181818650000
          00010000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E000000000D0D0D36262626A0171717630707071C000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E1E1E7E3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000024242499000000000F0F0F3E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF24242499000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E00000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1C1C1C753C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1C1C
          1C750000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF00000000000000001C1C1C753C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1C1C1C7500000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00000000000014141454363636E6363636E61414145400000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000141414543636
          36E6363636E61414145400000000000000000000000000000000000000000000
          00000000000000000000171717602B2B2BB83A3A3AF52B2B2BB8171717600000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000171717603A3A3AF83C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF81717
          17600000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B
          2BB80000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003A3A3AF53C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A
          3AF50000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B
          2BB80000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000171717603A3A3AF83C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF81717
          17600000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000171717602B2B2BB83A3A3AF52B2B2BB8171717600000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000000000000011111148363636E73C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000363636E43C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000363636E73C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C
          3CFF363636E70000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F0F0F3F2F2F2FC93C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2F2F
          2FC90F0F0F3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000090909263C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF090909260000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000001A1A
          1A70353535E02323239400000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003535
          35E03C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000002323
          23943C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          0000000000000000000000000000262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF383838ED303030CD313131D03B3B
          3BF9313131D02121218E0E0E0E3C00000000262626A33C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF333333D71616165C090909282E2E2EC33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000383838ED3C3C3CFF3C3C3CFF2525259F111111470202
          020A111111472525259F3C3C3CFF333333D70E0E0E3C1B1B1B713C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000303030CD3C3C3CFF2525259F02020207000000000000
          000000000000020202072525259F3C3C3CFF2121218E0B0B0B2F3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000313131D03C3C3CFF1111114700000000000000000000
          00000000000000000000111111473C3C3CFF313131D0010101063C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000003B3B3BF93C3C3CFF0202020A00000000000000000000
          000000000000000000000202020A3C3C3CFF3B3B3BF9010101063C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          00000000000000000000313131D03C3C3CFF1111114700000000000000000000
          00000000000000000000111111473C3C3CFF313131D0010101063C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000002121218E3C3C3CFF2525259F02020207000000000000
          000000000000020202072525259F3C3C3CFF2121218E0B0B0B2F3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000000E0E0E3C333333D73C3C3CFF2525259F111111470202
          020A111111472525259F3C3C3CFF333333D70E0E0E3C1B1B1B713C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000000707071F1616165C333333D73C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF333333D71616165C090909282E2E2EC33C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000080808210E0E0E3C2121218E313131D03B3B
          3BF9313131D02121218E0E0E0E3C00000000262626A33C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000011111148363636E73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF363636E7111111480000000000000000000000000000
          0000363636E43C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF363636E40000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF00000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF00000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000363636E73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF363636E70000000000000000000000000000
          00000F0F0F3F2F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF2F2F2FC90F0F0F3F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C321E1E1E802D2D2DC0383838ED3838
          38ED2D2D2DC01E1E1E800C0C0C32000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018181867323232D53C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D5181818670000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018181867393939F13C3C3CFF3C3C3CFF343434DE000000010202
          020A3C3C3CFF3C3C3CFF3C3C3CFF393939F11818186700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C32323232D53C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0000000010202
          020A3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D50C0C0C32000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0000000000D0D
          0D383C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0404
          040F383838ED3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000010101
          01052D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838ED000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0404
          040F383838ED3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1616165C0000
          000001010105343434DE3C3C3CFF3C3C3CFF3C3C3CFF383838ED000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0D0D
          0D3800000000111111493C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0111111483636
          36E73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E803C3C3CFF3C3C3CFF3C3C3CFF262626A3111111493C3C3CFF0D0D
          0D3800000000111111493C3C3CFF3C3C3CFF3C3C3CFF1E1E1E80363636E43C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00000C0C0C32323232D53C3C3CFF3C3C3CFF343434DE0202020A000000000000
          0000040404123C3C3CFF3C3C3CFF3C3C3CFF323232D50C0C0C323C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018181867393939F13C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F118181867000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000018181867323232D53C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF323232D51818186700000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C321E1E1E802D2D2DC0383838ED3838
          38ED2D2D2DC01E1E1E800C0C0C320000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000363636E73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF363636E7000000000000000000000000000000000F0F0F3F2F2F
          2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2F2F2FC90F0F0F3F00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000505051517171763272727A7343434DC3B3B3BFB3434
          34DC272727A71717176105050515000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010101043292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF292929B00F0F0F410000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000101010432F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC90F0F0F4100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000505
          0515292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929B005050515000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001717
          17633C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF17171763000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002727
          27A73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF272727A7000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0707071F3434
          34DC3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DC000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF010101033B3B
          3BFB3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3B3B3BFB000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0707071F3434
          34DC3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF343434DC000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1313134F2727
          27A73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF272727A7000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D1717
          17633C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF17171763000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71010
          1042292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929B005050515000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2424
          2497101010442F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC91010104300000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1F1F1F8210101044292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF292929B0101010430000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF242424971010104217171763272727A7343434DC3B3B3BFB3434
          34DC272727A71717176305050515000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF333333D72121218D1313134F0707071F010101030707
          071F1313134F2121218D00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000080808201E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E8000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000080808201E1E1E801E1E
          1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E8000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000080808201E1E
          1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E8000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000808
          08201E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
          1E801E1E1E800808082000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
