program E08Q04_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Dado um vetor de 10 elementos contendo letras do alfabeto,
elabore um algoritmo para verificar quantas vezes
ocorreu a letra ‘A’. Desenvolva uma validação na
entrada de dados de modo que o programa somente aceite letras.}

uses
  SysUtils, Math;
  
{o math so queria deixar guardado caso precise de numeros randons
  while True do
  begin
  Writeln(RandomRange(1,100));
  Sleep(1000);
  end;  }

const
  ABCD = 'ABCDEFGHIJKLMNOPQRSTUVXWZ';

var
  aLetras: array [1..10] of Char;
  iIdx, iCountA: Integer;
  sLetra: Char;

function ValidarLetra(sCaractere: Char): Boolean;
begin
//function Pos(const SubStr, Str: string): Integer; (retorna a posição de uma subcadeia (SubStr) em uma cadeia de caracteres(Str))
  Result := Pos(UpCase(sCaractere), ABCD) > 0;
end;

begin
  iCountA := 0;

  Writeln('Digite ate 10 letras do alfabeto:');
  for iIdx := 1 to 10 do
  begin
    repeat
      Write('Letra ', iIdx, ': ');
      Readln(sLetra);
    until ValidarLetra(sLetra);
    aLetras[iIdx] := UpCase(sLetra);
    if aLetras[iIdx] = 'A' then
      Inc(iCountA);
  end;

  Writeln('A letra A ocorreu ', iCountA, ' vezes.');

  Readln;
end.

