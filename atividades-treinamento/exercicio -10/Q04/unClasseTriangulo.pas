unit unClasseTriangulo;

{A �rea do tri�ngulo � calculada quando multiplicamos a sua base pela altura
e dividimos por dois}

interface

uses
  unClasseFigura;

type
  TTriangulo = class (TFigura)
  private
    FBase: Double;
    FAltura: Double;

  public
    property Base : Double read FBase write FBase;
    property Altura : Double read FAltura write FAltura;
    function GetArea : Double; override;
  end;

implementation

{ TTriangulo }

function TTriangulo.GetArea: Double;
begin
  Result := (Base * Altura) / 2
end;

end.
