unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.TypInfo;

type
  // Tenho dois objetos, se tornam em um objeto de strings com essa sintaxe
  TSalarios = (cem, duzentos  );
  TCargos   = (CEO, Estagiário);

  // Criar um Util para fazermos a enumerar o ComboBox
  TEnumUtil<T> = class
    // Criamos uma procedure que vai receber um valor do tipo TStrings
    class procedure EnumToList(Valor : TStrings);
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TEnumUtil<T> }

class procedure TEnumUtil<T>.EnumToList(Valor: TStrings);
var
  I: Integer;
  Posicao: Integer;
  Aux: String;
begin
  Valor.Clear;
  I:= 0;

  repeat
    Aux       := GetEnumName (TypeInfo(T), I);
    Posicao   := GetEnumValue(TypeInfo(T), Aux);

    if Posicao <> -1 then Valor.Add(Aux);

    Inc(I);
  until (Posicao < 0);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TEnumUtil<TCargos>.EnumToList(ComboBox1.Items);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TEnumUtil<TSalarios>.EnumToList(ComboBox1.Items);
end;

end.
