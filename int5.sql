--quantidade de pessoas por nacionalidade por voo

.mode	columns
.headers	on
.nullvalue	NULL

select idVoo, nomePais, count(nomePais)
from  Bilhete, Conta, Passageiro, Pessoa, Nacionalidade
where Bilhete.email = Conta.email
    and Conta.email = Passageiro.email
    and Passageiro.idPessoa = Pessoa.idPessoa
    and Pessoa.idPessoa = Nacionalidade.idPessoa
group by nomePais, idVoo;
