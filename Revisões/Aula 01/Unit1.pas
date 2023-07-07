unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMeuGenerico<T> = class
  private
    FNome: String;
    FGenerico: T;
    procedure SetFGenerico(const Value: T);
    procedure SetFNome(const Value: String);
  published
    property Nome       : String read FNome write SetFNome;
    property Generico   : T read FGenerico write SetFGenerico;
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

{ TMeuGenerico<T> }

procedure TMeuGenerico<T>.SetFGenerico(const Value: T);
begin
  FGenerico := Value;
end;

procedure TMeuGenerico<T>.SetFNome(const Value: String);
begin
  FNome := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Generico   : TMeuGenerico<TForm>;
begin
  Generico   := TMeuGenerico<TForm>.Create;
  Generico.FNome     := Generico.ClassName;
  Generico.FGenerico  := Self;
  try
    ShowMessage(Generico.FNome + ' - ' + Generico.FGenerico.ToString);
  finally
    Generico.Free;
  end;
end;
end.
