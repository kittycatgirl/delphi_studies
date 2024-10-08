program E10Q05_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Escreva uma classe Contador, que encapsule um valor usado para contagem
de itens ou eventos. A classe deve oferecer m�todos que devem:
a) Zerar; b) Incrementar; c) Retornar o valor do contador. }

uses
  SysUtils, unClasseContador;

var
  oContador: TContador;
  iValorInicial: Integer;
begin
  try
  oContador := TContador.Create;

  Write('Digite o valor inicial do contador: ');
  Readln(iValorInicial);

  with oContador do
  Valor := iValorInicial;
  oContador.IncremetaValor;
  oContador.IncremetaValor;
  oContador.IncremetaValor;
  Writeln('Valor ATUAL do contador:', oContador.GetValor);
  oContador.ZeraValor;
  Writeln('Valor ATUAL do contador (teste zerado):', oContador.GetValor);
  oContador.IncremetaValor;
  Writeln('Valor ATUAL do contador:', oContador.GetValor);
  oContador.IncremetaValor;
  oContador.IncremetaValor;
  Writeln('Valor ATUAL do contador:', oContador.GetValor);
  except
     on E:Exception do
     Writeln(E.Message+ '[E10Q05_Ana_Paula_Sousa.program]')
  end;
  Readln;
end.
