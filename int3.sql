-- dinheiro total ganho em cada voo 

.mode	columns
.headers	on
.nullvalue	NULL



select idVoo, sum(preco)
from Bilhete
group by idVoo;