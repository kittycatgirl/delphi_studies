unit unClasseLivro;

//control shift c pra criar os getters and setters, tem que ser na linha do negocio
//protected - quando quer usar entre classes herdadas
//private - quando so quer usar dentro da unit/classe

interface

uses
  SysUtils;

type
  TLivro = class
  private
    FCodigo: Integer;
    FNome: String;
    FQtdAvaliacao: Integer;
    FSomaAvaliacao: Double;

    property QtdAvaliacao : Integer read FQtdAvaliacao write FQtdAvaliacao;
    property SomaAvaliacao : Double read FSomaAvaliacao write FSomaAvaliacao;

    procedure SetNome(const Value: String);
  public
    property Codigo : Integer read FCodigo write FCodigo; //read é o get e o write é o set
    property Nome : String read FNome write SetNome;
    // reservado para metodos e procediments
    procedure AddAvaliacao(fNota: Double);
    function MediaAvaliacao : Double;


  end;

implementation

{ TLivro }

procedure TLivro.SetNome(const Value: String);
begin
  FNome := AnsiUpperCase(Value);
end;

procedure TLivro.AddAvaliacao(fNota: Double);
begin
  Inc(FQtdAvaliacao);
  SomaAvaliacao := SomaAvaliacao + fNota;
end;

function TLivro.MediaAvaliacao: Double;
begin
  if FQtdAvaliacao > 0 then
    Result := FSomaAvaliacao / FQtdAvaliacao
  else
    Result := 0;
end;

end.
