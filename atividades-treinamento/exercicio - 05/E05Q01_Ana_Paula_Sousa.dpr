program E05Q01_Ana_Paula_Sousa;

{$APPTYPE CONSOLE} //NAO TIRAR NUNCA

uses
  SysUtils, StrUtils;

var
  iNumA, iNumB : Integer;

begin

Writeln('Escreva dois valores: ');
Readln(iNumA);
Readln(iNumB);

if iNumA > iNumB then
  Writeln(iNumA)
else
  if (iNumA = iNumB) then
    Writeln('Os dois valores sao iguais.')
else
  Writeln(iNumB);

Readln; //nao esquecer isso aqui pois se nao, nao vai aparecer o console
end.   {AnsiMatchText, funciona como comparador de string}

