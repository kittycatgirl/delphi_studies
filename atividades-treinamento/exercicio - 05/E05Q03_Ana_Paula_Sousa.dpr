program E05Q03_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iNumA, iNumB : Integer;

begin

Writeln('Escreva dois valores: ');
Readln(iNumA);
Readln(iNumB);

Writeln('Valores informados: ' + IntToStr(iNumB) + ' e '+ IntToStr(iNumA));

Readln;
end.

