unit unClasseEmpregado;

interface

uses
  SysUtils;

type
  TEmpregado = class
  private
    FPrimeiroNome: String;
    FSobrenome: String;
    FSalarioMensal: Double;
  public
    property PrimeiroNome: String read FPrimeiroNome write FPrimeiroNome;
    property Sobrenome: String read FSobrenome write FSobrenome;
    property SalarioMensal: Double read FSalarioMensal write FSalarioMensal;

    procedure AplicarAumentoSalarial(fPorc: Double);
    procedure ExibirSalarioAnual(oEmp: TEmpregado);
    function GetSalarioAnual: Double;

    constructor Create(PrimeiroNome, Sobrenome: String; SalarioMensal: Double);
  end;

implementation

constructor TEmpregado.Create(PrimeiroNome, Sobrenome: String; SalarioMensal: Double);
begin
  FPrimeiroNome := PrimeiroNome;
  FSobrenome := Sobrenome;
  if SalarioMensal > 0 then
    FSalarioMensal := SalarioMensal
  else
    FSalarioMensal := 0.0;
end;

function TEmpregado.GetSalarioAnual: Double;
begin
  Result := FSalarioMensal * 12;
end;

procedure TEmpregado.AplicarAumentoSalarial(fPorc: Double);
begin
  FSalarioMensal := FSalarioMensal * (1 + fPorc / 100);
end;

procedure TEmpregado.ExibirSalarioAnual(oEmp: TEmpregado);
begin
  Writeln('Salario anual de ' + FPrimeiroNome + ' ' + FSobrenome + ': R$ '+ FormatFloat('0,0.00',GetSalarioAnual)); //testei esse codigo (FormatFloat('0,0.00',GetSalarioAnual)) pro formato do salario ficar 1.000,00 e deu certo
end;

end.

