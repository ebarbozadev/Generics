unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    Fila : TQueue<String>;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}



procedure TForm2.Button1Click(Sender: TObject);
begin
  Fila.Enqueue(Edit1.Text);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add('Retirado o elemento: ' + Fila.Dequeue);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add('Retirado da linha: ' + Fila.Extract);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add('O pr�ximo ser�: ' + Fila.Peek);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Fila.TrimExcess;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add('Quantidade de espa�o: ' + Fila.Count.ToString);
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  Memo1.Lines.Add('Tamanho da mem�ria alocada: ' + Fila.Capacity.ToString);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Fila := TQueue<String>.Create;
end;

end.
