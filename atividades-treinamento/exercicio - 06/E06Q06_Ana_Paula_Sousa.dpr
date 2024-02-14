program E06Q06_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a um programa que pe�a para n pessoas a sua idade, ao final
o programa dever� verificar se a m�dia de idade da turma varia
entre 0 e 25, 26 e 60 e maior que 60; e ent�o, dizer se a turma � jovem,
adulta ou idosa, conforme a m�dia calculada.}

uses
  SysUtils;

var
  iContador, iTotalPessoas, iIdade, iSomaIdades: Integer;
  fMediaIdades: Double;

begin
  iTotalPessoas := 0;
  iSomaIdades := 0;

  Write('Digite o numero de pessoas na turma: ');
  Readln(iTotalPessoas);

  for iContador := 1 to iTotalPessoas do
  begin
    Write('Digite a idade da pessoa ', iContador, ': ');
    Readln(iIdade);
    iSomaIdades := iSomaIdades + iIdade;
  end;

  fMediaIdades := iSomaIdades / iTotalPessoas;

  Writeln('A media de idade da turma eh ', fMediaIdades:0:2);

  if (fMediaIdades >= 0) and (fMediaIdades <= 25) then
    Writeln('A turma eh jovem.')
  else
  if (fMediaIdades > 25) and (fMediaIdades <= 60) then
    Writeln('A turma eh adulta.')
  else
    Writeln('A turma eh idosa.');

  Readln;
end.
