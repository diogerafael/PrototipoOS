inherited FrmCadCrs: TFrmCadCrs
  Caption = 'Cadastrar CRS'
  ClientHeight = 350
  ClientWidth = 644
  OnClose = FormClose
  ExplicitWidth = 660
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  object lbl24: TLabel [0]
    Left = 25
    Top = 120
    Width = 16
    Height = 14
    Caption = 'Crs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 644
    ExplicitWidth = 644
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
  object edtdesc: TEdit [2]
    Left = 104
    Top = 118
    Width = 270
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
  object dbgrd2: TDBGrid [3]
    Left = 25
    Top = 160
    Width = 568
    Height = 169
    TabStop = False
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgrd2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 449
        Visible = True
      end>
  end
  inherited PopupMenu1: TPopupMenu
    Left = 472
    Top = 19
  end
  object qryCrs: TFDQuery
    Connection = DataModule1.ConMySql
    SQL.Strings = (
      'select * from os_engenharia_crs')
    Left = 416
    Top = 104
  end
  object ds1: TDataSource
    DataSet = qryCrs
    Left = 464
    Top = 104
  end
end
