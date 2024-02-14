program E10Q02_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}

uses
  SysUtils, unClasseContato, unClasseAgenda;

var
  oAgenda : TAgenda;
  iIdx : Integer;
  sNome, sTelefone, sEmail:string;
begin
  try
  oAgenda := TAgenda.Create;
  Write('Defina o nome da agenda: ');
  Readln(sNome);
  oAgenda.Nome := sNome;

  for iIdx := 1 to 3 do
  begin
    Write('Escreva o nome, telefone e email: ');
    Readln(sNome);
    Readln(sTelefone);
    Readln(sEmail);
    oAgenda.AddContato(sNome, sTelefone, sEmail);
  end;

  Writeln(oAgenda.GetListaContatos);
  except
     on E:Exception do
     Writeln(E.Message+ '[E10Q02_Ana_Paula_Sousa.program]')
  end;
  Readln;
end.
