unit funcionario;

interface

uses
  pessoa, endereco;

type
  TFuncionario = class
  private
    FSalario: String;
    FCargo: String;
    FPessoa: TPessoa;
    FEndereco: TEndereco;
    procedure SetCargo(const Value: String);
    procedure SetSalario(const Value: String);
    procedure SetEndereco(const Value: TEndereco);
    procedure SetPessoa(const Value: TPessoa);
    public
      constructor Create;
      destructor Destroy; override;

      function RetornarDados : String;

      property Pessoa     : TPessoa read FPessoa write SetPessoa;
      property Endereco   : TEndereco read FEndereco write SetEndereco;
      property Cargo     : String read FCargo write SetCargo;
      property Salario   : String read FSalario write SetSalario;
  end;

implementation

{ TFuncionario }

constructor TFuncionario.Create;
begin
  Salario       := '0';
  Cargo         := 'Sem Cargo';
  FEndereco      := TEndereco.Create;
  FPessoa        := TPessoa.Create;
end;



destructor TFuncionario.Destroy;
begin
  FEndereco.Free;
  FPessoa.Free;
  inherited;
end;

function TFuncionario.RetornarDados: String;
begin
  Result:= 'Nome: ' + FPessoa.Nome +
           ' Rua: ' + FEndereco.Rua +
           ' Bairro: ' + FEndereco.Bairro +
           ' N�mero: ' + FEndereco.Numero +
           ' Cargo: ' + Cargo +
           ' Sal�rio: ' + Salario;
end;

procedure TFuncionario.SetCargo(const Value: String);
begin
  FCargo := Value;
end;

procedure TFuncionario.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TFuncionario.SetPessoa(const Value: TPessoa);
begin
  FPessoa := Value;
end;

procedure TFuncionario.SetSalario(const Value: String);
begin
  FSalario := Value;
end;

end.
