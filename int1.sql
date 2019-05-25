--lista de passageiros no voo AADCA: PDL-HOR  

.mode	columns
.headers	on
.nullvalue	NULL


select nome 
from Pessoa, Passageiro, Conta, Bilhete, Voo
where Voo.idVoo = 'AACAA' 
    and Voo.idVoo = Bilhete.idVoo 
    and Bilhete.email = Conta.email 
    and Conta.email = Passageiro.email and Passageiro.idPessoa = Pessoa.idPessoa; 