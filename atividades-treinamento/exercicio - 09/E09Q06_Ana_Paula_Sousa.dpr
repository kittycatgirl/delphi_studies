program E09Q06_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Dada uma matriz A numérica 3x3 desenvolver um algoritmo que gere uma
outra matriz B 3x4, que contém os mesmos elementos da matriz A menos a 4ª
coluna que deverá conter a média aritmética dos elementos das três linhas.}

uses
  SysUtils;

const
  LINHAS_A = 3;
  COLUNAS_A = 3;
  COLUNAS_B = 4;

var
  aMatrizA: array[1..LINHAS_A, 1..COLUNAS_A] of Double;
  aMatrizB: array[1..LINHAS_A, 1..COLUNAS_B] of Double;

procedure PreencherMatrizA;
var
  iLin, iCol: Integer;
begin
  Writeln('Preencha a matriz A:');
  for iLin := 1 to LINHAS_A do
  begin
    for iCol := 1 to COLUNAS_A do
    begin
      Write('Digite o elemento A[', iLin, ',', iCol, ']: ');
      Readln(aMatrizA[iLin, iCol]);
    end;
  end;
end;

procedure GerarMatrizB;
var
  iLin, iCol: Integer;
  fSoma: Double;
begin
  for iLin := 1 to LINHAS_A do
  begin
    fSoma := 0.0;
    for iCol := 1 to COLUNAS_A do
    begin
      aMatrizB[iLin, iCol] := aMatrizA[iLin, iCol];
      fSoma := fSoma + aMatrizA[iLin, iCol];
    end;
    aMatrizB[iLin, COLUNAS_B] := fSoma / COLUNAS_A;
  end;
end;

procedure ExibirMatriz(iLinhas, iColunas: Integer);
var
  iLin, iCol: Integer;
begin
  Writeln('Matriz B:');
  for iLin := 1 to iLinhas do
  begin
    for iCol := 1 to iColunas do
    begin
      Write(FormatFloat('0.00',aMatrizB[iLin, iCol]) + ' ');
    end;
    Writeln;
  end;
end;

begin
  PreencherMatrizA;
  GerarMatrizB;
  ExibirMatriz(LINHAS_A, COLUNAS_B);
  Readln;
end.
