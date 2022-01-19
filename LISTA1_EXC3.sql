create database db_lista1_ex3;
use db_lista1_ex3;

-- Crie uma tabela com 5 atributos dos estudantes --
create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    periodo varchar(30) not null,
    turma int not null,
    nota decimal (3,2) not null,
    primary key (id)
);

-- Popule esta tabela com até 8 dados --
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Fulaninha","Matutino",2,8.5);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Zé","Vespertino",1,4.5);
INSERT INTO tb_estudantes (nome, periodo, turma, nota) VALUES ("Cazé","Noturno",3,7.5);

-- Faça um select que retorne os estudantes com a nota > 7 --
select * from tb_estudantes where nota > 7;

-- Faça um select que retorne os estudantes com a nota < 7 -- 
select * from tb_estudantes where nota < 7;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_estudantes set nota = 9 where id = 3;