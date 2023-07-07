unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TObjetoGenerico<T> = class
  private
    FNomeObjeto: String;
    FObjeto: T;
    procedure SetNomeObjeto(const Value: String);
    procedure SetObeto(const Value: T);
    procedure SetObjeto(const Value: T);
    public
      property NomeObjeto   : String read FNomeObjeto write SetNomeObjeto;
      property Objeto        : T read FObjeto write SetObjeto;
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

{ TObjetoGenerico<T> }

procedure TObjetoGenerico<T>.SetNomeObjeto(const Value: String);
begin
  FNomeObjeto := Value;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  ObjetoGravado    : TObjetoGenerico<TForm>;
begin
  ObjetoGravado               := TObjetoGenerico<TForm>.Create;
  ObjetoGravado.FNomeObjeto   := ObjetoGravado.NomeObjeto;
  ObjetoGravado.FObjeto       := Self;

  ShowMessage(ObjetoGravado.FNomeObjeto + ' - ' + ObjetoGravado.FObjeto.ToString);
end;

procedure TObjetoGenerico<T>.SetObeto(const Value: T);
begin

end;

procedure TObjetoGenerico<T>.SetObjeto(const Value: T);
begin
  FObjeto := Value;
end;

end.
