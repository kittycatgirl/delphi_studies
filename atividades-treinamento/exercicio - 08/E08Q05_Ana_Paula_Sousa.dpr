program E08Q05_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Dado um vetor X numérico contendo 5 elementos,
fazer um algoritmo que crie e exiba na tela um  vetor Y.
O vetor Y  deverá conter o mesmo conteúdo do vetor X na ordem inversa.}

uses
  SysUtils;

var
  aX, aY: array[1..5] of Integer;
  iContador: Integer;

begin
  
  WriteLn('Digite os 5 elementos do vetor X:');
  for iContador := 1 to 5 do
  begin
    Write(iContador, ' Elemento: ');
    ReadLn(aX[iContador]);
  end;

  for iContador := 1 to 5 do
    aY[iContador] := aX[6 - iContador];

  for iContador := 1 to 5 do
    WriteLn('Vetor X: ', aX[iContador], ' | Vetor Y: ',aY[iContador]);

  Readln;
end.
