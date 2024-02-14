unit unClasseCirculo;

{A área de um círculo é pi vezes o raio elevado ao quadrado (A = p r²).}

interface

uses
  unClasseFigura;

type
  TCirculo = class (TFigura)
  private
    FPi: Double;
    FRaio: Double;

  public
    property Pi : Double read FPi write FPi;
    property Raio : Double read FRaio write FRaio;
    function GetArea : Double; override;
  end;

implementation

{ TCirculo }

function TCirculo.GetArea: Double;
begin
  Result := 3.14*(Raio*Raio);
end;

end.
