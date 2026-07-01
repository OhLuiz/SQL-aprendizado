select 
SalesOrderNumber as 'número de vendas',
OrderQuantity as quantidade,
UnitPrice as 'preço unitário',
SalesAmount as 'valor de vendas'

from FactResellerSales
where SalesAmount between 5000 and 10000 --COM ISSO CONSIGO DEFINIR INTERVALOS QUE QUERO
and OrderQuantity > 10 --COLOCANDO O AND ADICIONO MAIS CONDIÇÕES
order by 4  -- COLOCANDO O NÚMERO ORDENAMOS PELA NUMERAÇÃO CORRESPONDENTE A COLUNA QUE DEFINIMOS
--QUANDO FOR USAR O AND, NÃO PRCISO COLOCAR WHERE NOVAMENTE