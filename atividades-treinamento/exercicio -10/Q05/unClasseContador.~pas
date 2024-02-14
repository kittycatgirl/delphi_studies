unit unClasseContador;

interface

type
  TContador = class
  private
    FValor: Integer;

  public
    property Valor : Integer read FValor write FValor;

    procedure ZeraValor;
    procedure IncremetaValor;

    function GetValor: Integer;
end;

implementation

{ TContador }

function TContador.GetValor: Integer;
begin
Result := FValor;
end;

procedure TContador.IncremetaValor;
begin
Inc(FValor);
end;

procedure TContador.ZeraValor;
begin
FValor := 0;
end;

end.
