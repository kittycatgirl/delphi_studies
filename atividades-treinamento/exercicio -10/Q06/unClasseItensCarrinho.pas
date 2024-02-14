unit unClasseItensCarrinho;
{Crie uma classe para os itens do Carrinho.}

interface

uses
  SysUtils, unClasseProduto;

type
  TItemCarrinho = class
  private
    FProduto: TProduto;
    FQuantidade: Integer;
  public
    property oProduto: TProduto read FProduto write FProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;

    function CalcPrecoComDesconto : Double;

    function CalcPrecoComDescontoFormatado : String;

    constructor Create(oProduto: TProduto; Quantidade: Integer);
  end;

implementation

constructor TItemCarrinho.Create(oProduto: TProduto; Quantidade: Integer);
begin
  FProduto := oProduto;
  FQuantidade := Quantidade;
end;

function TItemCarrinho.CalcPrecoComDesconto: Double;
var
  fSubtotal, fTotal: Double;
begin
  fSubtotal := oProduto.Preco * FQuantidade;
  fTotal := fSubtotal - (fSubtotal * (oProduto.Desconto / 100));
  Result := fTotal;
end;

function TItemCarrinho.CalcPrecoComDescontoFormatado: String;
begin
   Result := FormatFloat('0.00',CalcPrecoComDesconto);
end;

end.
