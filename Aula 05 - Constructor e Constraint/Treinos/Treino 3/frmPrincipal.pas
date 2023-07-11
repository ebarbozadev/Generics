unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNFe<T : constructor> = class
  private
    FGenerico: T;
    procedure SetGenerico(const Value: T);
    public
      property Generico    : T read FGenerico write SetGenerico;
      function GetGenerico : T;
  end;

  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
    public
      property Nome : String read FNome write SetNome;
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

function TNFe<T>.GetGenerico: T;
begin
  GetGenerico := T.Create;
end;

procedure TNFe<T>.SetGenerico(const Value: T);
begin
  FGenerico := Value;
end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  NFe : TNFe<TPessoa>;
begin
  NFe := TNFe<TPessoa>.Create;
  try
    NFe.Generico.Nome := 'Emanuel';
    ShowMessage(NFe.GetGenerico.ToString);
  finally
    NFe.Free;
  end;
end;

end.
