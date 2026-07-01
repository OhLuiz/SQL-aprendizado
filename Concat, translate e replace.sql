--CONCAT - juntar texto
--Translate - substituir caracteres (mais de 1 critério)
--Replace - substituir caracteres (somente 1 critério por replace)

--Função  Concat
select 
CONCAT('voce e um bom aluno', ' ', 'nota 10')

select top 5
FirstName,
LastName,
CONCAT(FirstName, ' ', Lastname) as 'nome completo',
[Gender],
[EmailAddress],
[AddressLine1],
[TotalChildren]
from AdventureWorksDW2019.dbo.DimCustomer

--Função translate e replace
select top 5
FirstName,
LastName,
Translate(Firstname, 'e''a','t''u') as translate, --podemos fazer substituição multipla dessa forma
REPLACE(REPLACE(REPLACE(FirstName, 'j', 'w'),'e','a'),'C','Z'), -- para colocar mais de um argumento usando replace preisamos encapsular a função
[Gender],
[EmailAddress],
[AddressLine1],
[TotalChildren]
from AdventureWorksDW2019.dbo.DimCustomer