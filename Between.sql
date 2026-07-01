--Função between -Entre - (dados entre 2 valores)
select * 
from FactResellerSales

where SalesAmount not between 5000 and 10000
order by SalesAmount
--No between temos que colocar o menor dado primeiro e depois o maior
--sempre que usar not no where nós retiramos os dados da condição


select *
from [dbo.DimEmployee]

where HireDate between '2008/01/01' and '2010/01/01'
order by HireDate