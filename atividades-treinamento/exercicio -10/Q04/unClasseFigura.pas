unit unClasseFigura;

interface

uses
  SysUtils;

type
  TFigura = class

  public
    function GetArea : Double; virtual; abstract;
    function GetAreaFormatada: String;

  end;

implementation


{ TFigura }

function TFigura.GetAreaFormatada: String;
begin
   Result := FormatFloat('0.00',GetArea);
end;

end.