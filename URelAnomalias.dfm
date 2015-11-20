inherited FrmRelAnomalias: TFrmRelAnomalias
  Left = 441
  Top = 118
  Caption = ''
  ClientHeight = 153
  ExplicitWidth = 570
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited g1: TGauge
    Left = 16
    Top = 77
    ExplicitLeft = 16
    ExplicitTop = 77
  end
  inherited lbl1: TLabel
    Width = 151
    Caption = 'Relat'#243'rio Anomalias'
    ExplicitWidth = 151
  end
  inherited pnl1: TPanel
    Top = 99
    ExplicitTop = 99
    inherited btnrelatorio: TPngSpeedButton
      OnClick = btnrelatorioClick
    end
  end
  inherited rdprnt1: TRDprint
    Left = 124
    Top = 128
  end
  inherited pm1: TPopupMenu
    Left = 304
  end
  object ThreadProcessando: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = ThreadProcessandoExecute
    Left = 456
    Top = 120
  end
end
