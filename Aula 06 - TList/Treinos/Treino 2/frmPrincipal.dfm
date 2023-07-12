object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 8
    Top = 164
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 8
    Top = 208
    Width = 75
    Height = 27
    Caption = 'Capacity'
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 96
    Top = 45
    Width = 185
    Height = 228
    TabOrder = 5
  end
  object edtNumero: TEdit
    Left = 8
    Top = 16
    Width = 273
    Height = 23
    TabOrder = 6
  end
  object Button6: TButton
    Left = 8
    Top = 246
    Width = 75
    Height = 27
    Caption = 'Visualizar'
    TabOrder = 7
    OnClick = Button6Click
  end
end
