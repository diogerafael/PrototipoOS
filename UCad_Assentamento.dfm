inherited FrmCadAssentamento: TFrmCadAssentamento
  Caption = ''
  ClientHeight = 407
  ClientWidth = 622
  ExplicitWidth = 638
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 77
    Width = 25
    Height = 14
    Caption = 'Cod.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 110
    Width = 51
    Height = 14
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 141
    Width = 73
    Height = 14
    Caption = 'N'#250'mero Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 235
    Top = 77
    Width = 25
    Height = 14
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 622
    ExplicitWidth = 622
    inherited sbrelatorios: TPngSpeedButton
      OnClick = sbrelatoriosClick
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
    inherited sbnovo: TPngSpeedButton
      OnClick = sbnovoClick
    end
  end
  object EditCodAssentamento: TEdit [5]
    Left = 96
    Top = 74
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object EditDescricaoAssentamento: TEdit [6]
    Left = 96
    Top = 107
    Width = 433
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object cxGrid1: TcxGrid [7]
    Left = 8
    Top = 176
    Width = 606
    Height = 223
    TabOrder = 6
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object codigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'id'
        Width = 77
      end
      object descricao: TcxGridDBColumn
        Caption = 'Descri'#231#227'o Nota'
        DataBinding.FieldName = 'descricao'
        Width = 539
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object EditNumeroNota: TEdit [8]
    Left = 96
    Top = 138
    Width = 433
    Height = 21
    Hint = 'Informar o N'#250'mero da Nota a Ser Inserida em Assentamento !'
    NumbersOnly = True
    TabOrder = 4
    OnKeyPress = EditNumeroNotaKeyPress
  end
  object btn1: TcxButton [9]
    Left = 549
    Top = 138
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
    TabOrder = 5
    OnClick = btn1Click
  end
  object edtdatacadastro: TcxDateEdit [10]
    Left = 288
    Top = 74
    TabOrder = 2
    Width = 121
  end
  inherited PopupMenu1: TPopupMenu
    Left = 472
    Top = 19
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.ConMySql
    Left = 392
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 464
    Top = 248
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 568
    Top = 16
  end
  object Pmrelatorio: TPopupMenu
    Left = 528
    Top = 16
    object RelatrioAssentamento1: TMenuItem
      Caption = 'Relat'#243'rio Assentamento'
      OnClick = RelatrioAssentamento1Click
    end
  end
end
