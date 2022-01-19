create database db_lista1_ex1;
use db_lista1_ex1;

-- Popular tabela com até 5 dados --
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    cargaHora decimal (3,2) not null,
    salario decimal(6,2) not null,
    primary key (id)
);

INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Fulana","Gerente",8.00,8000.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Siclano","Cordenador",8.00,5000.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Beltrano","Analista de Documentação",8.00,2600.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Zé","Assistente Administrativo",8.00,1700.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Palhares","Estagiário",6.00,900.00);

-- Faça um select que retorne os funcionários com salário maior que 2000 --
select * from tb_funcionarios where salario > 2000.00;

-- Faça um select que retorne os funcionários com salário menor que 2000 --
select * from tb_funcionarios where salario < 2000.00;

-- Atualizar um dado desta tabela através de uma query de atualização --
update tb_funcionarios set salario = 1000.00 where id = 5;