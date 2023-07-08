unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes,
  System.TypInfo;

type
  // Criando um objeto TStrings
  TClientes = (Agridoce, DogKing);
  TLojas    = (Loja1, Loja2);

  // Criando um objeto gen�rico que recebe algo
  TEnumGenerico<T> = class
    //
    class procedure EnumerarLista(Valor : TStrings);
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TEnumGenerico<T> }

class procedure TEnumGenerico<T>.EnumerarLista(Valor: TStrings);
var
  Aux       : String;
  Posicao   : Integer;
  I         : Integer;
begin
  Valor.Clear;
  I         := 0;
  repeat
    Aux       := GetEnumName (TypeInfo(T), I);
    Posicao   := GetEnumValue(TypeInfo(T), Aux);

    if Posicao <> -1 then Valor.Add(Aux);

    Inc(I);
  until (Posicao < 0);

end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  TEnumGenerico<TClientes>.EnumerarLista(ComboBox1.Items);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TEnumGenerico<TLojas>.EnumerarLista(ComboBox1.Items);
end;
end.
