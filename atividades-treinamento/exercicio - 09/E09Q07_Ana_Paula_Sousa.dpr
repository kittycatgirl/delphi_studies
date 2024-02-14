program E09Q07_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Fa�a um Programa que pe�a as tr�s notas de 4 alunos armazene em uma matriz,
calcule e armazene num vetor a m�dia de cada aluno, imprima o n�mero de alunos
com m�dia maior ou igual a 7.0. Crie uma fun��o que utilize como par�metro o
vetor de notas para calcular a m�dia.}

uses
  SysUtils;

const
  NUM_ALUNOS = 4;
  NUM_NOTAS = 3;

var
  aNotas: array[1..NUM_ALUNOS, 1..NUM_NOTAS] of Double;

function CalcularMedia(var aAluno: array of Double): Double;
var
  iIdx: Integer;
  fSoma: Double;
begin
  fSoma := 0;
  for iIdx := Low(aAluno) to High(aAluno) do
    fSoma := fSoma + aAluno[iIdx];
  Result := fSoma / Length(aAluno);
end;

procedure PreencherNotas;
var
  iLin, iCol: Integer;
begin
  Writeln('Digite as notas dos alunos:');
  for iLin := 1 to NUM_ALUNOS do
  begin
    Write('Aluno ', iLin, ': ');
    for iCol := 1 to NUM_NOTAS do
    begin
      Read(aNotas[iLin, iCol]);
    end;
  end;
end;

procedure ContarAlunosAprovados;
var
  aMedias: array[1..NUM_ALUNOS] of Double;
  iIdx, iCount: Integer;
begin
  for iIdx := 1 to NUM_ALUNOS do
    aMedias[iIdx] := CalcularMedia(aNotas[iIdx]);

  iCount := 0;
  for iIdx := 1 to NUM_ALUNOS do
  begin
    if aMedias[iIdx] >= 7.0 then
      Inc(iCount);
  end;

  Writeln('Numero de alunos com media maior ou igual a 7.0: ', iCount);
  Readln;
end;

begin
  PreencherNotas;
  ContarAlunosAprovados;

  Readln;
end.
