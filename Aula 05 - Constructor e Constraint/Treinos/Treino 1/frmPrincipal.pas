unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = class
  private
    FSexo: String;
    procedure SetSexo(const Value: String);
    public
      property Sexo : String read FSexo write SetSexo;
  end;

  TNfe<T : constructor> = class
      public
        FGeneric            : T;
        function GetGeneric : T;
        constructor Create;
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

{ TPessoa }

procedure TPessoa.SetSexo(const Value: String);
begin
  FSexo := Value;
end;

{ TNfe<T> }

constructor TNfe<T>.Create;
begin
  FGeneric:= T.Create;
end;

function TNfe<T>.GetGeneric: T;
begin
  Result:= FGeneric;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  NFe : TNFe<TPessoa>;
begin
  NFe := TNFe<TPessoa>.Create;
  try
    NFe.FGeneric.FSexo   := 'Emanuel';
    ShowMessage(NFe.FGeneric.Sexo);
  finally
    NFe.Free;
  end;
end;
end.
