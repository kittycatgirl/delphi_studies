unit unClasseAgenda;

interface

uses
  Classes, unClasseContato;

type
  TAgenda = class
  private
    FNome: String;
    FContatos: TList;

    property Contatos : TList read FContatos write FContatos;
  public
    property Nome: String read FNome write FNome;
    procedure AddContato(sNome, sTelefone, sEmail:String);
    function GetListaContatos : String;constructor Create;
  end;

implementation

{ TAgenda }

constructor TAgenda.Create;
begin
  FContatos := TList.Create;
end;

procedure TAgenda.AddContato(sNome, sTelefone, sEmail: String);
var
  oContato : TContato;
begin
  oContato := TContato.Create;
  oContato.Nome := sNome;
  oContato.Telefone := sTelefone;
  oContato.Email := sEmail;

  Contatos.Add(oContato);
end;

function TAgenda.GetListaContatos: String;
var
  iIdx: Integer;
begin
  for iIdx := 0 to Contatos.Count -1 do
  begin
    Result := Result + ', '+TContato(Contatos[iIdx]).Nome +
       '- ('+TContato(Contatos[iIdx]).Telefone+')';
  end;
end;

end.