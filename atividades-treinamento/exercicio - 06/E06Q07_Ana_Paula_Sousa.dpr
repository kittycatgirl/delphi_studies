program E06Q07_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Dado o c�digo do produto e pre�o de 15 produtos, elaborar um algoritmo
para calcular e exibir:
- o maior pre�o;
- a m�dia aritm�tica dos pre�os dos produtos.}

uses
  SysUtils;

const
  QTDE_PRODUTOS = 15;

var
  iCodigoProduto, iMaiorProduto, iContador: Integer;
  fPrecoProduto, fMaiorPreco, fSomaPrecos: Double;

begin
  fMaiorPreco := 0;
  fSomaPrecos := 0;
  iMaiorProduto := 0;

  for iContador := 1 to QTDE_PRODUTOS do
  begin
    Writeln('Digite o codigo do produto ', iContador, ': ');
    Readln(iCodigoProduto);
    
    Writeln('Digite o preco do produto ', iContador, ': ');
    Readln(fPrecoProduto);
    if fPrecoProduto > fMaiorPreco then
      fMaiorPreco := fPrecoProduto;
      iMaiorProduto := iCodigoProduto;

    fSomaPrecos := fSomaPrecos + fPrecoProduto;


  end;

  Writeln('O maior preco entre os produtos eh o produto de codigo: ', iMaiorProduto,', com o valor de: ', fMaiorPreco:0:2);
  Writeln('A media aritmetica dos precos dos produtos eh: ', (fSomaPrecos / QTDE_PRODUTOS):0:2);

  Readln;
end.
