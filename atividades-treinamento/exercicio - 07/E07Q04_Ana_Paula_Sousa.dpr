program E07Q04_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Faça um programa que peça dois números, base e expoente,
e retorne o primeiro número elevado ao segundo número.
Não utilize a função de potência da linguagem, mas sim iterações.}

uses
  SysUtils;

function CalcularPotencia(iBase, iExpoente: Integer): Integer;
var
  iResultado, iContador: Integer;
begin
  iResultado := iBase;

  for iContador := 2 to iExpoente do
    iResultado := iResultado * iBase;

  Result := iResultado;
end;

var
  iBase, iExpoente, iResultado: Integer;

begin
  Write('Digite a base: ');
  Readln(iBase);
  Write('Digite o expoente: ');
  Readln(iExpoente);

  iResultado := CalcularPotencia(iBase, iExpoente);

  Writeln('O resultado de ', iBase, ' elevado a ', iExpoente, ' eh: ', iResultado);

  Readln;
end.
