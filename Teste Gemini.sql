select 
CurrencyKey,
max(Freight) as max_frete,
avg(TotalProductCost) as media_custo_produtos,
sum(SalesAmount) as total_vendas,
case
	when sum(SalesAmount) > 10000000                   then 'Volume Altissimo'
	when sum(SalesAmount) between 1000000 and 10000000 then 'Volume Médio'
	when sum(SalesAmount) < 1000000                    then 'Volume Baixo'
end as Volume
from AdventureWorksDW2019.dbo.FactInternetSales
where YEAR(OrderDate) >= 2011
group by CurrencyKey
having avg(SalesAmount) > 100
order by CurrencyKey

select 
SalesTerritoryKey,
max(TaxAmt) as max_imposto,
avg(Freight) as media_frete,
(sum(SalesAmount) - sum(TotalProductCost) - sum(TaxAmt)) as lucro,
case
	when avg(TaxAmt) > 500 then 'Alta taxação'
	when avg(TaxAmt) between 100 and 500 then 'Média taxação'
	else 'Baixa taxação'
end as Taxacao

from AdventureWorksDW2019.dbo.FactInternetSales
where Year(OrderDate) >= 2012
group by SalesTerritoryKey
having (sum(SalesAmount) - sum(TotalProductCost) - sum(TaxAmt)) > 50000
order by 4 desc

select *
from AdventureWorksDW2019.dbo.FactInternetSales
where TaxAmt > 300