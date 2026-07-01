--Chave primária e secundária(estrangeira)
SELECT *
FROM dbo.vendas
SELECT *
FROM dbo.produtos
SELECT *
FROM dbo.categoria

alter table [Teste].dbo.vendas
add constraint FK_PRODUTO FOREIGN KEY(PRODUCT_ID) REFERENCES [Teste].dbo.produtos(ID)



alter table [Teste].dbo.produtos
add constraint FK_CATEGORIA FOREIGN KEY(CATEGORY_ID) REFERENCES [Teste].dbo.categoria(ID)

