program E08Q03_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Dado um vetor contendo 10 elementos numéricos, elabore um
algoritmo que verifique se um outro valor dado pertence ou não ao vetor.}

uses
  SysUtils;

var
  aInteiros : array [1..5] of Integer = (1,2,6,4,5);
  iContagem, iValor, iVerificar, iIndice : Integer;
begin

  Writeln('Digite um valor para saber se existe no vetor: ');
  Readln(iValor);
  iVerificar := 0;
  iIndice := 0;

  for iContagem := Low(aInteiros) to High(aInteiros) do
    begin
     if aInteiros[iContagem] = iValor then
      begin
      iVerificar := iVerificar + 1;
      iIndice := iContagem;
      end;
    end;

 if iVerificar >= 1 then
      Writeln('O valor informado se encontra no indice: ' + IntToStr(iIndice))
 else
      Writeln('O valor informado NAO existe no vetor');

Readln;
end.
