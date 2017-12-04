object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Estoque'
  ClientHeight = 603
  ClientWidth = 1348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 520
    Top = 8
    Width = 288
    Height = 30
    Caption = 'PRODUTOS NO ESTOQUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 39
    Width = 1169
    Height = 354
    DataSource = Gerenciador.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Title.Caption = 'ID'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'NOME'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Categoria'
        Title.Caption = 'CATEGORIA'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marca'
        Title.Caption = 'MARCA'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Moda'
        Title.Caption = 'MODA'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Setor'
        Title.Caption = 'SETOR'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cor'
        Title.Caption = 'COR'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tamanho'
        Title.Caption = 'TAMANHO'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorEntrada'
        Title.Caption = 'VALOR ENTRADA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorSaida'
        Title.Caption = 'VALOR SA'#205'DA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataEntrada'
        Title.Caption = 'DATA ENTRADA'
        Width = 80
        Visible = True
      end>
  end
  object btnAdicionar: TButton
    Left = 120
    Top = 399
    Width = 209
    Height = 44
    Caption = 'ADICIONAR PRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
  object btnEditar: TButton
    Left = 712
    Top = 399
    Width = 217
    Height = 44
    Caption = 'EDITAR PRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnDeletar: TButton
    Left = 1016
    Top = 399
    Width = 217
    Height = 44
    Caption = 'DELETAR PRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnDeletarClick
  end
  object btnAdicionarVarios: TButton
    Left = 408
    Top = 399
    Width = 217
    Height = 44
    Caption = 'ADICIONAR V'#193'RIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnAdicionarVariosClick
  end
  object btnFiltrar: TButton
    Left = 912
    Top = 552
    Width = 185
    Height = 43
    Caption = 'FILTRAR PRODUTOS'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnFiltrarClick
  end
  object rdBusca: TRadioGroup
    Left = 6
    Top = 449
    Width = 873
    Height = 146
    Margins.Left = 1
    Margins.Right = 1
    Columns = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Id'
      'Nome'
      'Categoria'
      'Marca'
      'Moda'
      'Setor'
      'Cor'
      'Tamanho'
      'Valor entrada'
      'Valor saida'
      'Data entrada')
    ParentFont = False
    TabOrder = 6
    OnClick = rdBuscaClick
  end
  object edtFiltro: TEdit
    Left = 992
    Top = 488
    Width = 297
    Height = 41
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TextHint = 'Digite o filtro'
    OnKeyPress = edtFiltroKeyPress
  end
  object btnDesativarFiltros: TButton
    Left = 1144
    Top = 554
    Width = 161
    Height = 43
    Caption = 'DESATIVAR FILTROS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnDesativarFiltrosClick
  end
end
