program E08Q09_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Uma pessoa deseja comprar um eletrodom�stico, para isto percorreu 5 lojas.
Dados dois vetores, um contendo o nome das lojas e o outro o pre�o,
desenvolver um algoritmo que calcule e mostre qual foi o menor pre�o
encontrado e o nome da loja que tem o menor pre�o.}

uses
  SysUtils;
var
  aLojas: array[1..5] of String;
  aPrecos: array[1..5] of Double;
  fMenorPreco: Double;
  sNomeLojaMenorPreco: String;
  iIdx: Integer;

begin
  Writeln('Digite o nome das 5 lojas e o preco do eletrodomestico em cada uma: ');
  for iIdx := 1 to 5 do
  begin
    Writeln('Nome da loja ', iIdx, ': ');
    Readln(aLojas[iIdx]);
    Writeln('Pre�o do eletrodom�stico na loja ', aLojas[iIdx], ': ');
    Readln(aPrecos[iIdx]);
  end;

  fMenorPreco := aPrecos[1];
  sNomeLojaMenorPreco := aLojas[1];

  for iIdx := 2 to 5 do
  begin
    if aPrecos[iIdx] < fMenorPreco then
    begin
      fMenorPreco := aPrecos[iIdx];
      sNomeLojaMenorPreco := aLojas[iIdx];
    end;
  end;

  Writeln('Menor pre�o encontrado: R$', fMenorPreco:0:2, ' na loja ', sNomeLojaMenorPreco);

  Readln;
end.
