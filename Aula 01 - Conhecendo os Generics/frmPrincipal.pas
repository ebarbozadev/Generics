unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  // Para criar uma classe gen�rica utilizamos o <>
  TValorChave<T> = class
  private
    FValor: T;
    FChave: String;
    procedure SetChave(const Value: String);
    procedure SetValor(const Value: T);
  published
    property Chave : String read FChave write SetChave;
    // Esse 'T' pode ser qualquer tipo, vou dizer isso em tempo real
    property Valor : T read FValor write SetValor;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
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

{ TValorChave<T> }

procedure TValorChave<T>.SetChave(const Value: String);
begin
  FChave := Value;
end;

procedure TValorChave<T>.SetValor(const Value: T);
begin
  FValor := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  // Exemplo, vai receber um objeto, poderia ser um 'TForm'
  ValorDaChave : TValorChave<TForm>;
begin
  ValorDaChave := TValorChave<TForm>.Create;
  try
    ValorDaChave.Chave:= 'F1';
    ValorDaChave.Valor:= Self;

    ShowMessage(ValorDaChave.Chave + ' - ' + ValorDaChave.Valor.Name);

  finally
    ValorDaChave.Free;
  end;
end;

end.
