program E07Q05_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Fa�a uma fun��o que receba tr�s n�meros inteiros quaisquer, e para
cada um deles seja verificado a paridade. O retorno deve informar primeiramente
os n�meros pares, e ent�o os n�meros �mpares. Conforme exemplo:
Entrada: �0� �1� �3�. Sa�da: �O n�mero 0 � par� �Os n�meros 1 e 3 s�o �mpares�
Entrada: �2� �4� �3�. Sa�da: �Os n�meros 2 e 4 s�o pares� �O n�mero 3 � �mpar�
Entrada: �2� �4� �6�. Sa�da: �Os n�meros 2, 4 e 6 s�o pares�}

uses
  SysUtils;

procedure VerificarParidade(iNum1, iNum2, iNum3: Integer);
var
  sPares, sImpares: string;
begin
  sPares := '';
  sImpares := '';

  if iNum1 mod 2 = 0 then
    sPares := IntToStr(iNum1)
  else
    sImpares := IntToStr(iNum1);

    {if iNum2 mod 2 - 0 then
    sPares := sPares }

  if iNum2 mod 2 = 0 then
  begin
    if sPares <> '' then
      sPares := sPares + ', ';
    sPares := sPares + IntToStr(iNum2);
  end
  else
  begin
    if sImpares <> '' then
      sImpares := sImpares + ', ';
    sImpares := sImpares + IntToStr(iNum2);
  end;

  if iNum3 mod 2 = 0 then
  begin
    if sPares <> '' then
      sPares := sPares + ', ';
    sPares := sPares + IntToStr(iNum3);
  end
  else
  begin
    if sImpares <> '' then
      sImpares := sImpares+ ', ';
    sImpares := sImpares + IntToStr(iNum3);
  end;


  if sPares <> '' then
    Writeln('Os numeros ', sPares, ' sao pares');
  if sImpares <> '' then
    Writeln('Os numeros ', sImpares, ' sao impares');
end;

var
  iNum1, iNum2, iNum3: Integer;

begin

  Write('Digite o primeiro numero: ');
  Readln(iNum1);
  Write('Digite o segundo numero: ');
  Readln(iNum2);
  Write('Digite o terceiro numero: ');
  Readln(iNum3);


  VerificarParidade(iNum1, iNum2, iNum3);

  Readln;
end.


{
stlPares := TStringList.Create; // instancia do stringlist
stlPares.Delimiter := ':'; //subtituindo o delimitador
stlPares.DelimitedText := sPares; //passando a string completa para separar

case stlPares.Count of  //baseado na quantidade de ; temos a quantidade de pares
1: Result := 'o Numero ' + stlPares[0] + ' e par. ';

end;}
