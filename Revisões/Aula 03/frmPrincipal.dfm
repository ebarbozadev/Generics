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
  object ComboBox1: TComboBox
    Left = 248
    Top = 232
    Width = 145
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 248
    Top = 201
    Width = 65
    Height = 25
    Caption = 'Dias'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 329
    Top = 201
    Width = 64
    Height = 25
    Caption = 'Meses'
    TabOrder = 2
    OnClick = Button2Click
  end
end
