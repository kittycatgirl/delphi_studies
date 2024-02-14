program E05Q04_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Área do triagulo = (Base X Altura) / 2}

uses
  SysUtils;

var
  fBase, fAltura : Double;

begin

Writeln('Escreva os valores da base e a altura do triangulo (respectivamente): ');
Readln(fBase);
Readln(fAltura);

Writeln('Area do triangulo: ' + FloatToStr((fBase*fAltura)/2));
// nao fiz uma variavel com a conta pois achei que era seria só para demonstrar o valor da area do triangulo

Readln;
end.
 