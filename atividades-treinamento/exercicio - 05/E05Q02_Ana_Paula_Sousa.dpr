program E05Q02_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iNumA, iNumB : Integer;

begin

Writeln('Escreva dois valores para a soma: ');
Readln(iNumA);
Readln(iNumB);

Writeln('Resultado: ' + IntToStr(iNumA + iNumb));

Readln;
end.

