create database db_lista1_ex2;
use db_lista1_ex2;

-- Crie uma tabela com 5 atributos dos produtos --
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(30) not null,
    condicao varchar(30) not null,
    quantidade int not null,
    preco decimal (6,2) not null,
    primary key (id)
);

-- Popule esta tabela com até 8 dados -- 
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("GameBoy Color","Usado",7,350.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Mega Drive","Usado",10,400.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Playstation 5","Novo",20,4499.00);
INSERT INTO tb_produtos (nome, condicao, quantidade, preco) VALUES ("Aparelho VHS","Usado",6,125.00);

-- Faça um select que retorne os produtos com o valor maior que 500 --
select * from tb_produtos where preco > 500.00;

-- Faça um select que retorne os produtos com o valor menor que 500 --
select * from tb_produtos where preco < 500.00;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_produtos set preco = 80.00 where id = 4;