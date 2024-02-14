program E09Q03_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Escreva um algoritmo que leia duas matrizes reais de dimensão 2X3,
calcule e exiba a soma das matrizes.
C[i][j] = A[i][j] + B[i][j]}

uses
  SysUtils;

var
  aMatrizA, aMatrizB, aMatrizC: array[1..2, 1..3] of Integer;
  iLin, iCol: Integer;

begin
  Writeln('Digite os valores da matriz A:');
  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      Write('Elemento (', iLin, ',', iCol, '): ');
      Readln(aMatrizA[iLin, iCol]);
    end;
  end;

  WriteLn('Digite os valores da matriz B:');
  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      Write('Elemento (', iLin, ',', iCol, '): ');
      Readln(aMatrizB[iLin, iCol]);
    end;
  end;

  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      aMatrizC[iLin, iCol] := aMatrizA[iLin, iCol] + aMatrizB[iLin, iCol];
    end;
  end;

  WriteLn('Matriz resultante da soma das matrizes A e B:');
  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      Write(aMatrizC[iLin, iCol], ' ');
    end;
    WriteLn;
  end;

  ReadLn;
end.
 