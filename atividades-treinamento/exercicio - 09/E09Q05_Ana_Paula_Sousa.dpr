program E09Q05_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Dada uma matriz bidimensional contendo 2 notas de 3 alunos,
elaborar um algoritmo que calcule e exiba um outra matriz unidimensional
que dever� conter a m�dia aritm�tica das 2 notas de cada aluno.
Crie uma fun��o para calcular a m�dia.}

uses
  SysUtils;

const
  NUM_ALUNOS = 3;
  NUM_NOTAS = 2;

var
  aNotas: array[1..NUM_ALUNOS, 1..NUM_NOTAS] of Double;

function CalcularMedia(iAluno: Integer): Double;
var
  iIdx: Integer;
  fSoma: Double;
begin
  fSoma := 0;
  for iIdx := 1 to NUM_NOTAS do
    fSoma := fSoma + aNotas[iAluno, iIdx];
  Result := fSoma / NUM_NOTAS;
end;

procedure ExibirMedias;
var
  aMedias: array[1..NUM_ALUNOS] of Double;
  iIdx: Integer;
begin
  for iIdx := 1 to NUM_ALUNOS do
    aMedias[iIdx] := CalcularMedia(iIdx);

  Writeln('M�dias dos alunos:');
  for iIdx := 1 to NUM_ALUNOS do
    Writeln('Aluno ', iIdx, ': ', aMedias[iIdx]:0:2);
end;

var
  iLin, iCol: Integer;
begin
  for iLin := 1 to NUM_ALUNOS do
  begin
    for iCol := 1 to NUM_NOTAS do
    begin
      Write('Digite a nota ', iCol, ' do aluno ', iLin, ': ');
      Readln(aNotas[iLin, iCol]);
    end;
  end;

  ExibirMedias;

  Readln;
end.

