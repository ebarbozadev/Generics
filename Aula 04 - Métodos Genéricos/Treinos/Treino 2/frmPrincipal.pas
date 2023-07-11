unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TUtils = class
      class function UIf<T>(Condicao : Boolean; Verdadeiro, Falso : T) : T;
  end;

  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  public
    constructor Create;
    property Nome : String read FNome write SetNome;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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

{ TPessoa }

constructor TPessoa.Create;
begin
  FNome := 'Emanuel';
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TUtils }

class function TUtils.UIf<T>(Condicao: Boolean; Verdadeiro, Falso: T): T;
begin
  if Condicao then
    Result:= Verdadeiro
  else
    Result:= Falso;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa1, Pessoa2, Pessoa3      : TPessoa;
begin
  Pessoa1    := TPessoa.Create;
  try
    Pessoa2       := nil;

    Pessoa1.FNome := 'Carlos';
    ShowMessage(Pessoa1.Nome);


    Pessoa3       := TUtils.UIf<TPessoa>(Assigned(Pessoa2), Pessoa1, TPessoa.Create);
    Pessoa3.Nome  := 'Emanuel';
    ShowMessage(Pessoa3.Nome);
  finally
    Pessoa1.Free;
  end;
end;

end.
