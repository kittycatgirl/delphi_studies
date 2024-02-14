program E07Q01_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a uma fun��o que receba dois n�meros inteiros e retorne a
quantidade de n�meros inteiros que est�o no intervalo compreendido por eles.}

uses
  SysUtils;

function ContNumerosInteiros(iInicio, iFim: Integer): Integer;
var
iQuant: Integer;
begin
if iInicio > iFim then
begin
iInicio := iInicio + iFim;
iFim := iInicio - iFim;
iInicio := iInicio - iFim;
end;

iQuant := (iFim - iInicio) - 1;

Result := iQuant;
end;

var
  iInicio, iFim, iQuant: Integer;
begin
Writeln('Digite o inicio do intervalo de valores: ');
Readln(iInicio);
Writeln('Digite o final do intervalo de valores: ');
Readln(iFim);
iQuant := ContNumerosInteiros(iInicio, iFim);
Writeln('A quantidade de numeros inteiros entre ', iInicio, ' e ', iFim, ' eh: ', iQuant);

Readln;
end.
