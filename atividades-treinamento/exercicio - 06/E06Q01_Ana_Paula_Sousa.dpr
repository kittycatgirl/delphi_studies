program E06Q01_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a um programa que imprima na tela apenas os n�meros �mpares entre 1 e 50.}

uses
  SysUtils;

var
  iContador : Integer;

begin
  for iContador := 1 to 50 do
  begin
    if iContador mod 2 <> 0 then //esse 'mod' eh tipo o % do java
    Writeln (iContador)
  end;
  Readln;
end.
