program E06Q10_Ana_Paula_Sousa;

{$APPTYPE CONSOLE}
{Dado o n�mero de inscri��o do aluno, ano de ingresso e ano
de conclus�o de um curso universit�rio, elaborar um algoritmo para calcular:
- o tempo (em anos) que cada aluno levou para concluir o curso;
- a m�dia aritm�tica do tempo (em anos) para conclus�o do curso.
Repetir o processo enquanto n�mero de inscri��o <> 0.}

uses
  SysUtils;

var
iNumeroInscricao, iAnoIngresso, iAnoConclusao, iTotalAlunos: Integer;
fTempoTotal, fMediaTempo: Double;

begin
iTotalAlunos := 0;
fTempoTotal := 0;

repeat
Writeln('Digite o numero de inscricao do aluno (ou 0 para sair): ');
Readln(iNumeroInscricao);
if iNumeroInscricao <> 0 then
begin
Writeln('Digite o ano de ingresso do aluno ', iNumeroInscricao, ': ');
Readln(iAnoIngresso);
Writeln('Digite o ano de conclusao do aluno ', iNumeroInscricao, ': ');
Readln(iAnoConclusao);
fTempoTotal := fTempoTotal + (iAnoConclusao - iAnoIngresso);
Inc(iTotalAlunos);
end;
until iNumeroInscricao = 0;

if iTotalAlunos > 0 then
fMediaTempo := fTempoTotal / iTotalAlunos
else
fMediaTempo := 0;

Writeln('A media aritmetica do tempo de conclusao do curso eh: ', fMediaTempo:0:2, ' anos.');

Readln;
end.
