-- Função de restrição Where + valores nulos

select 
FirstName as nome,
MiddleName as 'nome do meio',
LastName as 'sobrenome',
AddressLine1 as 'Endereço linha 1',
AddressLine2 as 'Endereço Linha 2'

from dbo.DimCustomer
where AddressLine2 is null
and MiddleName is null


