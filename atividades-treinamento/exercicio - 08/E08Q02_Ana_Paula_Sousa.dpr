program E08Q02_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a um Programa que leia um vetor de 10 n�meros reais e mostre-os
na ordem inversa a ordem lida.}

uses
  SysUtils;

var
  aInteiros : array [1..10] of Integer;
  iContagem : Integer;
begin
  Writeln('Escreva 10 numeros: ');
  for iContagem := Low(aInteiros) to High(aInteiros) do
    begin
      Readln(aInteiros[iContagem]);
    end;

  Writeln('Os numeros informados foram: ');
  for iContagem := High(aInteiros) downto Low(aInteiros) do
    begin
      Writeln(aInteiros[iContagem]);
    end;
Readln;
end.
