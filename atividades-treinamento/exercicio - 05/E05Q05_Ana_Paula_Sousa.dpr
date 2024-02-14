program E05Q05_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Faça um algoritmo que leia um valor inteiro e apresente os resultados
do quadrado e do cubo do valor lido.}

uses
  SysUtils;

var
  iNum : Integer;

begin

Writeln('Escreva um numero para saber seu valor ao quadrado e ao cubo: ');
Readln(iNum);

Writeln('Valor ao quadrado: ' + IntToStr(iNum*iNum) + '; Valor ao cubo: ' + IntToStr(iNum*iNum*iNum));


Readln;
end.
