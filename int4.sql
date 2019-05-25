--lista ordenada de alcances maximos e quantidade dos mesmos

.mode	columns
.headers	on
.nullvalue	NULL

select marca, modelo, alcance, count(alcance)
from Aviao
group by alcance;