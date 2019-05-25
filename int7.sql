--quantidade de passageiros em cada faixa etaria

.mode	columns
.headers	on
.nullvalue	NULL

select idade/10*10 as idadeMinima, idade/10*10+9 as idadeMaxima, sum(idadeNum)
from 
    (
    select strftime('%Y', 'now')-strftime('%Y',Pessoa.dataNascimento) as idade, count(*) as idadeNum
    from Pessoa, Passageiro
    where Pessoa.idPessoa = Passageiro.idPessoa  
    group by idade
    ) 
group by idadeMinima
;

