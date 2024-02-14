program E05Q08_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{O aluno digita duas notas e informa se o aluno foi aprovado ou não.
Considerar aprovado se a nota for maior ou igual a 5.0. (fiz uma media)}

uses
  SysUtils;

var
  fNumA, fNumB, fMedia : Double;

begin

Writeln('Preencha com duas notas: ');
Readln(fNumA);
Readln(fNumB);

fMedia := (fNumA+fNumB)/2;

if fMedia >= 5.0 then
  WriteLn('Voce foi: APROVADO')
else
  WriteLn('Voce foi: REPROVADO');


Readln;
end.
 