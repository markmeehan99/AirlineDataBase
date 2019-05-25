--percentagem média de ocupação dos voos

.mode	columns
.headers	on
.nullvalue	NULL

select passCount.idVoo, passNum*100/Aviao.lotacaoMax
from Aviao, Voo, (
    select idVoo, count(*) as passNum
    from Bilhete
    group by idVoo
) as passCount
where passCount.idVoo = Voo.idVoo and Voo.idAviao = Aviao.idAviao;