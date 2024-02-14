program E09Q04_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Dada uma matriz quadrada de ordem m x m elaborar um algoritmo que
determine o menor valor da matriz. Exibir a matriz, o menor valor,
e a linha e a coluna onde o valor se encontra.}

uses
  SysUtils;

var
  aMatriz: array[1..10, 1..10] of Integer;
  iMenorValor, iLinhaMenorValor, iColunaMenorValor, iOrdemMatriz, iLinha, iColuna: Integer;

begin
  Write('Digite a ordem da matriz quadrada (m x m): ');
  ReadLn(iOrdemMatriz);

  WriteLn('Digite os elementos da matriz:');
  for iLinha := 1 to iOrdemMatriz do
  begin
    for iColuna := 1 to iOrdemMatriz do
    begin
      Write('Elemento (', iLinha, ',', iColuna, '): ');
      ReadLn(aMatriz[iLinha, iColuna]);
    end;
  end;

  iMenorValor := aMatriz[1, 1];
  iLinhaMenorValor := 1;
  iColunaMenorValor := 1;

  for iLinha := 1 to iOrdemMatriz do
  begin
    for iColuna := 1 to iOrdemMatriz do
    begin
      if aMatriz[iLinha, iColuna] < iMenorValor then
      begin
        iMenorValor := aMatriz[iLinha, iColuna];
        iLinhaMenorValor := iLinha;
        iColunaMenorValor := iColuna;
      end;
    end;
  end;

  Writeln('Matriz:');
  for iLinha := 1 to iOrdemMatriz do
  begin
    for iColuna := 1 to iOrdemMatriz do
    begin
      Write(aMatriz[iLinha, iColuna]:4);
    end;
    Writeln;
  end;

  Writeln('Menor valor encontrado na matriz: ', iMenorValor);
  Writeln('Linha: ', iLinhaMenorValor, ' Coluna: ', iColunaMenorValor);

  ReadLn;
end.
 