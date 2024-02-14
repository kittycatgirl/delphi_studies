program E08Q08_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Escreva um algoritmo que receba dez números do usuário e armazene em um vetor o
cubo de cada número. Após isso, o algoritmo deve imprimir todos os valores
armazenados. Crie uma função para calcular o valor do elemento ao cubo.}

uses
  SysUtils;

function CalcularCubo(iNum: Integer): Integer;
begin
  Result := iNum * iNum * iNum;
end;

var
  aNum, aNumAoCubo: array[1..10] of Integer;
  iIdx: Integer;

begin
  Writeln('Digite dez numeros:');
  for iIdx := 1 to 10 do
  begin
    Writeln('Numero ', iIdx, ': ');
    Readln(aNum[iIdx]);
    aNumAoCubo[iIdx] := CalcularCubo(aNum[iIdx]);
  end;

  Writeln('Cubos dos numeros:');
  for iIdx := 1 to 10 do
    Writeln('Numero ', iIdx, ': ', aNumAoCubo[iIdx]);

  Readln;
end.
 