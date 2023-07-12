unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo1: TMemo;
    edtNumero: TEdit;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    ListaEnumerada : TList<Integer>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Adicionar
procedure TForm1.Button1Click(Sender: TObject);
begin
  ListaEnumerada.Add(StrToInt(edtNumero.Text));
end;

// Remover
procedure TForm1.Button2Click(Sender: TObject);
begin
  ListaEnumerada.Delete(Pred(ListaEnumerada.Count));
end;

// Listar
procedure TForm1.Button6Click(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to Pred(ListaEnumerada.Count) do
    Memo1.Lines.Add(ListaEnumerada[I].ToString);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListaEnumerada := TList<Integer>.Create;
end;

end.
