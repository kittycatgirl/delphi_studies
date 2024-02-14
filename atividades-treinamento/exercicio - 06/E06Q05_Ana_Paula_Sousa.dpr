program E06Q05_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Calcule a �rea de c�rculos atrav�s da f�rmula A=PI*R2, onde R representa o
raio e PI o n�mero 3,14159. Repetir o processo enquanto R for positivo.}

uses
  SysUtils;
const
  PI = 3.14159;
var
  fArea, fRaio : Double;

begin

repeat
Write('Digite o valor do raio (ou um valor negativo para sair): ');
Readln(fRaio);
if fRaio > 0 then
begin
fArea := PI * (fRaio * fRaio);
Writeln('A area do circulo eh: ' + FloatToStr(fArea));
end;

until fRaio <= 0;

Writeln('Programa encerrado.');

Readln;
end.
