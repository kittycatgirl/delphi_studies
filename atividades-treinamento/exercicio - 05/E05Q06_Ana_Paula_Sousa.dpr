program E05Q06_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Faça um algoritmo que leia dois números, calcule a média e imprima o resultado.}

uses
  SysUtils;

var
  fNumA, fNumB : Double;

begin

Writeln('Preencha com dois valores: ');
Readln(fNumA);
Readln(fNumB);

Writeln('Media aritmetica dos valores eh: ' + FloatToStr((fNumA+fNumB)/2));


Readln;
end.
 