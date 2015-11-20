object frmconsUsuarios: TfrmconsUsuarios
  Left = 498
  Top = 272
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Consulta de Usuarios'
  ClientHeight = 157
  ClientWidth = 268
  Color = clLime
  TransparentColor = True
  TransparentColorValue = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 268
    Height = 157
  end
  object Label1: TLabel
    Left = 51
    Top = 2
    Width = 136
    Height = 16
    Caption = 'Pesquisa de Usu'#225'rios'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 20
    Width = 262
    Height = 133
    BiDiMode = bdLeftToRight
    Ctl3D = False
    DataSource = DsconsUsuarios
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nome do Usu'#225'rio'
        Width = 175
        Visible = True
      end>
  end
  object DsconsUsuarios: TDataSource
    DataSet = qryconsusuario
    Left = 152
    Top = 70
  end
  object qryconsusuario: TFDQuery
    Connection = DataModule1.ConMySql
    SQL.Strings = (
      'select login as codigo, nome from uccaduser order by nome')
    Left = 200
    Top = 32
  end
end
