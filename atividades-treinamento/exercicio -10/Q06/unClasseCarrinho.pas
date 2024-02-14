unit unClasseCarrinho;
{A Classe Carrinho deve ter métodos para incluir e remover um item da coleção.
Deve ter ainda um método para listar os itens do carrinho e o total a pagar,
calculado pela soma dos preços de todos os produtos do carrinho.}

interface

uses
  SysUtils, Classes, unClasseProduto, unClasseItensCarrinho;

type
  TCarrinhoCompras = class
  private
    FItens: TList;
  public
    property Itens : TList read FItens write FItens;

    procedure AdicionarItem(oItem: TItemCarrinho);
    procedure RemoverItem(iIndex: Integer);
    function TotalAPagar: Double;
    function ListaItens: String;

    constructor Create;
  end;

implementation

constructor TCarrinhoCompras.Create;
begin
  FItens := TList.Create;
end;

procedure TCarrinhoCompras.AdicionarItem(oItem: TItemCarrinho);
begin
  FItens.Add(oItem);
end;

procedure TCarrinhoCompras.RemoverItem(iIndex: Integer);
begin
  FItens.Delete(iIndex);
end;

function TCarrinhoCompras.TotalAPagar: Double;
var
  iIdx: Integer;
begin
  for iIdx := 0 to FItens.Count - 1 do
    Result := Result + TItemCarrinho(FItens[iIdx]).CalcPrecoComDesconto;
end;

function TCarrinhoCompras.ListaItens: String;
var
  iIdx: Integer;
  sTexto : String;
begin
  for iIdx := 0 to FItens.Count - 1 do
  begin
    sTexto := sTexto + #13#10 + 'Item: '+TItemCarrinho(FItens[iIdx]).oProduto.Nome +
       '; ' + #13#10 + 'Quantidade: '+IntToStr(TItemCarrinho(FItens[iIdx]).Quantidade)+
       '; ' + #13#10 + 'Preco: '+TItemCarrinho(FItens[iIdx]).CalcPrecoComDescontoFormatado+ #13#10+ '------------------------------'; //#13#10 foi o que eu achei pra linha poder quebrar usando o mesmo writeln
  end;
    Result := sTexto + #13#10 + 'Total a pagar: R$ ' + FormatFloat('0.00',TotalAPagar);
end;
end.
