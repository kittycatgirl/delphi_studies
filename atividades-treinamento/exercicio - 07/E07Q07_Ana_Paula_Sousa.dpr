program E07Q07_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Tendo o nome e o rendimento de um funcionário de uma empresa, calcular o
imposto de renda devido, sabendo-se que o
imposto de renda = rendimento * alíquota - valor
a deduzir e considerando a tabela abaixo:
Rendimento = 900.00, aliquota 0 e valor a deduzir 0, rendimento acima de 900 até
1800, aliquota 0.15 e dedução 135, redimento acima de 1800, aliquota de 0.25 e
deducao de 315}

uses
  SysUtils;

function CalcularImpostoRenda(sNome: string; fRendimento: Double): Double;
var
  fImposto: Double;
begin
  if fRendimento <= 900.00 then
  begin
    fImposto := 0;
  end
  else if (fRendimento > 900.00) and (fRendimento <= 1800.00) then
  begin
    fImposto := (fRendimento * 0.15) - 135.00;
  end
  else
  begin
    fImposto := (fRendimento * 0.25) - 315.00;
  end;
  Result := fImposto;
end;

var
  sNome: string;
  fRendimento, fImpostoDevido: Double;

begin
  Write('Digite o nome do funcionario: ');
  Readln(sNome);
  Write('Digite o rendimento do funcionario: ');
  Readln(fRendimento);

  fImpostoDevido := CalcularImpostoRenda(sNome, fRendimento);

  Writeln('O imposto de renda devido para o funcionario ', sNome, ' eh: R$ ', fImpostoDevido:0:2);

  Readln;
end.
