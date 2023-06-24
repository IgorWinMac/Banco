# rename column: renomeia o nome de uma coluna. 
# drop: descarta o que for selecionado. 
#insert into values: insere valores na tabela. 
#create table: cria uma tabela caso não exista. 

create database estoque;

use estoque;

create  table produtos(
	descricao_produto varchar(50),
    unidade_medida double,
    valor_unitario double,
    qtd_produto int
);

alter table produtos drop column unidade_medida;

desc produtos;

alter table produtos add unidade_medida varchar(50);

insert into produtos values ("ssd", 2.50, 20, "1 tb"),
("pendrive", 25.70, 30, "900 mb"),
("monitor", 90.80, 10, "20 polegadas"),
("teclado", 75.90, 15, "15 cm"),
("mouse", 30.90, 20, "5 cm"),
("cadeira gamer", 930.50, 10, "80 kg");



delete from produtos where unidade_medida = "1.50 mt";

select * from produtos;

select concat(" A loja possui em seu estoque ", descricao_produto, " no valor de ", valor_unitario, " reais ", " com um quantidade de ", qtd_produto, " restantes ", " na seguinte capacidade de ", unidade_medida, " cada. ") from produtos;