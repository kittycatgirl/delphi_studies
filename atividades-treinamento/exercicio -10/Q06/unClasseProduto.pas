unit unClasseProduto;

{A classe Produto possui as seguintes informações:
código, nome, preço, desconto.}

interface

type
  TProduto = class
  private
    FCodigo: Integer;
    FNome: String;
    FPreco: Double;
    FDesconto: Double;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property Preco: Double read FPreco write FPreco;
    property Desconto: Double read FDesconto write FDesconto;

    constructor Create(Codigo: Integer; Nome: String; Preco, Desconto: Double);
  end;

implementation

constructor TProduto.Create(Codigo: Integer; Nome: String; Preco, Desconto: Double);
begin
  FCodigo := Codigo;
  FNome := Nome;
  FPreco := Preco;
  FDesconto := Desconto;
end;

end.
