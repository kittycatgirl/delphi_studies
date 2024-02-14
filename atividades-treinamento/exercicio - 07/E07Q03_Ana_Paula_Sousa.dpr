program E07Q03_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a um algoritmo em Delphi que receba tr�s n�meros inteiros diferentes
via par�metro. Ordene esses n�meros em ordem crescente e retorne os n�meros
ordenados. Caso sejam digitados n�meros iguais, deve ser solicitado um novo n�mero.}

uses
  SysUtils;

procedure Trocar(var iNumA, iNumB: Integer);
var
  iTemp: Integer;
begin
  iTemp := iNumA;
  iNumA := iNumB;
  iNumB := iTemp;
end;

procedure Ordenar(var iNum1, iNum2, iNum3: Integer);
begin
  if iNum1 > iNum2 then
    Trocar(iNum1, iNum2);
  if iNum2 > iNum3 then
    Trocar(iNum2, iNum3);
  if iNum1 > iNum2 then
    Trocar(iNum1, iNum2);
end;

var
  iNum1, iNum2, iNum3: Integer;

begin
  repeat
    Write('Digite o primeiro numero: ');
    Readln(iNum1);
    Write('Digite o segundo numero: ');
    Readln(iNum2);
    Write('Digite o terceiro numero: ');
    Readln(iNum3);
    
    if (iNum1 = iNum2) or (iNum1 = iNum3) or (iNum2 = iNum3) then
      Writeln('Os numeros devem ser diferentes. Por favor, digite novamente.');
  until (iNum1 <> iNum2) and (iNum1 <> iNum3) and (iNum2 <> iNum3);

  Ordenar(iNum1, iNum2, iNum3);

  Writeln('Numeros ordenados em ordem crescente: ', iNum1, ', ', iNum2, ', ', iNum3);

  Readln;
end.
