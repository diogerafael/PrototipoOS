﻿inherited frmCadastrarProjetoRural: TfrmCadastrarProjetoRural
  Left = 207
  Top = 0
  Caption = 'Projeto Rural'
  ClientHeight = 688
  ClientWidth = 1008
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 1024
  ExplicitHeight = 727
  PixelsPerInch = 96
  TextHeight = 13
  object lblDedoDuro: TLabel [0]
    Left = 6
    Top = 670
    Width = 3
    Height = 13
  end
  inherited Panel1: TPanel
    Width = 1008
    ExplicitWidth = 1008
    inherited sbrelatorios: TPngSpeedButton
      OnClick = sbrelatoriosClick
    end
    inherited sbsair: TPngSpeedButton
      Left = 902
      Top = -2
      ExplicitLeft = 902
      ExplicitTop = -2
    end
    inherited sbexcluir: TPngSpeedButton
      OnClick = sbexcluirClick
    end
    inherited SpeedButton1: TPngSpeedButton
      OnClick = SpeedButton1Click
    end
    inherited sbconsultar: TPngSpeedButton
      OnClick = sbconsultarClick
    end
    inherited sbgravar: TPngSpeedButton
      Top = -2
      OnClick = sbgravarClick
      ExplicitTop = -2
    end
    inherited sbnovo: TPngSpeedButton
      OnClick = sbnovoClick
    end
    inherited btnopcoes: TPngSpeedButton
      OnClick = btnopcoesClick
    end
  end
  object grp1: TGroupBox [2]
    Left = -2
    Top = 69
    Width = 1002
    Height = 269
    Align = alCustom
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbl1: TLabel
      Left = 661
      Top = 152
      Width = 35
      Height = 14
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 6
      Top = 14
      Width = 16
      Height = 14
      Caption = 'OS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 6
      Top = 39
      Width = 26
      Height = 14
      Caption = 'Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 244
      Top = 197
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
    object lbl9: TLabel
      Left = 244
      Top = 221
      Width = 21
      Height = 14
      Caption = 'CRS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl13: TLabel
      Left = 431
      Top = 246
      Width = 49
      Height = 14
      Caption = 'Dt Limite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl14: TLabel
      Left = 838
      Top = 13
      Width = 50
      Height = 14
      Caption = 'Sol. Top.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl32: TLabel
      Left = 661
      Top = 170
      Width = 37
      Height = 13
      Caption = 'Arquivo'
    end
    object lbl2: TLabel
      Left = 244
      Top = 153
      Width = 75
      Height = 14
      Caption = 'Endere'#231'o Urb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl11: TLabel
      Left = 244
      Top = 248
      Width = 47
      Height = 14
      Caption = 'Chegada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblProrrogação: TLabel
      Left = 661
      Top = 14
      Width = 65
      Height = 14
      Caption = 'Prorroga'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblprazogeral: TLabel
      Left = 648
      Top = 248
      Width = 29
      Height = 14
      Caption = 'Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 244
      Top = 175
      Width = 65
      Height = 14
      Caption = 'Propriedade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 431
      Top = 218
      Width = 79
      Height = 14
      Caption = 'Universaliza'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl20: TLabel
      Left = 37
      Top = 14
      Width = 9
      Height = 13
      Caption = '* '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 37
      Top = 41
      Width = 9
      Height = 13
      Caption = '* '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl22: TLabel
      Left = 300
      Top = 192
      Width = 9
      Height = 13
      Caption = '* '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl23: TLabel
      Left = 299
      Top = 216
      Width = 9
      Height = 13
      Caption = '* '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl27: TLabel
      Left = 299
      Top = 242
      Width = 9
      Height = 13
      Caption = '* '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl31: TLabel
      Left = 661
      Top = 66
      Width = 54
      Height = 14
      Caption = 'Conclus'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl37: TLabel
      Left = 838
      Top = 39
      Width = 51
      Height = 14
      Caption = 'Devolvida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 244
      Top = 133
      Width = 50
      Height = 14
      Hint = 'Solicitante Atendido'
      Caption = 'Atendido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object lbl6: TLabel
      Left = 244
      Top = 14
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
    object lbl16: TLabel
      Left = 304
      Top = 14
      Width = 9
      Height = 13
      Caption = '* '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 661
      Top = 40
      Width = 62
      Height = 14
      Caption = 'Dt.Lib.Top.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 7
      Top = 197
      Width = 78
      Height = 16
      Caption = 'Vincula'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object shp5: TShape
      Left = 8
      Top = 221
      Width = 14
      Height = 8
      Hint = 'Cores para informar o status do lan'#231'amento'
      Brush.Color = clBlack
      ParentShowHint = False
      ShowHint = True
    end
    object lblapagar: TLabel
      Left = 26
      Top = 219
      Width = 34
      Height = 12
      Cursor = crHandPoint
      Hint = 
        'Cores para informar o status do lan'#231'amento ao clicar realizar um' +
        'a consulta ignorando o per'#237'odo buscando todas do status selecion' +
        'ado'
      Caption = 'N. Vin.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object shp2: TShape
      Left = 69
      Top = 221
      Width = 14
      Height = 8
      Hint = 'Cores para informar o status do lan'#231'amento'
      Brush.Color = clBlue
      ParentShowHint = False
      Pen.Color = clBlue
      ShowHint = True
    end
    object lbljapagas: TLabel
      Left = 87
      Top = 219
      Width = 36
      Height = 12
      Cursor = crHandPoint
      Hint = 
        'Cores para informar o status do lan'#231'amento ao clicar realizar um' +
        'a consulta ignorando o per'#237'odo buscando todas do status selecion' +
        'ado'
      Caption = 'Vin Pai'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object shp4: TShape
      Left = 130
      Top = 221
      Width = 14
      Height = 8
      Hint = 'Cores para informar o status do lan'#231'amento'
      Brush.Color = clGreen
      ParentShowHint = False
      Pen.Color = clGreen
      ShowHint = True
    end
    object lblvencehoje: TLabel
      Left = 153
      Top = 219
      Width = 47
      Height = 12
      Cursor = crHandPoint
      Hint = 
        'Cores para informar o status do lan'#231'amento ao clicar realizar um' +
        'a consulta ignorando o per'#237'odo buscando todas do status selecion' +
        'ado'
      Caption = 'Vin. Filho'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object grp6: TGroupBox
      Left = 6
      Top = 57
      Width = 233
      Height = 134
      Caption = 'Notas Inseridas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      object edtidnota: TEdit
        Left = 16
        Top = 42
        Width = 37
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
    end
    object edtnumos: TEdit
      Left = 69
      Top = 12
      Width = 170
      Height = 19
      Hint = 'Inserir N'#250'mero da OS'
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
      TabOrder = 0
      OnExit = edtnumosExit
    end
    object edtnumnota: TEdit
      Left = 69
      Top = 41
      Width = 142
      Height = 19
      Hint = 'Inserir N'#250'mero de Nota'
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
      TabOrder = 1
    end
    object edtdescmunicipio: TEdit
      Left = 397
      Top = 194
      Width = 244
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
    end
    object edtcodmunicipio: TEdit
      Left = 320
      Top = 194
      Width = 71
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnKeyPress = edtcodmunicipioKeyPress
    end
    object edtdtsolicitacaoTopografia: TcxDateEdit
      Left = 900
      Top = 11
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
      TabOrder = 15
      OnExit = edtdtsolicitacaoTopografiaExit
      Width = 100
    end
    object edtdiretorio: TEdit
      Left = 661
      Top = 183
      Width = 291
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 27
    end
    object edtdiretorioarquivo: TPngBitBtn
      Left = 960
      Top = 181
      Width = 24
      Height = 21
      Hint = 'Abrir tabela IBPT'
      TabOrder = 21
      OnClick = edtdiretorioarquivoClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000002284944415478DAA593CB6B135114C6BF7B672681C61AB5694552EA2A
        D80A3541AB1B6D95FA405CE8C2852045AD5514A9FF81CB6E4450901A936EAA0B
        97811645743615170AA2B5D30A2D71E113BAA9D8A698944CE61ECFCD4C1FB4B8
        905C188639F7BBBF73CE77CF0822422D4BD40C98CC1C1D5195F219529E1F9006
        84614E0921F7F0D73A75101102CB7B6262B09392D78701B7E28B0C03E383E735
        8475627D3E4E2021CDD00C276AAB463EDE3F48A9AB4328E7EF8048C08A9F858C
        2400191CD69065907E99269CF4051866B883E31F7CC0957B287F19D6E9F9D19E
        A8AA5630843C85D26231289D108A9FC3CCE86D145D79A33E127EC8804394EA1D
        4065769405862E7225B3625FF2AF1D94E617AB60A1E10C91DC9E342DDDCA1C03
        3A2975F916036C941696FCBEFD74F8369E47634B144D5D035C94175447FEBE15
        8293E9D3267651B2E726A67359FCF95D58F58BFDD8B92F81ADF1066EC3657F14
        C77C8051D78CB26CC59B27776D31F1E00825BA4FE1C73B1BBB7AB280E7056E19
        F0BEA7A148AE1CF4C10A563489D9E9CF783EF2ECA270D2DDB4BDB5AD2ADCB1FF
        34D49CCD52195CBA3655AEB946F64170FF5BDAF129F708ED7D4FA37A9028BC79
        139A3B0EA32E160395BEAE1EDA30070CB0B6A1F8AB88B7B9DCCBA658E4A498CC
        1E23E5BA485EEB0796E6D9AC12364CE0DA156EC0CF5763B05FBCBF746077E363
        E1648E17F8C2EA55C5E3F654D0E9BF01BA281272616FFF58CBD4D0898256A682
        09FA9FA5E7DEF167ABC6BFF12FE39ACEFBE55870880000000049454E44AE4260
        82}
    end
    object edtendereco: TEdit
      Left = 320
      Top = 150
      Width = 321
      Height = 19
      CharCase = ecUpperCase
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
    object edtdtchegadageral: TcxDateEdit
      Left = 320
      Top = 242
      ParentFont = False
      Properties.DateOnError = deNull
      Properties.MinDate = 36526.000000000000000000
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
      TabOrder = 12
      OnExit = edtdtchegadageralExit
      Width = 109
    end
    object edtdtprorrogacao: TcxDateEdit
      Left = 727
      Top = 10
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
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
      TabOrder = 14
      Width = 89
    end
    object cbbcrs: TComboBox
      Left = 320
      Top = 217
      Width = 109
      Height = 21
      TabOrder = 10
    end
    object cbbstatus: TComboBox
      Left = 710
      Top = 148
      Width = 272
      Height = 21
      TabOrder = 20
    end
    object dbgrid_notas_rural: TDBGrid
      Left = 70
      Top = 69
      Width = 168
      Height = 114
      TabStop = False
      DataSource = dsnota_rural
      PopupMenu = pm1
      TabOrder = 26
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Nota'
          Width = 127
          Visible = True
        end>
    end
    object btn1: TcxButton
      Left = 213
      Top = 38
      Width = 26
      Height = 25
      OptionsImage.Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D613CE641663FF241663FF24166
        3FF241663FF23D613CE600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF228B72DFF05AE15FF1EC72EFF41E553FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF227B22CFF0AAA1AFF24C433FF47E357FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041663FF228B7
        2DFF0DAE1DFF27C736FF4BE75AFF41663FF20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000041663FF228B52CFF0BAC1BFF25C5
        34FF49E558FF41663FF200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF227B02BFF06A515FF1EBE2DFF40DE51FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF229A92CFF02990FFF12B421FF33D243FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000003D61
        3CE641663FF241663FF241663FF241663FF241663FF241663FF241663FF2279D
        2AFF008309FF02A410FF28C338FF41663FF241663FF241663FF241663FF24166
        3FF241663FF241663FF23D613CE6000000000000000041663FF204970EFF0598
        11FF04A712FF05B316FF07B817FF06B816FF0AB415FF098E13FF0A7814FF1B99
        26FF39B944FF5ECE66FF6AD971FF70DE79FF77E07DFF77DF7FFF76DB7EFF78DC
        7EFF41663FF2000000000000000041663FF2007A0AFF01930FFF08A817FF12B5
        22FF18BA27FF1AB928FF1CB42AFF24AC31FF2E9C39FF35923FFF3AA244FF40B5
        4BFF4AC055FF53C65EFF5ACA63FF5DCA67FF5DC667FF62C76BFF41663FF20000
        00000000000041663FF200940AFF0BB01AFF21C331FF36D345FF49DB56FF53DD
        60FF54D661FF4ACA56FF3EBB4AFF3CA146FF419248FF449D4DFF4AAA53FF4EB1
        57FF52B45CFF57B560FF5BB164FF65B36DFF41663FF200000000000000004166
        3FF239DD48FF55EE63FF71FD7EFF94FF9EFFA1FFABFFA2FFACFF83FF8EFF6CF0
        78FF52CB5DFF46B651FF5BB864FF69B771FF6FC077FF7CC884FF83CC8BFF88CD
        8EFF8BCC92FF93D49BFF41663FF200000000000000003D613CE641663FF24166
        3FF241663FF241663FF241663FF241663FF241663FF285FD8FFF63D76FFF52C2
        5DFF6DCF74FF41663FF241663FF241663FF241663FF241663FF241663FF24166
        3FF23D613CE60000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF299FFA0FF71DF7BFF5DC968FF75D87DFF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF29AFFA2FF77DF81FF66CC6FFF7CD983FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041663FF293FE
        9BFF77DB80FF69CA72FF83D688FF41663FF20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000041663FF28FF697FF74D47CFF6DC2
        74FF8CD190FF41663FF200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF289EC90FF71CA7AFF72B779FF91D096FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF28BE190FF84D18CFF89C98EFF9AD69EFF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003D613CE64166
        3FF241663FF241663FF241663FF23D613CE60000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      TabOrder = 2
      OnClick = btn1Click
    end
    object edtdtlimitegeral: TcxDateEdit
      Left = 511
      Top = 242
      ParentFont = False
      Properties.DateOnError = deNull
      Properties.ReadOnly = True
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
      TabOrder = 13
      Width = 100
    end
    object edtpngbtbtn1: TPngBitBtn
      Left = 816
      Top = 7
      Width = 24
      Height = 21
      Hint = 'Abrir tabela IBPT'
      TabOrder = 3
      OnClick = edtpngbtbtn1Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000002284944415478DAA593CB6B135114C6BF7B672681C61AB5694552EA2A
        D80A3541AB1B6D95FA405CE8C2852045AD5514A9FF81CB6E4450901A936EAA0B
        97811645743615170AA2B5D30A2D71E113BAA9D8A698944CE61ECFCD4C1FB4B8
        905C188639F7BBBF73CE77CF0822422D4BD40C98CC1C1D5195F219529E1F9006
        84614E0921F7F0D73A75101102CB7B6262B09392D78701B7E28B0C03E383E735
        8475627D3E4E2021CDD00C276AAB463EDE3F48A9AB4328E7EF8048C08A9F858C
        2400191CD69065907E99269CF4051866B883E31F7CC0957B287F19D6E9F9D19E
        A8AA5630843C85D26231289D108A9FC3CCE86D145D79A33E127EC8804394EA1D
        4065769405862E7225B3625FF2AF1D94E617AB60A1E10C91DC9E342DDDCA1C03
        3A2975F916036C941696FCBEFD74F8369E47634B144D5D035C94175447FEBE15
        8293E9D3267651B2E726A67359FCF95D58F58BFDD8B92F81ADF1066EC3657F14
        C77C8051D78CB26CC59B27776D31F1E00825BA4FE1C73B1BBB7AB280E7056E19
        F0BEA7A148AE1CF4C10A563489D9E9CF783EF2ECA270D2DDB4BDB5AD2ADCB1FF
        34D49CCD52195CBA3655AEB946F64170FF5BDAF129F708ED7D4FA37A9028BC79
        139A3B0EA32E160395BEAE1EDA30070CB0B6A1F8AB88B7B9DCCBA658E4A498CC
        1E23E5BA485EEB0796E6D9AC12364CE0DA156EC0CF5763B05FBCBF746077E363
        E1648E17F8C2EA55C5E3F654D0E9BF01BA281272616FFF58CBD4D0898256A682
        09FA9FA5E7DEF167ABC6BFF12FE39ACEFBE55870880000000049454E44AE4260
        82}
    end
    object edtEnderecoRural: TEdit
      Left = 320
      Top = 172
      Width = 321
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object GroupBox1: TGroupBox
      Left = 661
      Top = 86
      Width = 339
      Height = 57
      Caption = 'Documenta'#231#227'o'
      TabOrder = 19
      object chkPassagem: TCheckBox
        Left = 16
        Top = 12
        Width = 153
        Height = 17
        Caption = 'Autoriza'#231#227'o de Passagem'
        TabOrder = 0
      end
      object chkTerra: TCheckBox
        Left = 16
        Top = 33
        Width = 145
        Height = 17
        Caption = 'Documento da Terra'
        TabOrder = 2
      end
      object chkRural: TCheckBox
        Left = 173
        Top = 14
        Width = 166
        Height = 17
        Caption = 'Carta de Classifica'#231#227'o Rural'
        TabOrder = 1
      end
      object chkDocumentosPessoais: TCheckBox
        Left = 173
        Top = 35
        Width = 166
        Height = 17
        Caption = 'Documentos Pessoais'
        TabOrder = 3
      end
    end
    object rgimprocedente: TRadioGroup
      Left = 779
      Top = 211
      Width = 218
      Height = 31
      Caption = 'Situa'#231#227'o'
      Columns = 3
      Items.Strings = (
        'Improc'
        'Projeto'
        'Sol.Top.')
      TabOrder = 23
      TabStop = True
      OnClick = rgimprocedenteClick
      OnExit = rgimprocedenteExit
    end
    object edtdtconclusao: TcxDateEdit
      Left = 727
      Top = 62
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
      TabOrder = 18
      OnExit = edtdtconclusaoExit
      Width = 100
    end
    object grp3: TGroupBox
      Left = 661
      Top = 207
      Width = 98
      Height = 36
      Caption = 'Dias Topografia'
      TabOrder = 22
      TabStop = True
      object edtDiasTopografia: TEdit
        Left = 8
        Top = 12
        Width = 71
        Height = 21
        NumbersOnly = True
        TabOrder = 0
      end
    end
    object edtUniversalizaca: TEdit
      Left = 511
      Top = 217
      Width = 101
      Height = 21
      TabOrder = 11
    end
    object edtdtDevolvida: TcxDateEdit
      Left = 900
      Top = 37
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
      TabOrder = 17
      OnExit = edtdtDevolvidaExit
      Width = 100
    end
    object edtAtendido: TEdit
      Left = 320
      Top = 128
      Width = 321
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object dbgrdUser: TDBGrid
      Left = 245
      Top = 34
      Width = 396
      Height = 88
      TabStop = False
      DataSource = dsSolicitante
      PopupMenu = pmSolicitante
      TabOrder = 24
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Nome'
          Width = 161
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Caption = 'Cpf'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Title.Caption = 'Telefone'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end>
    end
    object btnSolicitante: TcxButton
      Left = 319
      Top = 5
      Width = 26
      Height = 25
      OptionsImage.Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D613CE641663FF241663FF24166
        3FF241663FF23D613CE600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF228B72DFF05AE15FF1EC72EFF41E553FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF227B22CFF0AAA1AFF24C433FF47E357FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041663FF228B7
        2DFF0DAE1DFF27C736FF4BE75AFF41663FF20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000041663FF228B52CFF0BAC1BFF25C5
        34FF49E558FF41663FF200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF227B02BFF06A515FF1EBE2DFF40DE51FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF229A92CFF02990FFF12B421FF33D243FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000003D61
        3CE641663FF241663FF241663FF241663FF241663FF241663FF241663FF2279D
        2AFF008309FF02A410FF28C338FF41663FF241663FF241663FF241663FF24166
        3FF241663FF241663FF23D613CE6000000000000000041663FF204970EFF0598
        11FF04A712FF05B316FF07B817FF06B816FF0AB415FF098E13FF0A7814FF1B99
        26FF39B944FF5ECE66FF6AD971FF70DE79FF77E07DFF77DF7FFF76DB7EFF78DC
        7EFF41663FF2000000000000000041663FF2007A0AFF01930FFF08A817FF12B5
        22FF18BA27FF1AB928FF1CB42AFF24AC31FF2E9C39FF35923FFF3AA244FF40B5
        4BFF4AC055FF53C65EFF5ACA63FF5DCA67FF5DC667FF62C76BFF41663FF20000
        00000000000041663FF200940AFF0BB01AFF21C331FF36D345FF49DB56FF53DD
        60FF54D661FF4ACA56FF3EBB4AFF3CA146FF419248FF449D4DFF4AAA53FF4EB1
        57FF52B45CFF57B560FF5BB164FF65B36DFF41663FF200000000000000004166
        3FF239DD48FF55EE63FF71FD7EFF94FF9EFFA1FFABFFA2FFACFF83FF8EFF6CF0
        78FF52CB5DFF46B651FF5BB864FF69B771FF6FC077FF7CC884FF83CC8BFF88CD
        8EFF8BCC92FF93D49BFF41663FF200000000000000003D613CE641663FF24166
        3FF241663FF241663FF241663FF241663FF241663FF285FD8FFF63D76FFF52C2
        5DFF6DCF74FF41663FF241663FF241663FF241663FF241663FF241663FF24166
        3FF23D613CE60000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF299FFA0FF71DF7BFF5DC968FF75D87DFF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF29AFFA2FF77DF81FF66CC6FFF7CD983FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041663FF293FE
        9BFF77DB80FF69CA72FF83D688FF41663FF20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000041663FF28FF697FF74D47CFF6DC2
        74FF8CD190FF41663FF200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF289EC90FF71CA7AFF72B779FF91D096FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF28BE190FF84D18CFF89C98EFF9AD69EFF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003D613CE64166
        3FF241663FF241663FF241663FF23D613CE60000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      TabOrder = 4
      OnClick = btnSolicitanteClick
    end
    object rgAtvPassivo: TRadioGroup
      Left = 6
      Top = 235
      Width = 166
      Height = 30
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Passivo')
      TabOrder = 29
      OnClick = rgAtvPassivoClick
      OnExit = rgAtvPassivoExit
    end
    object dtLibTop: TcxDateEdit
      Left = 727
      Top = 36
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
      TabOrder = 16
      OnExit = dtLibTopExit
      Width = 100
    end
    object btVinculacao: TcxButton
      Left = 212
      Top = 190
      Width = 26
      Height = 25
      OptionsImage.Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003D613CE641663FF241663FF24166
        3FF241663FF23D613CE600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF228B72DFF05AE15FF1EC72EFF41E553FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF227B22CFF0AAA1AFF24C433FF47E357FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041663FF228B7
        2DFF0DAE1DFF27C736FF4BE75AFF41663FF20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000041663FF228B52CFF0BAC1BFF25C5
        34FF49E558FF41663FF200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF227B02BFF06A515FF1EBE2DFF40DE51FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF229A92CFF02990FFF12B421FF33D243FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000003D61
        3CE641663FF241663FF241663FF241663FF241663FF241663FF241663FF2279D
        2AFF008309FF02A410FF28C338FF41663FF241663FF241663FF241663FF24166
        3FF241663FF241663FF23D613CE6000000000000000041663FF204970EFF0598
        11FF04A712FF05B316FF07B817FF06B816FF0AB415FF098E13FF0A7814FF1B99
        26FF39B944FF5ECE66FF6AD971FF70DE79FF77E07DFF77DF7FFF76DB7EFF78DC
        7EFF41663FF2000000000000000041663FF2007A0AFF01930FFF08A817FF12B5
        22FF18BA27FF1AB928FF1CB42AFF24AC31FF2E9C39FF35923FFF3AA244FF40B5
        4BFF4AC055FF53C65EFF5ACA63FF5DCA67FF5DC667FF62C76BFF41663FF20000
        00000000000041663FF200940AFF0BB01AFF21C331FF36D345FF49DB56FF53DD
        60FF54D661FF4ACA56FF3EBB4AFF3CA146FF419248FF449D4DFF4AAA53FF4EB1
        57FF52B45CFF57B560FF5BB164FF65B36DFF41663FF200000000000000004166
        3FF239DD48FF55EE63FF71FD7EFF94FF9EFFA1FFABFFA2FFACFF83FF8EFF6CF0
        78FF52CB5DFF46B651FF5BB864FF69B771FF6FC077FF7CC884FF83CC8BFF88CD
        8EFF8BCC92FF93D49BFF41663FF200000000000000003D613CE641663FF24166
        3FF241663FF241663FF241663FF241663FF241663FF285FD8FFF63D76FFF52C2
        5DFF6DCF74FF41663FF241663FF241663FF241663FF241663FF241663FF24166
        3FF23D613CE60000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF299FFA0FF71DF7BFF5DC968FF75D87DFF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF29AFFA2FF77DF81FF66CC6FFF7CD983FF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000041663FF293FE
        9BFF77DB80FF69CA72FF83D688FF41663FF20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000041663FF28FF697FF74D47CFF6DC2
        74FF8CD190FF41663FF200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000041663FF289EC90FF71CA7AFF72B779FF91D096FF4166
        3FF2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000041663FF28BE190FF84D18CFF89C98EFF9AD69EFF41663FF2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003D613CE64166
        3FF241663FF241663FF241663FF23D613CE60000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      TabOrder = 28
      OnClick = btVinculacaoClick
    end
    object edtVinculacao: TEdit
      Left = 87
      Top = 195
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      PopupMenu = PopupMenu3
      TabOrder = 30
      TextHint = 'Informar N'#186' OS'
      OnKeyPress = edtVinculacaoKeyPress
    end
  end
  object grpCampo: TGroupBox [3]
    Left = -3
    Top = 340
    Width = 464
    Height = 123
    Caption = 'Servi'#231'o de Campo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lbl17: TLabel
      Left = 8
      Top = 20
      Width = 66
      Height = 14
      Caption = 'T'#233'c. Campo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl18: TLabel
      Left = 8
      Top = 44
      Width = 51
      Height = 14
      Caption = 'Libera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl19: TLabel
      Left = 8
      Top = 69
      Width = 47
      Height = 14
      Caption = 'Chegada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblprazoservico: TLabel
      Left = 5
      Top = 94
      Width = 29
      Height = 14
      Caption = 'Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn2: TPngSpeedButton
      Left = 211
      Top = 70
      Width = 24
      Height = 22
      Hint = 'Inserir Revis'#227'o Levantamento'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btn2Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
        3B000000097048597300000B1300000B1301009A9C1800000A4F694343505068
        6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
        DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
        114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
        7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
        11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
        07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
        801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
        7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
        450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
        305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
        99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
        99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
        BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
        EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
        E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
        814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
        582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
        00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
        6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
        44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
        801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
        3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
        21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
        46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
        74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
        6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
        128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
        51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
        37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
        DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
        E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
        B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
        DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
        197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
        0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
        E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
        C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
        D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
        744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
        AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
        53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
        4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
        35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
        8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
        4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
        6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
        A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
        67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
        DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
        1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
        9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
        D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
        EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
        7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
        F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
        0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
        D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
        C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
        17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
        8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
        91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
        31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
        C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
        2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
        B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
        6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
        1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
        66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
        CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
        61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
        FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
        D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
        F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
        625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
        F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
        E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
        9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
        DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
        D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
        058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
        AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
        1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
        D0A7FB93199393FF040398F3FC63332DDB0000025F4944415478DAB5D5DF4B53
        611807F0EF79CFCF9DED719B73D3FD68D3A951D0557F401021423FAF0CBA89FE
        80AEBAE83E100922029D443F2E8522BAA96EA48C0A0ABC90BA0A53715BCE8D79
        96FBE5E6365C9E5E07090AA9E4F179E0BC70387CDEE77D9F078E609A268E2284
        FDE0733707327C71EC7A5D791F7B17382C5CBE7C7B909AC506585D868BDC9818
        7FB1C6E1B6C3C37706C8886761AE0A38E68FE0E59337D6C043F72E503A9E463D
        DF40C819C1EBC793D6C0D7C6AE507A7119E542193E47006FC73F5903DF885DA5
        447211F9D5023AC8870FA3D3D6C0D76343B490FC8155E317BCCE2E7C19FB7630
        F81F23B51D9746CF52723E8E7CAE804E0AE2EBD3D9B53DCCD628FE85CBCAAD2A
        05DD21049D2174B35E104F81E7127EC228AD20BD9041255781877941661B149B
        02D208AAA442146448A6089BA6E1D9C357ADD36CC3D327A7C815B2A3D3E34387
        CB0BB7E681CE74080D01D5CA3A2AA50A9A994DB0920CD92E422105922A411625
        485B7053828D7FFF7D32B10B764E91EC17A07955D849872C2BFC9E18D806835A
        D7A0157528EB2A64970CD5A340B7EBB02936C8BC620922D0446B83D989A59DF0
        CCA98F240AFCF04E139283AF3283B995BC92CD79138221A0BDC78D707718516F
        3FEC760734BEB9C45430DE7FB3C91F02C3E707333BE03D9B973D9DA244660E6A
        0FC389C871E8CF43076BDE7EE3669C4953AA3887F6A00BD1700FCC476E6BE678
        6520454635812E7F17FABAA328DD97AC818DF3CB54A8A5E0F70738DC076364C3
        1A387771998AB5F4369C1D6E5854F1608AF2755E7180C3915EE4EEFEB6AEE26C
        6D9157EC477FB8178511D112F8687E4DFF1B7F0031A455E40888C4DE00000000
        49454E44AE426082}
    end
    object edtdtliberacaotec: TcxDateEdit
      Left = 77
      Top = 42
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
      TabOrder = 3
      OnExit = edtdtliberacaotecExit
      Width = 134
    end
    object edtdtchegada: TcxDateEdit
      Left = 77
      Top = 70
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
      TabOrder = 4
      OnExit = edtdtchegadaExit
      Width = 134
    end
    object edtcodtecnico: TEdit
      Left = 77
      Top = 16
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
      OnKeyPress = edtcodtecnicoKeyPress
    end
    object edtdesctecnico: TEdit
      Left = 103
      Top = 16
      Width = 133
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
    object gridLevantamento: TDBGrid
      Left = 239
      Top = 14
      Width = 219
      Height = 80
      TabStop = False
      DataSource = dsLevantamento
      PopupMenu = pm2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'dt_inicio'
          Title.Caption = 'Inicio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim'
          Title.Caption = 'Fim'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Projetista'
          Visible = True
        end>
    end
  end
  object grpAtualizacao: TGroupBox [4]
    Left = 0
    Top = 464
    Width = 461
    Height = 121
    Caption = 'Topografia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object lbl28: TLabel
      Left = 5
      Top = 66
      Width = 44
      Height = 14
      Caption = 'Retorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl29: TLabel
      Left = 5
      Top = 41
      Width = 29
      Height = 14
      Caption = 'Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl30: TLabel
      Left = 5
      Top = 17
      Width = 57
      Height = 14
      Caption = 'Topografo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblprazomub: TLabel
      Left = 5
      Top = 92
      Width = 29
      Height = 14
      Caption = 'Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn3: TPngSpeedButton
      Left = 211
      Top = 66
      Width = 24
      Height = 22
      Hint = 'Inserir Revis'#227'o Topografia'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btn3Click
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
        3B000000097048597300000B1300000B1301009A9C1800000A4F694343505068
        6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
        DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
        114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
        7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
        11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
        07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
        801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
        7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
        450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
        305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
        99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
        99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
        BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
        EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
        E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
        814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
        582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
        00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
        6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
        44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
        801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
        3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
        21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
        46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
        74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
        6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
        128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
        51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
        37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
        DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
        E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
        B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
        DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
        197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
        0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
        E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
        C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
        D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
        744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
        AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
        53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
        4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
        35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
        8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
        4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
        6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
        A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
        67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
        DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
        1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
        9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
        D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
        EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
        7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
        F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
        0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
        D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
        C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
        17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
        8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
        91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
        31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
        C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
        2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
        B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
        6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
        1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
        66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
        CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
        61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
        FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
        D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
        F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
        625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
        F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
        E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
        9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
        DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
        D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
        058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
        AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
        1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
        D0A7FB93199393FF040398F3FC63332DDB0000025F4944415478DAB5D5DF4B53
        611807F0EF79CFCF9DED719B73D3FD68D3A951D0557F401021423FAF0CBA89FE
        80AEBAE83E100922029D443F2E8522BAA96EA48C0A0ABC90BA0A53715BCE8D79
        96FBE5E6365C9E5E07090AA9E4F179E0BC70387CDEE77D9F078E609A268E2284
        FDE0733707327C71EC7A5D791F7B17382C5CBE7C7B909AC506585D868BDC9818
        7FB1C6E1B6C3C37706C8886761AE0A38E68FE0E59337D6C043F72E503A9E463D
        DF40C819C1EBC793D6C0D7C6AE507A7119E542193E47006FC73F5903DF885DA5
        447211F9D5023AC8870FA3D3D6C0D76343B490FC8155E317BCCE2E7C19FB7630
        F81F23B51D9746CF52723E8E7CAE804E0AE2EBD3D9B53DCCD628FE85CBCAAD2A
        05DD21049D2174B35E104F81E7127EC228AD20BD9041255781877941661B149B
        02D208AAA442146448A6089BA6E1D9C357ADD36CC3D327A7C815B2A3D3E34387
        CB0BB7E681CE74080D01D5CA3A2AA50A9A994DB0920CD92E422105922A411625
        485B7053828D7FFF7D32B10B764E91EC17A07955D849872C2BFC9E18D806835A
        D7A0157528EB2A64970CD5A340B7EBB02936C8BC620922D0446B83D989A59DF0
        CCA98F240AFCF04E139283AF3283B995BC92CD79138221A0BDC78D707718516F
        3FEC760734BEB9C45430DE7FB3C91F02C3E707333BE03D9B973D9DA244660E6A
        0FC389C871E8CF43076BDE7EE3669C4953AA3887F6A00BD1700FCC476E6BE678
        6520454635812E7F17FABAA328DD97AC818DF3CB54A8A5E0F70738DC076364C3
        1A387771998AB5F4369C1D6E5854F1608AF2755E7180C3915EE4EEFEB6AEE26C
        6D9157EC477FB8178511D112F8687E4DFF1B7F0031A455E40888C4DE00000000
        49454E44AE426082}
    end
    object edtenviotopografia: TcxDateEdit
      Left = 74
      Top = 38
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
      TabOrder = 3
      OnExit = edtenviotopografiaExit
      Width = 134
    end
    object edtretornotopografia: TcxDateEdit
      Left = 74
      Top = 66
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
      TabOrder = 4
      OnExit = edtretornotopografiaExit
      Width = 134
    end
    object edtcodtopografo: TEdit
      Left = 74
      Top = 14
      Width = 30
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtcodtopografoKeyPress
    end
    object edtdesctopografo: TEdit
      Left = 110
      Top = 14
      Width = 126
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
    end
    object dbgrd1: TDBGrid
      Left = 239
      Top = 14
      Width = 215
      Height = 80
      TabStop = False
      DataSource = dsTopografia
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'dt_inicio'
          Title.Caption = 'Inicio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim'
          Title.Caption = 'Fim'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Projetista'
          Visible = True
        end>
    end
  end
  object grpProjeto: TGroupBox [5]
    Left = 472
    Top = 339
    Width = 258
    Height = 202
    Caption = 'Projeto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lbl24: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 14
      Caption = 'Projetista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl25: TLabel
      Left = 11
      Top = 40
      Width = 29
      Height = 14
      Caption = 'Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl26: TLabel
      Left = 11
      Top = 61
      Width = 44
      Height = 14
      Caption = 'Retorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblprazoprojeto: TLabel
      Left = 11
      Top = 81
      Width = 29
      Height = 14
      Caption = 'Prazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btninserirrevisao: TPngSpeedButton
      Left = 235
      Top = 66
      Width = 18
      Height = 22
      Hint = 'Inserir Revis'#227'o Projeto'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btninserirrevisaoClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000016000000160806000000C4B46C
        3B000000097048597300000B1300000B1301009A9C1800000A4F694343505068
        6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
        DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
        114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
        7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
        11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
        07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
        801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
        7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
        450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
        305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
        99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
        99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
        BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
        EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
        E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
        814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
        582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
        00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
        6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
        44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
        801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
        3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
        21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
        46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
        74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
        6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
        128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
        51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
        37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
        DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
        E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
        B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
        DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
        197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
        0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
        E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
        C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
        D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
        744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
        AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
        53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
        4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
        35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
        8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
        4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
        6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
        A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
        67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
        DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
        1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
        9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
        D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
        EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
        7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
        F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
        0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
        D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
        C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
        17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
        8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
        91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
        31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
        C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
        2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
        B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
        6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
        1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
        66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
        CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
        61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
        FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
        D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
        F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
        625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
        F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
        E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
        9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
        DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
        D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
        058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
        AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
        1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
        D0A7FB93199393FF040398F3FC63332DDB0000025F4944415478DAB5D5DF4B53
        611807F0EF79CFCF9DED719B73D3FD68D3A951D0557F401021423FAF0CBA89FE
        80AEBAE83E100922029D443F2E8522BAA96EA48C0A0ABC90BA0A53715BCE8D79
        96FBE5E6365C9E5E07090AA9E4F179E0BC70387CDEE77D9F078E609A268E2284
        FDE0733707327C71EC7A5D791F7B17382C5CBE7C7B909AC506585D868BDC9818
        7FB1C6E1B6C3C37706C8886761AE0A38E68FE0E59337D6C043F72E503A9E463D
        DF40C819C1EBC793D6C0D7C6AE507A7119E542193E47006FC73F5903DF885DA5
        447211F9D5023AC8870FA3D3D6C0D76343B490FC8155E317BCCE2E7C19FB7630
        F81F23B51D9746CF52723E8E7CAE804E0AE2EBD3D9B53DCCD628FE85CBCAAD2A
        05DD21049D2174B35E104F81E7127EC228AD20BD9041255781877941661B149B
        02D208AAA442146448A6089BA6E1D9C357ADD36CC3D327A7C815B2A3D3E34387
        CB0BB7E681CE74080D01D5CA3A2AA50A9A994DB0920CD92E422105922A411625
        485B7053828D7FFF7D32B10B764E91EC17A07955D849872C2BFC9E18D806835A
        D7A0157528EB2A64970CD5A340B7EBB02936C8BC620922D0446B83D989A59DF0
        CCA98F240AFCF04E139283AF3283B995BC92CD79138221A0BDC78D707718516F
        3FEC760734BEB9C45430DE7FB3C91F02C3E707333BE03D9B973D9DA244660E6A
        0FC389C871E8CF43076BDE7EE3669C4953AA3887F6A00BD1700FCC476E6BE678
        6520454635812E7F17FABAA328DD97AC818DF3CB54A8A5E0F70738DC076364C3
        1A387771998AB5F4369C1D6E5854F1608AF2755E7180C3915EE4EEFEB6AEE26C
        6D9157EC477FB8178511D112F8687E4DFF1B7F0031A455E40888C4DE00000000
        49454E44AE426082}
    end
    object edtdtenvioprojeto: TcxDateEdit
      Left = 65
      Top = 38
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
      TabOrder = 2
      OnExit = edtdtenvioprojetoExit
      Width = 164
    end
    object edtdtretornoprojeto: TcxDateEdit
      Left = 65
      Top = 62
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
      TabOrder = 3
      OnExit = edtdtretornoprojetoExit
      Width = 164
    end
    object dbgrdlistarevisao: TDBGrid
      Left = 10
      Top = 97
      Width = 215
      Height = 97
      TabStop = False
      DataSource = dsrevisao
      PopupMenu = PopupMenu1
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'dt_inicio'
          Title.Caption = 'Inicio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_fim'
          Title.Caption = 'Fim'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Projetista'
          Visible = True
        end>
    end
    object edtcodprojetista: TEdit
      Left = 65
      Top = 15
      Width = 28
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtcodprojetistaKeyPress
    end
    object edtdescprojetista: TEdit
      Left = 96
      Top = 15
      Width = 160
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
    end
  end
  object grp2: TGroupBox [6]
    Left = 0
    Top = 592
    Width = 1001
    Height = 79
    Hint = 'Pressione F4 Para Inserir Observa'#231#227'o'
    Align = alCustom
    Caption = 'Observa'#231#227'o F4 Para Inserir Observa'#231#227'o'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    object mmoobservacao: TMemo
      Left = 6
      Top = 14
      Width = 989
      Height = 61
      ReadOnly = True
      TabOrder = 0
    end
  end
  object grpValores: TGroupBox [7]
    Left = 735
    Top = 344
    Width = 265
    Height = 249
    Caption = 'Servi'#231'o'
    TabOrder = 5
    object lbl21: TLabel
      Left = 11
      Top = 24
      Width = 91
      Height = 14
      Caption = 'Poste Planta Bai.'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl33: TLabel
      Left = 11
      Top = 46
      Width = 44
      Height = 14
      Caption = 'Proj. Alt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl34: TLabel
      Left = 11
      Top = 68
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
      Left = 11
      Top = 91
      Width = 79
      Height = 14
      Caption = 'Levantamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblTravessia: TLabel
      Left = 11
      Top = 135
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
    object lbl38: TLabel
      Left = 11
      Top = 113
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
    object lbl39: TLabel
      Left = 11
      Top = 158
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
    object lbl41: TLabel
      Left = 11
      Top = 181
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
    object lbl36: TLabel
      Left = 115
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl42: TLabel
      Left = 193
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Valor R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl15: TLabel
      Left = 11
      Top = 204
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
    object edtqtdposterural: TEdit
      Left = 105
      Top = 43
      Width = 66
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
      OnKeyPress = edtqtdposteruralKeyPress
    end
    object edtqtdposteprojurbano: TEdit
      Left = 105
      Top = 21
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtqtdposteprojurbanoKeyPress
    end
    object edtqtdlevantado: TEdit
      Left = 105
      Top = 65
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edtqtdlevantadoKeyPress
    end
    object edtqtdlevantamento: TEdit
      Left = 105
      Top = 88
      Width = 66
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
      OnKeyPress = edtqtdlevantamentoKeyPress
    end
    object edtqtdtopografia: TEdit
      Left = 105
      Top = 110
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnKeyPress = edtqtdtopografiaKeyPress
    end
    object edtqttravessia: TEdit
      Left = 105
      Top = 132
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      OnKeyPress = edtqttravessiaKeyPress
    end
    object edtqtincorporacao: TEdit
      Left = 105
      Top = 155
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object edtqtddeslocamento: TEdit
      Left = 105
      Top = 178
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      OnKeyPress = edtqtddeslocamentoKeyPress
    end
    object edtvlposteprojurbano: TEdit
      Left = 176
      Top = 21
      Width = 86
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
    end
    object edtvlposterural: TEdit
      Left = 176
      Top = 43
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object edtvllevantado: TEdit
      Left = 176
      Top = 65
      Width = 86
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
    end
    object edtvllevantamento: TEdit
      Left = 176
      Top = 88
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object edtvlrtopografia: TEdit
      Left = 176
      Top = 110
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
    end
    object edtvltravessia: TEdit
      Left = 176
      Top = 132
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object edtvlrincorporacao: TEdit
      Left = 176
      Top = 155
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object edtvldeslocamento: TEdit
      Left = 176
      Top = 178
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
    end
    object edtqtdoutros: TEdit
      Left = 105
      Top = 201
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      OnKeyPress = edtqtdoutrosKeyPress
    end
    object edtvloutros: TEdit
      Left = 176
      Top = 201
      Width = 86
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 632
    Top = 459
    object E1: TMenuItem
      Caption = 'Excluir'
      OnClick = E1Click
    end
  end
  object qrynota_rural: TFDQuery
    Connection = DataModule1.ConMySql
    Left = 120
    Top = 168
  end
  object dsnota_rural: TDataSource
    DataSet = qrynota_rural
    Left = 168
    Top = 168
  end
  object pm1: TPopupMenu
    Images = DataModule1.ilImagPopup
    Left = 208
    Top = 179
    object MenuItem1: TMenuItem
      Caption = 'Calculadora'
      ImageIndex = 1
      ShortCut = 112
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = 'Alterar'
      ImageIndex = 9
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = 'Excluir'
      ImageIndex = 4
      OnClick = N4Click
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 728
    Top = 12
  end
  object qryconfigdias: TFDQuery
    IndexesActive = False
    Connection = DataModule1.ConMySql
    Left = 656
    Top = 8
  end
  object dsrevisao: TDataSource
    DataSet = DataModule1.qryrevisaoos_rural
    Left = 565
    Top = 464
  end
  object pmrelatorio: TPopupMenu
    Left = 538
    Top = 11
    object RelatrioEstudosProjetosPorStatuss1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      Caption = 'Relat'#243'rio Estudos Projetos Por Status'
      OnClick = RelatrioEstudosProjetosPorStatuss1Click
    end
    object Relatrio1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      Caption = 'Relat'#243'rio OS h'#225' Projetar'
    end
    object R1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      Caption = 'Relat'#243'rio Medi'#231#245'es'
      OnClick = R1Click
    end
    object DedoDuro1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000040000000A000000100000001300000015000000140000
        00110000000C0000000500000001000000000000000000000000000000000000
        00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
        30CE3A2019870704032B00000010000000040000000000000000000000030000
        0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
        B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
        2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
        A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
        80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
        51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
        ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
        8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
        72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
        A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
        9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
        87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
        3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
        56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
        00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
        D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
        0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
        62B40F1F3D750204081700000003000000000000000000000000000000000000
        0000000000000000000000000002000000030000000400000005000000050000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Dedo Duro'
      OnClick = DedoDuro1Click
    end
    object RelatorioAnomalias1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      Caption = 'Relatorio Anomalias'
      Visible = False
      OnClick = RelatorioAnomalias1Click
    end
    object RelatrioAssentamentos1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      Caption = 'Relat'#243'rio Assentamentos'
      OnClick = RelatrioAssentamentos1Click
    end
  end
  object qrySolicitante: TFDQuery
    Connection = DataModule1.ConMySql
    SQL.Strings = (
      
        'select * from os_engenharia_clientes_rural where id_projeto = :i' +
        'd_projeto')
    Left = 421
    Top = 120
    ParamData = <
      item
        Name = 'ID_PROJETO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsSolicitante: TDataSource
    DataSet = qrySolicitante
    Left = 493
    Top = 120
  end
  object pmSolicitante: TPopupMenu
    Left = 565
    Top = 120
    object D1: TMenuItem
      AutoCheck = True
      Caption = 'Excluir'
      OnClick = D1Click
    end
  end
  object pmOpcoes: TPopupMenu
    Images = DataModule1.ilImagPopup
    Left = 595
    Top = 11
    object C2: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000003000000080000000C0000
        000E0000000D0000000800000003000000010000000000000000000000020000
        000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
        48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
        43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
        8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
        5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
        5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
        62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
        FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
        66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
        EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
        69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
        EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
        6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
        F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
        71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
        D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
        77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
        74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
        7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
        FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
        7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
        82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
        82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
        F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
        85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
        89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
        FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
        67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
        87FFC79887FFC89886FF927063BF000000020000000000000000}
      Caption = 'Cadastrar Crs'
      OnClick = C2Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object C1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000C000000120000001400000014000000140000001400000014000000150000
        0015000000140000000D000000030000000000000000000000000000000B7A5B
        50C3AB7F6FFFAA7E6FFFAB7D6FFFAA7D6EFFAA7D6EFFA97C6DFFA97C6DFFAA7C
        6DFFA87B6CFF79584DC50000000D00000000000000000000000000000010AD82
        72FFFBF7F4FFFAF6F4FFFBF6F4FFFBF6F3FFFBF5F3FFFAF5F2FFFAF5F2FFFAF4
        F1FFFAF4F1FFAA7C6EFF0000001300000000000000000000000000000011AF84
        75FFFCF8F7FFF6EEE8FFF7EDE8FFF6EDE8FFF6EDE7FFF6EDE7FFF6ECE7FFF6EC
        E7FFFBF5F3FFAB7E6FFF0000001300000000000000000000000000000010B187
        78FFFDFAF8FFF8EFEAFFC39C8CFFC29B8AFFC29B89FFC29A89FFC19989FFC199
        88FFECE2DEFFDDD3D0FF000000260000000E00000003000000000000000FB389
        7BFFFDFBFAFFF8F1EDFFF8F0EDFFF8F0ECFFF7F0ECFFF7F0ECFFF7EFEBFFF7EF
        EBFFF2F1F1FF528771FF267255FF1A503BC50000000D000000000000000EB68D
        7EFFFEFCFCFFF9F2EFFFC6A191FFC5A090FFC5A090FFC59F8FFFEEE5E0FFE7DE
        D9FFD6CDC9FF2A7C5EFF27D596FF287758FF0000001F0000000C0000000DB890
        81FFFEFDFDFFFAF5F2FFF9F4F1FFF9F4F1FFF9F3F1FFF9F3F0FFF5F4F3FF60A0
        89FF2E8767FF2D8364FF33DBA0FF2B7D5FFF297B5DFF1D5641C20000000DBA93
        85FFFEFEFEFFFAF6F4FF00A361FF00A060FF009C5BFF009758FFB8DBCCFF3291
        70FF98F1D6FF41E2ADFF40E3AAFF3DE1AAFF3CE0A9FF2B7F61FF0000000CBC97
        88FFFFFEFEFFFBF8F6FFFBF7F6FFFAF7F6FFFBF7F5FFFAF7F4FFF9F8F7FF64AD
        94FF349674FF329372FF4AE8B6FF308D6CFF2F8A6AFF22634CC40000000BC099
        8BFFFFFFFFFFFCF8F8FFCDAD9DFFCCAC9DFFCCAB9CFFCBAB9BFFF1E9E5FFEEE5
        E1FFE9E0DCFF369A78FFB9F8E7FF339473FF0000000D000000050000000AC19D
        8EFFFFFFFFFFFCFAF9FFFCFAF9FFFCFAF8FFFCF9F8FFFBFAF8FFFCF9F8FFFBF9
        F8FFFCFCFCFF65B095FF379E7CFF28735AC0000000040000000000000009C4A0
        91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEE4E1FF0000000D000000020000000100000000000000069379
        6EC3C5A294FFC5A294FFC4A193FFC4A092FFC3A092FFC39F91FFC29F90FFC29E
        90FFC29D8FFF8F7469C400000007000000000000000000000000000000010000
        00050000000800000009000000090000000900000009000000090000000A0000
        000A000000090000000700000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Cadastrar Observa'#231#227'o'
      OnClick = C1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object C3: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000023232394353535E01A1A1A7000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
        0000000000000000000000000000000000000000000000000000000000001E1E
        1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
        165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
        3CFF292929AD0000000000000000000000000000000000000000000000002828
        28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
        3CFF282828AB0000000000000000000000000000000000000000000000003636
        36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
        3CFF363636E60000000000000000000000000000000000000000000000003636
        36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
        3CFF363636E60000000000000000000000000000000000000000000000002828
        28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
        3CFF282828AB0000000000000000000000000000000000000000000000001616
        165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
        3CFF1616165C0000000000000000000000000000000000000000000000000000
        00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000010000000000000000000000000000000000000000000000000000
        0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Consulta R'#225'pida'
      OnClick = C3Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object EditarObservao1: TMenuItem
      Caption = 'Editar Observa'#231#227'o'
      OnClick = EditarObservao1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object CadastrarAssentamento1: TMenuItem
      Caption = 'Cadastrar Assentamento'
      OnClick = CadastrarAssentamento1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object RemoverNota1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFDEAF75FFDEAF75FFDEB074FFDDAF
        75FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFDFB279FFE0B379FFE0B27AFFE0B2
        79FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFE1B67EFFE2B67FFFE2B77FFFE2B7
        7FFFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFE8C494FFE8C594FFE8C495FFE8C4
        95FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFB0794AFFAB7245FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF5EEE9FFFAF6F3FFFAF7F3FFFBF7F4FFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE6D9D2FFE7DBD4FFE9DED7FFEAE0D9FFEAE0DAFFEBE1
        DBFFEBE0DBFFEEE5E1FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B3FFFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFF1D7ABFFF1D8ADFFF1D8ADFFF1D8
        ADFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFF3DCB3FFF3DEB4FFF3DEB4FFF3DE
        B4FFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFF4E1B9FFF5E3BBFFF5E2BBFFF5E2
        BBFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
      Caption = 'Remover Nota*'
      Hint = 'Remover Notas'
      OnClick = RemoverNota1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object AlterarAnoUniversalizao1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000000000A0000
        0010000000110000001100000011000000120000001200000012000000120000
        0012000000120000001300000013000000120000000C0000000381594CC2B47C
        69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000BB77F6EFFFBF8
        F5FFF8EEE9FFF8EEE9FFF7EFE8FFF7EEE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7ED
        E6FFF6EDE6FFF6ECE6FFF6ECE6FFF6ECE5FFB47B69FF00000011B98472FFFBF8
        F6FFBF998AFFEBDAD3FFBE9788FFEBDAD3FFBD9586FFEBDAD3FFBC9484FFEBDA
        D3FF5D6DDDFFE4DDE1FF5A69DCFFF7EDE7FFB77F6EFF00000011BC8978FFFCFA
        F8FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDC
        D5FFE5DFE3FFE5DFE2FFE5DEE2FFF8EEE9FFB98472FF00000010C08E7DFFFCFA
        F9FFC6A294FFEDDED6FFC4A092FFEDDED6FFC29E8EFFEDDED6FFC19B8CFFEDDE
        D6FF6577E1FFE5E0E4FF6272E0FFF8F1EBFFBC8977FF00000010C39482FFFCFA
        FAFFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDF
        D8FFE6E2E6FFE6E2E6FFE6E2E5FFF9F2EEFFC08E7CFF0000000FC79887FFFDFB
        FAFFCCAB9DFFEEE0DBFFCAA99BFFEEE0DBFFC9A799FFEEE0DBFFC8A496FFEEE0
        DBFF6D81E5FFE8E3E8FF6A7DE4FFFAF4F0FFC49381FF0000000EC99D8CFFFDFC
        FCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2
        DCFFE8E6EAFFE8E5EAFFE8E4E9FFFAF6F2FFC69886FF0000000DCDA190FFFEFC
        FCFFD0B1A3FFEFE3DFFFCFB0A2FFEFE3DFFFCFAFA0FFEFE3DFFFCDAD9FFFEFE3
        DFFF7388E8FFE9E6EBFF7186E7FFFBF7F5FFC99D8BFF0000000DCFA594FFFEFC
        FCFFFDF9F9FFFDF9F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C4B53C3FF8D9E
        ECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B4C55C4FF93A4
        EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A4D56C6FF96A7
        EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF000000093A4093C14D55
        C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000040000
        0006000000060000000600000007000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      Caption = 'Alterar Ano Universaliza'#231#227'o'
      OnClick = AlterarAnoUniversalizao1Click
    end
  end
  object qryLevantamento: TFDQuery
    Connection = DataModule1.ConMySql
    SQL.Strings = (
      
        'SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revi' +
        'sao_rural_servicocampo os  left JOIN cad_funcionarios  cad on os' +
        '.id_tecnico = cad.id WHERE os.id_projeto= :prcodprojeto')
    Left = 269
    Top = 388
    ParamData = <
      item
        Name = 'PRCODPROJETO'
        ParamType = ptInput
      end>
  end
  object qryTopografia: TFDQuery
    Connection = DataModule1.ConMySql
    SQL.Strings = (
      
        'SELECT os.*,cad.nome_razaosocial as nome FROM os_engenharia_revi' +
        'sao_rural_topografia os  left JOIN cad_funcionarios  cad on os.c' +
        'od_projetista = cad.id WHERE os.id_projeto= :prcodprojeto')
    Left = 261
    Top = 516
    ParamData = <
      item
        Name = 'PRCODPROJETO'
        ParamType = ptInput
      end>
  end
  object dsLevantamento: TDataSource
    DataSet = qryLevantamento
    Left = 328
    Top = 392
  end
  object dsTopografia: TDataSource
    Left = 331
    Top = 517
  end
  object PopupMenu2: TPopupMenu
    Left = 528
    Top = 451
    object MenuItem3: TMenuItem
      Caption = 'Calculadora'
      ImageIndex = 1
      ShortCut = 112
      OnClick = CalculadoraF81Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem5: TMenuItem
      Caption = 'Excluir'
      OnClick = E1Click
    end
  end
  object pm2: TPopupMenu
    Left = 384
    Top = 379
    object MenuItem6: TMenuItem
      Caption = 'Calculadora'
      ImageIndex = 1
      ShortCut = 112
      OnClick = CalculadoraF81Click
    end
    object MenuItem7: TMenuItem
      Caption = '-'
    end
    object MenuItem8: TMenuItem
      Caption = 'Excluir'
      OnClick = MenuItem8Click
    end
  end
  object pm3: TPopupMenu
    Left = 408
    Top = 523
    object MenuItem9: TMenuItem
      Caption = 'Calculadora'
      ImageIndex = 1
      ShortCut = 112
      OnClick = CalculadoraF81Click
    end
    object MenuItem10: TMenuItem
      Caption = '-'
    end
    object MenuItem11: TMenuItem
      Caption = 'Excluir'
      OnClick = MenuItem11Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 200
    Top = 296
    object RemoverVinculao1: TMenuItem
      Caption = 'Remover Vincula'#231#227'o'
      OnClick = RemoverVinculao1Click
    end
    object ExibirOSVinculadas1: TMenuItem
      Caption = 'Exibir  OS Vinculadas'
      OnClick = ExibirOSVinculadas1Click
    end
  end
end
