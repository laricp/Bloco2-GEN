
create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    classe varchar(30) not null,
    pontoVida int not null,
    primary key (id)
);

INSERT INTO tb_classe (classe, pontoVida) VALUES ("Bárbaro", 12);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Guerreiro", 10);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Mago", 4);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Clérigo", 8);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Gatuno", 8);

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    raça varchar(30) not null,
    poderAtq int not null,
    poderDef int not null,
    classe_id bigint,
	primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Torbjorn", "Anão", 8000, 1666, 1);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Haidor", "Humano", 1600, 2000, 2);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Chitara", "Khajiit", 2200, 1200, 5);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Presto", "Humano", 5000, 950, 3);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Papa Francisco", "Humano", 1900, 900, 4);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Gruntur", "Meio-Orc", 7100, 1500, 1);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Brunhilda", "Anão", 6600, 3500, 2);
INSERT INTO tb_personagem (nome, raça, poderAtq, poderDef, classe_id) VALUES ("Galadriel", "Elfo", 4600, 1800, 4);

select * from tb_personagem;

-- FAÇA UM SELECT QUE RETORNE OS PERSONAGENS COM O PODER DE ATAQUE MAIOR QUE 2000
select * from tb_personagem where poderAtq > 2000;

-- FAÇA UM SELECT QUE RETORNE OS PERSONAGENS COM O PODER DE DEFESA ENTRE 1000 E 2000
select * from tb_personagem where poderDef between 1000 and 2000;

-- FAÇA UM SELECT UTLIZANDO LIKE BUSCANDO OS PERSONAGENS COM A LETRA C -- 
select * from tb_personagem where nome like "%c%";

-- FAÇA UM INNER JOIN ENTRE A TABELA CLASSE E PERSONAGEM
select tb_personagem.nome, tb_personagem.raça, tb_personagem.poderAtq, tb_personagem.poderDef, tb_classe.classe, tb_classe.pontoVida from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PERSONAGENS DE UMA CLASSE ESPECÍFICA
select tb_personagem.nome, tb_personagem.raça, tb_personagem.poderAtq, tb_personagem.poderDef, tb_classe.classe, tb_classe.pontoVida from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;