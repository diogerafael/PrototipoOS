inherited FrmRelAssentamento: TFrmRelAssentamento
  Caption = 'FrmRelAssentamento'
  OnShow = FormShow
  ExplicitWidth = 570
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl1: TLabel
    Width = 179
    Caption = 'Relat'#243'rio Assentamento'
    ExplicitWidth = 179
  end
  inherited pnl1: TPanel
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  object GroupBox1: TGroupBox [5]
    Left = 26
    Top = 71
    Width = 512
    Height = 84
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object edtini: TcxDateEdit
      Left = 61
      Top = 31
      TabOrder = 0
      Width = 121
    end
    object edtfim: TcxDateEdit
      Left = 329
      Top = 31
      TabOrder = 1
      Width = 121
    end
  end
  inherited rdprnt1: TRDprint
    Left = 472
    Top = 271
  end
  inherited pm1: TPopupMenu
    Left = 472
    Top = 175
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.ConMySql
    Left = 472
    Top = 216
  end
end
