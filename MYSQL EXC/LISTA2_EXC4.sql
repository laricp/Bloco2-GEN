create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) values ("Bovino",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Suíno",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Aves",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Pertence Feijoada",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Embutidos",true);


select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtProduto int not null,
dtValidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Asa", 40.00, 30, "2021-11-07", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Picanha", 20.00, 30, "2021-11-08", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Coxa de Frango", 20.00, 30, "2021-11-07", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Bacon", 30.00, 30, "2021-11-09", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Hamburguer",60.00, 30, "2021-09-07", 5);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Cupim", 20.00, 30, "2021-11-10", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Peito de Frango", 25.00, 30, "2021-11-09", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Orelha de Porco", 20.00, 30, "2021-11-07", 4);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Salame", 18.00, 30, "2021-11-21", 5);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Medalhão", 50.00, 30, "2021-11-15", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Mocotó", 20.00, 30, "2021-10-05", 2);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Chuleta", 20.00, 30, "2021-10-07", 1);

select * from tb_produtos;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 50.00
select * from tb_produtos where preco > 50;

-- SELECT PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
select * from tb_produtos where preco between 3 and 60;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA C
select * from tb_produtos where nome like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE CATEGORIA E PRODUTO
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 5;