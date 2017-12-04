object Gerenciador: TGerenciador
  Left = 0
  Top = 0
  Caption = 'Gerenciador'
  ClientHeight = 50
  ClientWidth = 197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object AureliusDataset1: TAureliusDataset
    FieldDefs = <>
    CreateSelfField = False
    IncludeUnmappedObjects = False
    SubpropsDepth = 0
    SyncSubprops = False
    RecordCountMode = Default
    Left = 32
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = AureliusDataset1
    Left = 136
    Top = 8
  end
end
