object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Memo1: TMemo
    Left = 248
    Top = 24
    Width = 361
    Height = 401
    TabOrder = 0
  end
  object edtNumero: TEdit
    Left = 16
    Top = 24
    Width = 209
    Height = 23
    TabOrder = 1
  end
  object btAdicionar: TButton
    Left = 16
    Top = 80
    Width = 209
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btAdicionarClick
  end
  object btRemover: TButton
    Left = 16
    Top = 144
    Width = 209
    Height = 25
    Caption = 'Remover'
    TabOrder = 3
    OnClick = btRemoverClick
  end
  object btListar: TButton
    Left = 16
    Top = 208
    Width = 209
    Height = 25
    Caption = 'Listar'
    TabOrder = 4
    OnClick = btListarClick
  end
  object btCapacity: TButton
    Left = 16
    Top = 272
    Width = 209
    Height = 25
    Caption = 'Capacity'
    TabOrder = 5
    OnClick = btCapacityClick
  end
  object btCount: TButton
    Left = 16
    Top = 336
    Width = 209
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = btCountClick
  end
  object btOnNotify: TButton
    Left = 16
    Top = 400
    Width = 209
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 7
    OnClick = btOnNotifyClick
  end
end
