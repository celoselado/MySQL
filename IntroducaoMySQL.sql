CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
		
        id BIGINT AUTO_INCREMENT, 
        
        nome VARCHAR(255),
        
        idade INT(2),
        
        salario DECIMAL(8,2),
        
        cargo VARCHAR(255),

		PRIMARY KEY(id)
        
);

INSERT INTO tb_colaboradores(nome,idade,salario,cargo)
VALUES("Marcelo Alexandre",19,4000.99,"Desenvolvedor");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

ALTER TABLE tb_colaboradores
MODIFY COLUMN salario DECIMAL (10,2);

UPDATE tb_colaboradores
SET salario = 9000.67
WHERE id = 4;

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- E-COMMERCE 

CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos(

		id BIGINT AUTO_INCREMENT,
        
        nome VARCHAR(255),
        
        quantia BIGINT,
        
        cores VARCHAR(255),
        
        valor DECIMAL(4,2),
        
        PRIMARY KEY(id)
        
);

ALTER TABLE  tb_produtos
MODIFY COLUMN valor DECIMAL(10,2);

INSERT INTO tb_produtos(nome,quantia,cores,valor)
VALUES ("Ventilador",55,"Branco/Preto",200.00);

UPDATE tb_produtos
SET valor = 20.00
WHERE id = 2;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

CREATE DATABASE db_escola;

CREATE TABLE tb_alunos(
		
        id BIGINT AUTO_INCREMENT,
        
        nome VARCHAR(255),
        
        idade int(2),
        
        ano int,
        
        turma int,
        
        media DECIMAL(4,2),
        
        PRIMARY KEY(id)

);

INSERT INTO tb_alunos(nome,idade,ano,turma,media)
VALUES ("Fujitsu",12,8,2,4);

SELECT * FROM tb_alunos;

Select * FROM tb_alunos WHERE media < 7;

Select * FROM tb_alunos WHERE media > 7;

UPDATE tb_alunos
SET media = 7.8
WHERE id = 7;


