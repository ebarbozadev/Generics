object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 382
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 253
    Top = 24
    Width = 360
    Height = 175
    Caption = '00000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -133
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 253
    Top = 16
    Width = 215
    Height = 54
    Caption = 'Senha atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 253
    Top = 192
    Width = 360
    Height = 175
    Caption = '00000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -133
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 253
    Top = 184
    Width = 265
    Height = 54
    Caption = 'Pr'#243'xima senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 752
    Top = 16
    Width = 78
    Height = 54
    Caption = 'Hist:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 644
    Top = 16
    Width = 77
    Height = 54
    Caption = 'Adc:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 860
    Top = 16
    Width = 75
    Height = 54
    Caption = 'Log:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 217
    Height = 79
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 752
    Top = 72
    Width = 78
    Height = 295
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 644
    Top = 72
    Width = 78
    Height = 295
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 104
    Width = 217
    Height = 41
    Caption = 'Adicionar Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo3: TMemo
    Left = 860
    Top = 72
    Width = 78
    Height = 295
    TabOrder = 4
  end
  object Button3: TButton
    Left = 127
    Top = 151
    Width = 106
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 16
    Top = 151
    Width = 106
    Height = 25
    Caption = 'Aceitar'
    TabOrder = 6
  end
end
