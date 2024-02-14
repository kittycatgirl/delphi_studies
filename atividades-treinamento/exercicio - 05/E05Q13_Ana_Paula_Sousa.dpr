program E05Q13;

{$APPTYPE CONSOLE}

{O custo ao consumidor de um carro novo é a soma do custo de fábrica com a
percentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).
Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%,
escrever um algoritmo que leia o custo de fábrica de um carro e escreva o custo
ao consumidor.}

uses
  SysUtils;

const
  PERC_DISTRIBUIDOR = 0.28;
  PERC_IMPOSTO = 0.45;

var
  fCustoFabrica, fCustoConsumidor : Double;

begin
  write('Informe o valor do custo fabrica do carro: ');
  Readln(fCustoFabrica);
  fCustoConsumidor := fCustoFabrica + (fCustoFabrica * PERC_DISTRIBUIDOR) + (fCustoFabrica * PERC_IMPOSTO);
  Writeln('Total do custo ao consumidor: ', FormatFloat('0.00', fCustoConsumidor));
  Readln;
end.
