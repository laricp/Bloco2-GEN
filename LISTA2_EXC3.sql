create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint not null auto_increment,
	descricao varchar(255) not null,
    ativo boolean,    
    primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) VALUES ("antibiótico", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("antihistamínico", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("higiene pessoal", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("beleza", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("energético", true);

create table tb_produtos(
	id bigint not null auto_increment,
    nome varchar(255) not null,
    dataCadastro date,
    quantidade int,
    preco decimal(7,2) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Amoxilina", current_date(), 100, 19.90, 1);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Shampoo", current_date(), 150, 26.50, 3);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Allegra", current_date(), 200, 22.00, 2);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Esponja de Banho", current_date(), 200, 59.90, 3);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Red Bull", current_date(), 40, 8.90, 5);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Rímel CHUCHU BELEZA", current_date(), 30, 23.50, 4);

select * from tb_produtos;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_produtos where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_produtos where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA B
select * from tb_produtos where nome like "%b%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;