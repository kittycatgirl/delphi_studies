program E08Q06_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Faça um algoritmo que leia dois vetores de 10 elementos
numéricos cada um e intercale os elementos deste em um outro vetor de 20
elementos.}

uses
  SysUtils;

var
  aVetor1, aVetor2: array[1..10] of Integer;
  aVetorInter: array[1..20] of Integer;
  iContador, iVetorA, iVetorB: Integer;

begin
  WriteLn('Digite os 10 elementos do primeiro vetor:');
  for iContador := 1 to 10 do
  begin
    Write('Elemento ', iContador, ': ');
    ReadLn(aVetor1[iContador]);
  end;

  WriteLn('Digite os 10 elementos do segundo vetor:');
  for iContador := 1 to 10 do
  begin
    Write('Elemento ', iContador, ': ');
    ReadLn(aVetor2[iContador]);
  end;

iContador := 1;
iVetorA := 1;
iVetorB := 1;

  while iVetorA <= 20 do
  begin
    if iContador <= 10 then
    begin
      aVetorInter[iVetorA] := aVetor1[iContador];
      Inc(iContador);
      Inc(iVetorA);
    end;

    if iVetorB <= 10 then
    begin
      aVetorInter[iVetorA] := aVetor2[iVetorB];
      Inc(iVetorB);
      Inc(iVetorA);
    end;
  end;

  WriteLn('Vetor intercalado:');
  for iContador := 1 to 20 do
    WriteLn(aVetorInter[iContador]);

ReadLn;
end.
