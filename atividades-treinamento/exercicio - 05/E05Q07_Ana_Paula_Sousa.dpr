program E05Q07_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Sejam três números inteiros diferentes, desenvolver um algoritmo que os coloque em ordem crescente.}

uses
  SysUtils;

var
  iNumA, iNumB, iNumC, iTempVar : Integer; //variavel iTempVar feita para armazenar valor temporariamente durante a troca

begin

Writeln('Preencha com tres valores: ');
Readln(iNumA);
Readln(iNumB);
Readln(iNumC);

if iNumA > iNumB then
  begin
    iTempVar := iNumA;
    iNumA := iNumB;
    iNumB := iTempVar;
  end;
if iNumB > iNumC then
  begin
    iTempVar := iNumB;
    iNumB := iNumC;
    iNumC := iTempVar;
  end;
if iNumA > iNumB then
  begin
    iTempVar := iNumA;
    iNumA := iNumB;
    iNumB := iTempVar;
  end;

WriteLn('Os valores em ordem crescente sao: ' + IntToStr(iNumA) + ', ' + IntToStr(iNumB)+ ', ' + IntToStr(iNumC));


Readln;
end.
 