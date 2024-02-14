program E09Q02_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

 {Dado um valor numérico VAL e uma matriz A 2x3 elabore um algoritmo
 que calcule e exiba outra matriz B que deverá conter cada elemento da
 matriz A dividido pelo valor numérico VAL (constante).}

uses
  SysUtils;

const
  VAL = 2.0;

var
  aMatrizA, aMatrizB: array[1..2, 1..3] of Double;
  iLin, iCol: Integer;

begin
  Writeln('Digite os valores da matriz A 2x3:');
  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      Writeln('Elemento (', iLin, ',', iCol, '): ');
      Readln(aMatrizA[iLin, iCol]);
    end;
  end;

  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      aMatrizB[iLin, iCol] := aMatrizA[iLin, iCol] / VAL;
    end;
  end;

  Writeln('Matriz B: ');
  for iLin := 1 to 2 do
  begin
    for iCol := 1 to 3 do
    begin
      Write(aMatrizB[iLin, iCol]:0:2, ' ');
    end;
    Writeln;
  end;

  Readln;
end.
