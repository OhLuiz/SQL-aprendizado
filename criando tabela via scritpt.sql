--Criando tabelas via script
/*
create table   = criar tabela
insert into    = inserir dados na tabela
truncate table = apagar dados da tabela
drop table     = deletar tabela
*/

use [Teste]
create table vendas
(id int primary key not null, --chave unica garante que não se repitam
product_id int not null, 
Cliente varchar (50),
data_compra date not null,
valor_total money not null
)

use [Teste]
create table produtos
(id int primary key not null, --chave unica garante que não se repitam
name varchar (50) not null, 
category_id int not null
)

use [Teste]
create table categoria
(id int primary key not null, --chave unica garante que não se repitam
name varchar (50), 
)

select *
from dbo.vendas
insert into [Teste].dbo.vendas(id,product_id,Cliente,data_compra,valor_total) 
                        values(1,256,'Edmilson','01/08/2022',300)
insert into [Teste].dbo.vendas(id,product_id,Cliente,data_compra,valor_total) 
                        values(2,256,'Marcos','01/09/2022',700)

insert into dbo.produtos (id, name, category_id) values (10,'geladeira',2)
insert into dbo.produtos (id, name, category_id) 
                  values (13,'maquina de lavar',2)

insert into dbo.produtos (id, name, category_id) values (0, 'Sapato', 0);
insert into dbo.produtos (id, name, category_id) values (1, 'Bolsa', 0);
insert into dbo.produtos (id, name, category_id) values (2, 'Calça', 0);
insert into dbo.produtos (id, name, category_id) values (3, 'Camisa', 0);
insert into dbo.produtos (id, name, category_id) values (4, 'Vestido', 0);
insert into dbo.produtos (id, name, category_id) values (5, 'Perfume', 1);
insert into dbo.produtos (id, name, category_id) values (6, 'Creme de Barbear', 1);
insert into dbo.produtos (id, name, category_id) values (7, 'Hidratante', 1);
insert into dbo.produtos (id, name, category_id) values (8, 'Shampoo', 1);
insert into dbo.produtos (id, name, category_id) values (9, 'Protetor Solar', 1);
insert into dbo.produtos (id, name, category_id) values (10, 'Geladeira', 2);
insert into dbo.produtos (id, name, category_id) values (11, 'Fogão', 2);
insert into dbo.produtos (id, name, category_id) values (12, 'TV', 2);
insert into dbo.produtos (id, name, category_id) values (13, 'Máquina de Lavar', 2);
insert into dbo.produtos (id, name, category_id) values (14, 'Máquina de Secar', 2);
insert into dbo.produtos (id, name, category_id) values (15, 'O Romance Exagerado', 3);
insert into dbo.produtos (id, name, category_id) values (16, 'Suspense Demais', 3);
insert into dbo.produtos (id, name, category_id) values (17, 'Terror Aterrorizante', 3);
insert into dbo.produtos (id, name, category_id) values (18, 'A Comédia Engraçada', 3);
insert into dbo.produtos (id, name, category_id) values (19, 'A História de SQL', 3);
insert into dbo.produtos (id, name, category_id) values (20, 'Ai-Fone', 4);
insert into dbo.produtos (id, name, category_id) values (21, 'Galáxia R10', 4);
insert into dbo.produtos (id, name, category_id) values (22, 'Chiai-homi', 4);
insert into dbo.produtos (id, name, category_id) values (23, 'Ruaei', 4);
insert into dbo.produtos (id, name, category_id) values (24, 'Nóquia', 4);
insert into dbo.produtos (id, name, category_id) values (25, 'Mouse', 5);
insert into dbo.produtos (id, name, category_id) values (26, 'Teclado', 5);
insert into dbo.produtos (id, name, category_id) values (27, 'Pen-Drive', 5);
insert into dbo.produtos (id, name, category_id) values (28, 'Impressora', 5);
insert into dbo.produtos (id, name, category_id) values (29, 'HD Externo', 5);
insert into dbo.produtos (id, name, category_id) values (30, 'Poltrona', 6);
insert into dbo.produtos (id, name, category_id) values (31, 'Almofada', 6);
insert into dbo.produtos (id, name, category_id) values (32, 'Cadeira', 6);
insert into dbo.produtos (id, name, category_id) values (33, 'Sofá', 6);
insert into dbo.produtos (id, name, category_id) values (34, 'Mesa', 6);
insert into dbo.produtos (id, name, category_id) values (35, 'Video-Game', 7);
insert into dbo.produtos (id, name, category_id) values (36, 'Máquina Fotográfica', 7);
insert into dbo.produtos (id, name, category_id) values (37, 'Notebook', 7);
insert into dbo.produtos (id, name, category_id) values (38, 'PC', 7);
insert into dbo.produtos (id, name, category_id) values (39, 'Secador de Cabelo', 7);
insert into dbo.produtos (id, name, category_id) values (40, 'Chuteira', 8);
insert into dbo.produtos (id, name, category_id) values (41, 'Tornozeleira', 8);
insert into dbo.produtos (id, name, category_id) values (42, 'Raquete', 8);
insert into dbo.produtos (id, name, category_id) values (43, 'Bola', 8);
insert into dbo.produtos (id, name, category_id) values (44, 'Pebolim', 8);
insert into dbo.produtos (id, name, category_id) values (45, 'Futebol 2020', 9);
insert into dbo.produtos (id, name, category_id) values (46, 'Iôiô', 9);
insert into dbo.produtos (id, name, category_id) values (47, 'Peão', 9);
insert into dbo.produtos (id, name, category_id) values (48, 'Bey-Blade', 9);
insert into dbo.produtos (id, name, category_id) values (49, 'Casinha de Boneca', 9);


insert into  [dbo].[Categoria] (Id,name) values(0,'Moda e Acessórios')
insert into  [dbo].[Categoria] (Id,name) values(1,'Cosméticos e Perfumaria')
insert into  [dbo].[Categoria] (Id,name) values(2,'Eletrodomésticos')
insert into  [dbo].[Categoria] (Id,name) values(3,'Livros')
insert into  [dbo].[Categoria] (Id,name) values(4,'Celulares')
insert into  [dbo].[Categoria] (Id,name) values(5,'Informática')
insert into  [dbo].[Categoria] (Id,name) values(6,'Casa e Decoração')
insert into  [dbo].[Categoria] (Id,name) values(7,'Eletrônicos')
insert into  [dbo].[Categoria] (Id,name) values(8,'Esporte e Lazer')
insert into  [dbo].[Categoria] (Id,name) values(9,'Brinquedos e Games')

use [Teste]
create table vendas
(id int primary key not null, --chave unica garante que não se repitam
product_id int not null, 
Cliente varchar (50),
data_compra date not null,
valor_total money not null
);

INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (0,28,'Luana','2010-01-01',186);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (1,29,'Marta','2001-09-11',110);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (2,38,'Luana','2005-12-12',385);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (3,37,'Frida','2002-07-01',493);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (4,28,'Daniela','2050-02-11',186);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (5,18,'Romário','2004-12-11',20);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (6,24,'Marcelo','2005-06-15',2663);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (7,44,'Cristiano','1950-08-17',164);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (8,23,'Everton','1964-07-11',2795);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (9,6,'Gabriela','2010-02-14',15);
INSERT INTO [Teste].dbo.vendas (id,product_id,cliente,data_compra,valor_total) VALUES (10,44,'Luan','2015-05-16',82);

select 
t1.id,
t1.product_id,
t1.Cliente,
t1.data_compra,
t2.name,
t3.name,
t1.valor_total
from dbo.vendas as t1
right join dbo.produtos as t2 on t1.product_id = t2.id
right join dbo.categoria as t3 on t3.id = t2.category_id
order by 1

-
