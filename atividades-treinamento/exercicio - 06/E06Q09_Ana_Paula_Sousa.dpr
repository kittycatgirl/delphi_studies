program E06Q09_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Fa�a um programa que leia uma quantidade indeterminada de n�meros positivos e
conte quantos deles est�o nos seguintes intervalos: [0-25], [26-50], [51-75]
e [76-100]. A entrada de dados dever� terminar quando for lido um n�mero negativo.}

uses
  SysUtils;

var
  iNum, iIntervaloA, iIntervaloB, iIntervaloC, iIntervaloD: Integer;

begin
iIntervaloA := 0;
iIntervaloB := 0;
iIntervaloC := 0;
iIntervaloD := 0;

repeat
Writeln('Digite um numero positivo (ou negativo para sair): ');
Readln(iNum);
if (iNum >= 0) and (iNum <= 25) then
Inc(iIntervaloA)
else
if (iNum >= 26) and (iNum <= 50) then
Inc(iIntervaloB)
else
if (iNum >= 51) and (iNum <= 75) then
Inc(iIntervaloC)
else
if (iNum >= 76) and (iNum <= 100) then
Inc(iIntervaloD);
until iNum < 0;

Writeln('Quantidade de numeros nos intervalos:');
Writeln('[0-25]: ', iIntervaloA );
Writeln('[26-50]: ', iIntervaloB);
Writeln('[51-75]: ', iIntervaloC);
Writeln('[76-100]: ', iIntervaloD);

Readln;
end.
