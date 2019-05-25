--peso total da bagagem transportada num percurso num dia especifico 

.mode	columns
.headers	on
.nullvalue	NULL

select Voo.idVoo, sum(peso)
from Origem, Destino, Voo, Bilhete, Bagagem
where Voo.idVoo = Origem.idVoo 
    and Origem.idAeroporto = 'PDL' 
    and Voo.idVoo = Destino.idVoo
    and Destino.idAeroporto = 'TER'
    and Voo.idVoo = Bilhete.idVoo
    and Bilhete.idBilhete = Bagagem.idBilhete
    and strftime('%j', Voo.horaPartida) = strftime('%j','2018-04-14'); 
