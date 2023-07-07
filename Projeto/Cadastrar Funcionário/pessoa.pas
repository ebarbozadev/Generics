unit pessoa;

interface

uses
  endereco;

type
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
    public
      property Nome       : String read FNome write SetNome;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
