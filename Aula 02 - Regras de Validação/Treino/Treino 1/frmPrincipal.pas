unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TArrayGenerico<T> = class
    FArray : array[0..9] of T;
  end;

  TArrayRecebeGenerico = TArrayGenerico<String>;

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
  aux1  : TArrayGenerico<String>;
  aux2  : TArrayRecebeGenerico;
begin
  aux1 := aux2;
end;

end.
