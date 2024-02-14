program E05Q09_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  iNumA, iNumB, iNumC, iSoma: Integer;

begin

Writeln('Preencha tres valores: ');
Readln(iNumA);
Readln(iNumB);
Readln(iNumC);

iSoma := iNumA + iNumB;

if iSoma > iNumC then
  WriteLn('A soma do primeiro valor com a do segundo eh maior que o terceiro valor')
else
  if iSoma < iNumC then
   WriteLn('A soma do primeiro valor com a do segundo eh menor que o terceiro valor')
else
  WriteLn('A soma do primeiro valor com a do segundo eh igual ao terceiro valor');


Readln;
end.
