/*Criar o Banco de dados*/
CREATE DATABASE db_rh; 

/*Selecionar o Banco de dados*/
USE db_rh;

/*Criar a Tabela de colaboradores*/
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    turno VARCHAR(255),
    data_nascimento DATE,
    cargo VARCHAR(255),
    salario DECIMAL(6,2 )
);

/*Inserir dados na tabela (5 registros)*/
INSERT INTO tb_colaboradores(nome, turno, data_nascimento, cargo, salario)
VALUES ("elon musk", "integral", "1989-05-20", "mecanico", 1100.00),
("beyonce silva", "manha", "1990-08-05", "gerente", 5100.00),
("shakira souza", "noite", "2000-07-22", "diretora", 4100.00),
("edith piaf", "noite", "1979-12-10", "presidente", 8100.00),
("bjork oswald", "manha", "1997-03-27", "socia", 9100.00);
SELECT nome, CONCAT ('R$ ', FORMAT(salario, 'pt_BR')) AS pagamento FROM tb_colaboradores;

/*Selecionar todes os colaboradores*/
SELECT * FROM tb_colaboradores;

/*Selecionar todes os colaboradores cujo salário seja maior do que 2000*/
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

/*Selecionar todes os colaboradores cujo salário seja menor do que 2000*/
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

/*Atualizar os dados de um registro da tabela tb_colaboradores*/
UPDATE tb_colaboradores SET salario = 1999.90 WHERE id = 1;