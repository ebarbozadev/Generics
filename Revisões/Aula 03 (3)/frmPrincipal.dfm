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
  TextHeight = 15
  object Button1: TButton
    Left = 112
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Clientes'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 259
    Width = 281
    Height = 23
    TabOrder = 1
  end
  object Button2: TButton
    Left = 318
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Lojas'
    TabOrder = 2
    OnClick = Button2Click
  end
end
