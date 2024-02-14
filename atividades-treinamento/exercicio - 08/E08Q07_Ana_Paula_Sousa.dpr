program E08Q07_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Escreva um algoritmo que receba a altura de 10 atletas.
Esse algoritmo deve imprimir a altura daqueles atletas que tem altura maior
que a média.}

uses
  SysUtils;

var
  aAlturas: array[1..10] of Double;
  fSomaAlturas, fMediaAlturas: Double;
  iIdx, iAtletasAcimaMedia: Integer;

begin
  fSomaAlturas := 0;
  iAtletasAcimaMedia := 0;

  WriteLn('Digite a altura dos 10 atletas: ');
  for iIdx := 1 to 10 do
  begin
    Writeln('Atleta ', iIdx, ': ');
    ReadLn(aAlturas[iIdx]);
    fSomaAlturas := fSomaAlturas + aAlturas[iIdx];
  end;

  fMediaAlturas := fSomaAlturas / 10;

  Writeln('Alturas dos atletas acima da media:');
  for iIdx := 1 to 10 do
  begin
    if aAlturas[iIdx] > fMediaAlturas then
    begin
      Writeln('Atleta ', iIdx, ': ', aAlturas[iIdx]:0:2);
      Inc(iAtletasAcimaMedia);
    end;
  end;

  if iAtletasAcimaMedia = 0 then
    Writeln('Nenhum atleta tem altura acima da media.');

  ReadLn;
end.
 