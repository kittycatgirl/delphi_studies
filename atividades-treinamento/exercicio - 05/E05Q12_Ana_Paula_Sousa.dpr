program E05Q12_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Escrever um algoritmo que leia o nome de um vendedor, o seu sal�rio fixo
e o total de vendas efetuadas por ele no m�s (em dinheiro).
Sabendo que este vendedor ganha 15% de comiss�o sobre suas vendas efetuadas,
informar o seu nome, o sal�rio fixo e sal�rio no final do m�s.}

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

  WriteLn('Vendedor: ' + sNomeVendedor + '; Salario padrao: R$ ' + FloatToStr(fSalarioFixo) + '; Sal�rio final com comissao: R$ ' + FloatToStr(fSalarioTotal));

  ReadLn;
end.
