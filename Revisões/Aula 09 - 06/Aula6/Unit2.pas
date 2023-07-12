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
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    ListaNum : TList<Integer>;
    procedure Notificacao(Sender: TObject; const Item: Integer; Action: TCollectionNotification);
    public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

// Adicionar
procedure TForm2.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(ListaNum.Add(StrToInt(Edit1.Text)).ToString);
end;

// Remover
procedure TForm2.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add(ListaNum.Remove(StrToInt(Edit1.Text)).ToString);
end;

// Listar
procedure TForm2.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to Pred(ListaNum.Count) do
    Memo1.Lines.Add(ListaNum[I].ToString);
end;

// Capacity
procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add(ListaNum.Capacity.ToString);
end;

// Count
procedure TForm2.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add(ListaNum.Count.ToString);
end;

// OnNotify
procedure TForm2.Button5Click(Sender: TObject);
begin
  ListaNum.OnNotify := Notificacao;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ListaNum := TList<Integer>.Create;
end;

procedure TForm2.Notificacao(Sender: TObject; const Item: Integer;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded    : Memo1.Lines.Add('Adicionando o item ' + item.ToString + ' na TList');
    cnExtracted: Memo1.Lines.Add('Extraindo o item ' + item.ToString + ' na TList');
    cnRemoved  : Memo1.Lines.Add('Deletando o item ' + item.ToString + ' na TList');
  end;
end;

end.
