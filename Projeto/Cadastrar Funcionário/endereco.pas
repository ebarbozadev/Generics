unit endereco;

interface

type
  TEndereco = class
  private
    FBairro: String;
    FNumero: String;
    FRua: String;
    procedure SetBairro(const Value: String);
    procedure SetNumero(const Value: String);
    procedure SetRua(const Value: String);
    public
      property Rua      : String read FRua write SetRua;
      property Bairro   : String read FBairro write SetBairro;
      property Numero   : String read FNumero write SetNumero;
  end;

implementation

{ TEndereco }

procedure TEndereco.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TEndereco.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TEndereco.SetRua(const Value: String);
begin
  FRua := Value;
end;

end.
