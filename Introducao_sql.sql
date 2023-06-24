create database banco_teste;

use banco_teste;

create table pessoa(
	nome varchar(50),
    idade int,
    sexo char(1),
    peso double
);

drop table pessoa;

create table produto(
	descricaoProduto varchar(100),
    preco double(6,2),
    status_pedido enum("Entregue","Preparando","Saiu para entrega","Cancelado")
);

insert into produto values("Sanduiche", 2.50, "Entregue");

insert into pessoa(nome, idade, sexo, peso) values ("Igor", 32, 'M', 60);
insert into pessoa values("Laura", 29, 'F', 50),
("Beatriz", 32, 'F', 55),
("Bruna", 23, 'F', 53),
("Isabela", 22, 'F', 60),
("Naara", 31, 'F', 57),
("Emily", 24, 'F', 51),
("Maria dos Santos Ferreira Bastos",45,'F',80),
("Julia",19,'F',59);

desc pessoa;

desc produto;

select * from pessoa;

select distinct nome from pessoa;

select distinct nome from pessoa where idade = 23; 

select sexo from pessoa where nome = "Igor";

select sexo from pessoa where nome like "%Santos%";

select * from produto;

select * from pessoa where sexo = 'M' or idade > 23;

select * from pessoa where sexo = 'M' and idade > 23;

select count(*) "Quantidade de Pessoas" from pessoa;

create database atividade_sql;

use atividade_sql;

create table pessoa(
	nome varchar(50),
    idade int,
    telefone varchar(15), 
    endereco varchar(70),
    email varchar(150)
);

insert into pessoa values ("Laura",23,"998567633"," Quadra 210 Cruzeiro","laura@gmail.com"),
("Bruna",33,"998567633","Quadra 22 Gama","bruna@gmail.com"),
("Naara",13,"998567633","Quadra 713 Asa Sul","naara@gmail.com"),
("Isabel",37,"998567633","Quadra 716 Asa Norte","isa@gmail.com"),
("Julia",63,"998567633","Taguatinga","julia@gmail.com"),
("Igor",83,"998567633","Aguas Claras","igor@gmail.com"),
("Emily",89,"998567633","Sobradinho","emily@gmail.com"),
("Erika",45,"998567633","Ceilândia","erika@gmail.com"),
("Beatriz",81,"998567633","Santa Maria","beatriz@gmail.com"),
("Paula",66,"998567633","Guará","paula@gmail.com"),
("Cristina",90,"998567633","Planaltina","cristina@gmail.com");

select * from pessoa;

select * from pessoa where endereco = "Gama" or idade < 18;

insert into pessoa values("Laura",23,"998567633","Cruzeiro","laura@gmail.com");

insert into pessoa values("",23,"998567633","Cruzeiro",""),("",100,"","Plano Piloto","");

select count(*) "Quantidade de Pessoas" from pessoa;

select * from pessoa where idade = 83;

select * from pessoa where email = "";

select * from pessoa where telefone = "";

select nome, telefone from pessoa where endereco = "Gama";

select count(*) as Qtd from pessoa where endereco like "%am%";

select nome from pessoa order by nome desc;

select nome from pessoa order by nome asc;

select endereco from pessoa order by endereco asc;

select count(*) as Qtd, nome from pessoa where idade < 30 group by nome;

select nome from pessoa where email is null;

SET SQL_SAFE_UPDATES = 0;
update pessoa set email = "superIgor@hotmail.com" where nome = "Igor";

update pessoa set endereco = "Quadra 300 Cruzeiro" where nome = "Laura";

update pessoa set email = "cruzeiro@gmail.com" where endereco = "Cruzeiro";

update pessoa set email = "plano@hotmail.com" where endereco = "Plano Piloto";

update pessoa set telefone = 618976776 where endereco = "Plano Piloto";

create table produto(
	nome_do_produto varchar(30),
    preco double
);

desc produto;

alter table produto add quantidade int;

alter table produto rename column preco to preco_produto; 

alter table produto rename column preco_produto to preco_do_produto;



