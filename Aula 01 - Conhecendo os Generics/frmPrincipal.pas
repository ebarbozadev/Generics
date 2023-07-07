unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  // Criar uma classe genérica
  TKeyVale<T> = class
  public
    FKey: String;
    FValor: T;
    procedure SetKey(const Value: String);
    procedure SetValor(const Value: T);
    public
      property Key     : String read FKey write SetKey;
      property Valor   : T read FValor write SetValor;
  end;

type
  TPessoa = class
  private
    FIdade: Integer;
    FNome: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    public
      constructor Create;
      destructor Destroy; Override;

      property Nome    : String read FNome write SetNome;
      property Idade   : Integer read FIdade write SetIdade;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  KV   : TKeyVale<TObject>;
begin
  KV   := TKeyVale<TObject>.Create;
  try
    KV.Key     := 'F1';
    KV.Valor   := TPessoa.Create;

    ShowMessage(KV.Key + ' - ' + KV.Valor.ClassName);
  finally
    KV.Free;
  end;
end;

{ TKeyVale<T> }

procedure TKeyVale<T>.SetKey(const Value: String);
begin
  FKey := Value;
end;

procedure TKeyVale<T>.SetValor(const Value: T);
begin
  FValor := Value;
end;

{ TPessoa }

constructor TPessoa.Create;
begin
  FNome   := 'Emanuel';
  FIdade  := 20;
end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
