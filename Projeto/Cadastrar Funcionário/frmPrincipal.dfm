object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 217
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 161
    Height = 15
    Caption = 'Funcion'#225'rio sendo Cadastrado'
  end
  object Label2: TLabel
    Left = 16
    Top = 36
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 79
    Width = 20
    Height = 15
    Caption = 'Rua'
  end
  object Label4: TLabel
    Left = 232
    Top = 79
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label5: TLabel
    Left = 394
    Top = 79
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
  end
  object Label6: TLabel
    Left = 16
    Top = 124
    Width = 65
    Height = 15
    Caption = 'Acrescentar:'
  end
  object edtSalario: TButton
    Left = 16
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Sal'#225'rio'
    TabOrder = 0
    OnClick = edtSalarioClick
  end
  object edtFuncao: TButton
    Left = 97
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Cargo'
    TabOrder = 1
    OnClick = edtFuncaoClick
  end
  object edtNome: TEdit
    Left = 16
    Top = 50
    Width = 450
    Height = 23
    TabOrder = 2
  end
  object edtRua: TEdit
    Left = 16
    Top = 92
    Width = 201
    Height = 23
    TabOrder = 3
  end
  object edtBairro: TEdit
    Left = 232
    Top = 92
    Width = 153
    Height = 23
    TabOrder = 4
  end
  object edtNumero: TEdit
    Left = 394
    Top = 92
    Width = 72
    Height = 23
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 178
    Top = 138
    Width = 207
    Height = 23
    TabOrder = 6
    Text = 'Selecione algo para acrescentar'
  end
  object Button1: TButton
    Left = 391
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Acrescentar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 181
    Width = 450
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 8
    OnClick = Button2Click
  end
end
