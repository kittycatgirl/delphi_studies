unit unClasseContato;

interface

type
  TContato = class
  private
    FTelefone: string;
    FNome: String;
    FEmail: String;
  public
    property Nome : String read FNome write FNome;
    property Telefone: string read FTelefone write FTelefone;
    property Email: String read FEmail write FEmail;
  end;

implementation

end.
