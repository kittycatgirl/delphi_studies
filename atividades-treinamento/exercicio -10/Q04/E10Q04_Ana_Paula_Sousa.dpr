program E10Q04_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  unClasseFigura,
  unClasseQuadrado,
  unClasseRetangulo in 'unClasseRetangulo.pas',
  unClasseTriangulo in 'unClasseTriangulo.pas',
  unClasseCirculo in 'unClasseCirculo.pas';

var
  oQuadrado : TQuadrado;
  oTriangulo : TTriangulo;
  oRetangulo : TRetangulo;
  oCirculo : TCirculo;

begin
  try
    oQuadrado := TQuadrado.Create;
    oTriangulo := TTriangulo.Create;
    oRetangulo := TRetangulo.Create;
    oCirculo := TCirculo.Create;

    oQuadrado.Base := 10;
    oQuadrado.Altura := 20;
    Writeln(oQuadrado.GetAreaFormatada);

    {with oQuadrado do
    begin
       Base := 10;
       Altura := 20;
       Writeln('A area do quadrado e: '+GetAreaFormatada);
    end;}

    with oTriangulo do
    begin
       Base := 6;
       Altura := 6;
       Writeln('A area do triangulo eh: '+GetAreaFormatada);
    end;

    with oRetangulo do
    begin
       Base := 5;
       Altura := 12;
       Writeln('A area do retangulo eh: '+GetAreaFormatada);
    end;

    with oCirculo do
    begin
       Pi := 3;
       Raio := 20;
       Writeln('A area do circulo eh: '+GetAreaFormatada);
    end;



   except
     on E:Exception do
     Writeln(E.Message+ '[E10Q04_Ana_Paula_Sousa.program]')
  end;
  Readln;
end.
