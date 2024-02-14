program E05Q12_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Escrever um algoritmo que leia o nome de um vendedor, o seu salário fixo
e o total de vendas efetuadas por ele no mês (em dinheiro).
Sabendo que este vendedor ganha 15% de comissão sobre suas vendas efetuadas,
informar o seu nome, o salário fixo e salário no final do mês.}

uses
  SysUtils;

const
  PORC_COMISSAO = 0.15;

var
  sNomeVendedor: String;
  fSalarioFixo, sVendas, fSalarioTotal: Double;
begin
  Write('Digite o nome do vendedor: ');
  ReadLn(sNomeVendedor);
  Write('Digite o salario fixo do vendedor: ');
  ReadLn(fSalarioFixo);
  Write('Digite o total de vendas efetuadas pelo vendedor no mes: ');
  ReadLn(sVendas);

  fSalarioTotal := fSalarioFixo + (sVendas * PORC_COMISSAO);

  WriteLn('Vendedor: ' + sNomeVendedor + '; Salario padrao: R$ ' + FloatToStr(fSalarioFixo) + '; Salário final com comissao: R$ ' + FloatToStr(fSalarioTotal));

  ReadLn;
end.
