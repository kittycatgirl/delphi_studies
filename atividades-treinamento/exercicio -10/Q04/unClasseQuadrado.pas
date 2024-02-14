unit unClasseQuadrado;

interface

uses
  unClasseFigura;

type
  TQuadrado = class (TFigura)
  private
    FBase: Integer;
    FAltura: Integer;

  public
    property Base : Integer read FBase write FBase;
    property Altura : Integer read FAltura write FAltura;
    function GetArea : Double; override;
  end;

implementation

{ TQuadrado }

function TQuadrado.GetArea: Double;
begin
   Result := Base * Altura;
end;



end.
