program E09Q01_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Dada uma matriz de ordem 2x3 contendo valores numéricos reais, fazer um
algoritmo que calcule e exiba a soma dos números positivos e a soma dos números
negativos.}


uses
  SysUtils;

var
  aMatriz: array[1..2, 1..3] of Double;
  fSomaPositivos, fSomaNegativos: Double;
  iLin, iCol: Integer;

begin
  Writeln('Digite os valores da matriz 2x3: ');
  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      Writeln('Elemento (', iLin, ',', iCol, '): ');
      Readln(aMatriz[iLin, iCol]);
    end;
  end;

  fSomaPositivos := 0;
  fSomaNegativos := 0;

  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      if aMatriz[iLin, iCol] > 0 then
        fSomaPositivos := fSomaPositivos + aMatriz[iLin, iCol]
      else if aMatriz[iLin, iCol] < 0 then
        fSomaNegativos := fSomaNegativos + aMatriz[iLin, iCol];
    end;
  end;

  WriteLn('Soma dos numeros positivos: ', fSomaPositivos:0:2);
  WriteLn('Soma dos numeros negativos: ', fSomaNegativos:0:2);

  ReadLn;
end.
