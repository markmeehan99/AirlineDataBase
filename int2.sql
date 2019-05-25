--modelo e marca dos avioes que fazem a rota PDL-TER

.mode	columns
.headers	on
.nullvalue	NULL


select Aviao.marca, Aviao.modelo
from Aviao, Voo, Origem, Destino
where Aviao.idAviao = Voo.idAviao 
    and Voo.idVoo = Origem.idVoo 
    and Voo.idVoo = Destino.idVoo 
    and Destino.idAeroporto = 'TER'
    and Origem.idAeroporto = 'PDL'; 