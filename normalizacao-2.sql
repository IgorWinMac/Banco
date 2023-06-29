create database normas;

use normas;

/*
Para uma tabela estar na 1 forma normal, é necessário que não existam grupos de valores repetidos, 
seus valores devem ser atômicos "únicos" e a tabela deve possuir um id que identifique o dado como único.
*/

create table pessoaTeste(
	id integer primary key auto_increment,
    nome varchar(30),
    sobrenome varchar(50),
    idade int,
    sexo varchar(15),
    email varchar(100),
    cpf varchar(15) not null unique,
    cidade varchar(50),
    cep varchar(10),
    complemento varchar(100),
    logradouro varchar(100),
    estado varchar(50),
    uf char(2),
    telefone varchar(16),
    numero varchar(10),
    ddd char(3),
    celular varchar(50),
    comercial varchar(16)
);

insert into pessoaTeste values (null,"Igor", "Moreira", 32, 'M', "igor@gmail.com", "111.111.111-99","Gama","72.420-025","22",null,"distrito federal","df","34847799","34846688","061","998776633",null);

select * from pessoa;

/*
Para esta na segunda forma normal os atributos devem depender da chave primaria em sua totalidade não apenas parte dela
*/

create table pessoa5(
	idPessoa integer primary key auto_increment,
    nome varchar(50),
    sobrenome varchar(50),
    cpf varchar(14) not null unique,
    sexo varchar(10),
	id_endereco integer, foreign key (id_endereco) references endereco5(idEndereco)
);


create table endereco5(
	idEndereco integer primary key auto_increment,
    cep varchar(13),
    bairro varchar(100),
    cidade varchar(100),
    uf char(2)
    #id_pessoa integer, foreign key (id_pessoa) references pessoa5(idPessoa)
);


insert into pessoa5 values (null,"Igor","Moreira","111.666.555-44",'M',1),
(null,"Laura","Moura","555.666.555-44",'F',2),
(null,"Beatriz","Silva","888.666.555-44",'F',3),
(null,"Bruna","Lima","999.666.555-44",'F',4),
(null,"Naara","Soares","000.666.555-44",'F',5),
(null,"Isabela","Vieira","444.666.555-44",'F',6);

insert into endereco5 values(null, "72425-050","Centro","Oeste","df"),
(null, "72425-052","Centro","sul","df"),
(null, "72435-053","Centro","Oeste","df"),
(null, "72445-054","Centro","Leste","df"),
(null, "72455-055","Centro","Norte","df"),
(null, "72465-056","Centro","Central","df");

select * from pessoa5;

select * from endereco5;

select * from pessoa5 inner join endereco5 on pessoa5.id_endereco = endereco5.idEndereco;

create table telefone(
	idTelefone integer primary key auto_increment,
    ddd varchar(5),
    numero varchar(10),
    id_pessoa integer, foreign key(id_pessoa) references pessoa5(idPessoa)
);

insert into telefone values(null,"61","986777733",1),
(null,"61","986777733",33),
(null,"61","986777733",1),
(null,"61","986777733",30),
(null,"61","986777733",31),
(null,"61","986777733",31);

select * from telefone;

select * from pessoa5 inner join telefone on pessoa5.idPessoa = telefone.id_pessoa;

/*
Para a tabela estar na terceira forma normal ela precisa estar de acordo com a 1 e 2 forma normal 
não existir dependências transitivas e nenhum atributo não chave não pode depender de outro atributo não chave
*/

create table produto(
	idProduto integer primary key auto_increment,
    nome_produto varchar(50),
    quantidade int,
    valor double
    #total_estoque double
);












