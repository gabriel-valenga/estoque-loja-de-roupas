object FrmPreencheDados: TFrmPreencheDados
  Left = 0
  Top = 0
  Caption = 'Preenchimento de Dados'
  ClientHeight = 551
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 79
    Top = 153
    Width = 62
    Height = 24
    Caption = 'MODA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 79
    Top = 100
    Width = 70
    Height = 24
    Caption = 'MARCA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 81
    Top = 36
    Width = 60
    Height = 24
    Caption = 'NOME:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 78
    Top = 430
    Width = 159
    Height = 24
    Caption = 'VALOR ENTRADA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 79
    Top = 209
    Width = 67
    Height = 24
    Caption = 'SETOR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 78
    Top = 265
    Width = 112
    Height = 24
    Caption = 'CATEGORIA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 81
    Top = 324
    Width = 45
    Height = 24
    Caption = 'COR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 78
    Top = 376
    Width = 99
    Height = 24
    Caption = 'TAMANHO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 78
    Top = 478
    Width = 129
    Height = 24
    Caption = 'VALOR SAIDA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbeNome: TDBEdit
    Left = 175
    Top = 36
    Width = 637
    Height = 28
    DataField = 'Nome'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object dbeValorEntrada: TDBEdit
    Left = 263
    Top = 430
    Width = 261
    Height = 28
    DataField = 'ValorEntrada'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object dbeMarca: TDBEdit
    Left = 175
    Top = 100
    Width = 637
    Height = 28
    DataField = 'Marca'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dbeSetor: TDBEdit
    Left = 175
    Top = 209
    Width = 637
    Height = 28
    DataField = 'Setor'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dbeCategoria: TDBEdit
    Left = 212
    Top = 265
    Width = 600
    Height = 28
    DataField = 'Categoria'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dbeCor: TDBEdit
    Left = 175
    Top = 324
    Width = 637
    Height = 28
    DataField = 'Cor'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object dbeTamanho: TDBEdit
    Left = 212
    Top = 376
    Width = 600
    Height = 28
    DataField = 'Tamanho'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object dbeValorSaida: TDBEdit
    Left = 263
    Top = 478
    Width = 261
    Height = 28
    DataField = 'ValorSaida'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 175
    Top = 134
    Width = 109
    Height = 47
    Columns = 2
    DataField = 'Moda'
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 17
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'M'
      'F')
    ParentFont = False
    TabOrder = 2
  end
  object btnConcluir: TButton
    Left = 624
    Top = 430
    Width = 188
    Height = 76
    Caption = 'Concluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = PostaDados
  end
end
