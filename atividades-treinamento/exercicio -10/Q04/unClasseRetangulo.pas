unit unClasseRetangulo;
{Para calcular a �rea do ret�ngulo,
basta calcular o produto entre a sua base e a sua altura,
ou seja, a �rea � dada pela f�rmula A=b�h}

interface

uses
  unClasseFigura;

type
  TRetangulo = class (TFigura)
  private
    FBase: Integer;
    FAltura: Integer;

  public
    property Base : Integer read FBase write FBase;
    property Altura : Integer read FAltura write FAltura;
    function GetArea : Double; override;
  end;

implementation

{ TRetangulo }

function TRetangulo.GetArea: Double;
begin
  Result := Base * Altura;
end;

end.
