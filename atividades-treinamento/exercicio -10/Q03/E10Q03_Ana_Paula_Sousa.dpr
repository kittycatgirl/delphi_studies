program E10Q03_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils,unClasseContato,unClasseAgenda;

var
  oAgenda : TAgenda;
  iPergunta : Integer;
  sNome, sTelefone, sEmail:string;
begin
  try
  oAgenda := TAgenda.Create;
  Write('Defina o nome da agenda:');
  Readln(sNome);
  oAgenda.Nome := sNome;

  Write('Escreva o nome, telefone e email:');
  Readln(sNome);
  Readln(sTelefone);
  Readln(sEmail);
  oAgenda.AddContato(sNome, sTelefone, sEmail);

  repeat
     Write('Continuar adicionando contatos? 1 - Sim | 0 - Nao ');
     Readln(iPergunta);
     if iPergunta = 0 then
        Break;
     Write('Escreva o nome, telefone e email:');
     Readln(sNome);
     Readln(sTelefone);
     Readln(sEmail);
     oAgenda.AddContato(sNome, sTelefone, sEmail);
  until iPergunta = 0;
  Writeln(oAgenda.GetListaContatos);
  except
     on E:Exception do
     Writeln(E.Message+ '[E10Q03_Ana_Paula_Sousa.program]')
  end;

Readln;
end.
