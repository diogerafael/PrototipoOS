inherited FrmConsAssentamento: TFrmConsAssentamento
  Caption = ''
  ClientHeight = 426
  ClientWidth = 780
  ExplicitWidth = 786
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited shp1: TShape
    Width = 780
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 721
  end
  inherited lbl1: TLabel
    Left = 300
    Width = 174
    Caption = 'Consulta Assentamento'
    ExplicitLeft = 300
    ExplicitWidth = 174
  end
  inherited btnsair: TPngSpeedButton
    Left = 660
    Top = 375
    ExplicitLeft = 660
    ExplicitTop = 375
  end
  object Label1: TLabel [5]
    Left = 576
    Top = 71
    Width = 72
    Height = 14
    Caption = 'Consultar Por'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited edtnome: TEdit
    Width = 538
    OnKeyPress = edtnomeKeyPress
    ExplicitWidth = 538
  end
  inherited DBGrid1: TDBGrid
    Width = 746
    Height = 242
    OnDrawColumnCell = nil
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'CODIGO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 620
        Visible = True
      end>
  end
  object cbbopcao: TComboBox [8]
    Left = 576
    Top = 91
    Width = 185
    Height = 22
    BevelInner = bvLowered
    BevelKind = bkSoft
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = 'DESCRICAO'
    Items.Strings = (
      'CODIGO'
      'DESCRICAO')
  end
  inherited PopupMenu1: TPopupMenu
    Left = 600
    Top = 361
  end
  inherited dsqry: TDataSource
    DataSet = FDQuery1
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.ConMySql
    Left = 376
    Top = 216
  end
end
