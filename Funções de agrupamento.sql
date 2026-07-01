select 
ProductKey,
COUNT(ProductKey) as quantidade_venda
from FactResellerSales
group by ProductKey

select 
ProductKey,
COUNT(ProductKey) as numero_vendas,
min(ExtendedAmount) as venda_minima,
max(ExtendedAmount) as venda_maxima,
avg(ExtendedAmount) as venda_media
from FactResellerSales
group by ProductKey

select 
EmployeeKey
,MIN(ExtendedAmount) as minimo
,MAX(ExtendedAmount) as maximo
,SUM(ExtendedAmount) as soma
,AVG(ExtendedAmount) as media
from FactResellerSales
group by EmployeeKey
order by soma
