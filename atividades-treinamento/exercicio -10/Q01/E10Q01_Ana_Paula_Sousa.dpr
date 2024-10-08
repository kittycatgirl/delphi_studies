program E10Q01_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

{Fa�a um programa que contenha uma classe para armazenar livros,
armazenando para cada livro, c�digo, nome, quantidade de avalia��es,
e somat�ria de avalia��es. Deve conter propriedades para dar acesso aos
atributos, um procedimento para adicionar um avalia��o e uma fun��o para
retornar a m�dia das avalia��es.
O programa dever� cadastrar dois livros e deve solicitar aos usu�rios que
os avaliem. Portanto, o usu�rio dever� escolher qual livro ser� avaliado e
ent�o deixar sua avalia��o.
Ao final deve ser exibido os livros e suas m�dias de avalia��es.}

uses
  SysUtils, unClasseLivro;

  var
    oLivro1 : TLivro;

begin
  try
  oLivro1 := TLivro.Create;
  //oLivro1 := TLivro.Free;

  oLivro1.Codigo := 1;
  oLivro1.Nome := 'livro teste';

  oLivro1.AddAvaliacao(10);
  oLivro1.AddAvaliacao(8);
  //oLivro1.AddAvaliacao(0);

  Writeln('Nome do livro: ', oLivro1.Nome);
  Writeln('Media do livro: ', FormatFloat('0.00',oLivro1.MediaAvaliacao));
  except
     on E:Exception do
     Writeln(E.Message+ '[E10Q01_Ana_Paula_Sousa.program]')
  end;
  Readln;

end.
