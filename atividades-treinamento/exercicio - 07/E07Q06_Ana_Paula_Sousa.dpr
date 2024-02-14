program E07Q06_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Calcule a �rea de c�rculos atrav�s da f�rmula A=PI*R2, onde R representa o raio
e PI o n�mero 3,14159.
Repetir o processo enquanto R for positivo.
Automatize o c�lculo utilizando uma fun��o espec�fica para calcular
a �rea do c�rculo.}

uses
  SysUtils;

const
  PI = 3.14159;

function CalcularAreaCirculo(fRaio: Double): Double;
begin
  Result := PI * (fRaio * fRaio);
end;

var
  fRaio, fArea: Double;

begin
  repeat
    Write('Digite o raio do circulo (ou um valor negativo / 0 para sair): ');
    Readln(fRaio);
    
    if fRaio > 0 then
    begin
      fArea := CalcularAreaCirculo(fRaio);
      Writeln('A area do circulo com raio ', fRaio:0:2, ' eh ', fArea:0:2);
    end;
  until fRaio <= 0; //nao fazia muito sentido um raio com valor 0

  Writeln('Programa encerrado.');
  Readln;
end.
