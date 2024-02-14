program E05Q10_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils, StrUtils;

var
  sLetra: String;

begin

Writeln('Digite uma letra: ');
Readln(sLetra);

if AnsiMatchText(sLetra,['a','e','i','o','u']) then
   WriteLn('A letra informada eh uma vogal.')
else
  WriteLn('A letra informada nao eh vogal!');


Readln;
end.
 