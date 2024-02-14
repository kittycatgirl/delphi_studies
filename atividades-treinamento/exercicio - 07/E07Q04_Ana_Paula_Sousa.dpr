program E07Q04_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Fa�a um programa que pe�a dois n�meros, base e expoente,
e retorne o primeiro n�mero elevado ao segundo n�mero.
N�o utilize a fun��o de pot�ncia da linguagem, mas sim itera��es.}

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
