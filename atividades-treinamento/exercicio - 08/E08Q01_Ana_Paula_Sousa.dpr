program E08Q01_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a um Programa que leia um vetor de 5 n�meros inteiros e mostre-os.}

uses
  SysUtils;

var
  aInteiros : array [1..5] of Integer;
  iContagem : Integer;
begin
  Writeln('Escreva 5 numeros: ');
  for iContagem := Low(aInteiros) to High(aInteiros) do
    begin
      Readln(aInteiros[iContagem]);
    end;

  Writeln('Os numeros informados foram: ');
  for iContagem := Low(aInteiros) to High(aInteiros) do
    begin
      Writeln(aInteiros[iContagem]);
    end;
Readln;
end.
