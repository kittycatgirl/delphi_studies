program E10Q06_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Implemente uma classe para um Carrinho de Compras que deve
ter uma lista de itens, onde cada item possui a quantidade do item
e o produto. A classe Produto possui as seguintes informa��es:
c�digo, nome, pre�o, desconto. Crie uma classe para os itens do Carrinho.
Na classe Carrinho crie uma cole��o de itens. A Classe Carrinho deve ter
m�todos para incluir e remover um item da cole��o.
Deve ter ainda um m�todo para listar os itens do carrinho e o total a pagar,
calculado pela soma dos pre�os de todos os produtos do carrinho.}

uses
  SysUtils, unClasseCarrinho, unClasseProduto, unClasseItensCarrinho;

var
  oCarrinho: TCarrinhoCompras;
  oProduto1, oProduto2: TProduto;
  oItem1, oItem2: TItemCarrinho;
begin
  try
  oProduto1 := TProduto.Create(1, 'Caixa de 12 Ovos', 10.0, 10);
  oProduto2 := TProduto.Create(2, 'Azeite', 20.0, 5);

  oCarrinho := TCarrinhoCompras.Create;

  oItem1 := TItemCarrinho.Create(oProduto1, 2);
  oCarrinho.AdicionarItem(oItem1);

  oItem2 := TItemCarrinho.Create(oProduto2, 1);
  oCarrinho.AdicionarItem(oItem2);

  Writeln('Itens no carrinho:');
  Writeln(oCarrinho.ListaItens);
  except
     on E:Exception do
     Writeln(E.Message+ '[E10Q06_Ana_Paula_Sousa.program]')
  end;
Readln;
end.
