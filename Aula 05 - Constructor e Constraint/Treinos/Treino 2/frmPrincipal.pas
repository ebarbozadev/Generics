unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  published
    property Nome : String read FNome write SetNome;
  end;

  TNFe<T : constructor> = class
  private
    FGeneric: T;
    procedure SetGeneric(const Value: T);
  published
    property Generic    : T read FGeneric write SetGeneric;
    constructor Create;
    function GetGeneric : T;
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

{ TNFe<T> }

constructor TNFe<T>.Create;
begin
  FGeneric := T.Create;
end;

function TNFe<T>.GetGeneric: T;
begin
  Result:= FGeneric;
end;

procedure TNFe<T>.SetGeneric(const Value: T);
begin
  FGeneric := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  NFe : TNFe<TPessoa>;
begin
  NFe := TNFe<TPessoa>.Create;
  try
    NFe.FGeneric.Nome := 'Emanuel';
    ShowMessage(NFe.FGeneric.Nome);
  finally
    NFe.Free;
  end;
end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
