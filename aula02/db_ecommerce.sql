/*Criar o Banco de dados*/
CREATE DATABASE db_ecommerce;

/*Selecionar o Banco de dados*/
USE db_ecommerce;

/*Criar a Tabela de produtos*/
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
flor VARCHAR(255) NOT NULL,
colheita DATE,
preco DECIMAL(5,2) NOT NULL
);

/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_produtos(nome, flor, colheita, preco)
VALUES ("buque", "rosas", "2023-12-03", 500.00),
("aranjo", "petuneas", "2023-11-03", 900.00),
("vaso grande", "orquideas", "2023-11-02", 880.00),
("buque noiva", "flores mistas", "2023-12-02", 100.00),
("vaso", "girasois", "2023-11-02", 250.00),
("vaso", "margaridas", "2023-11-02", 370.00),
("vaso", "rosa solitaria", "2023-11-02", 115.00);
SELECT nome, CONCAT (' R$ ' , FORMAT (preco, 'pt_BR')) AS preço FROM tb_produtos;

/*Selecionar todos os produtos*/
SELECT * FROM tb_produtos;

/*Selecionar todos os produtos cujo preço seja maior do que 500.00*/
SELECT * FROM tb_produtos WHERE preco > 500.00;

/*Selecionar todos os produtos cujo preço seja menor do que 500.00*/
SELECT * FROM tb_produtos WHERE preco < 500.00;

/*Atualizar os dados de um registro da tabela tb_produtos*/
UPDATE tb_produtos SET preco = 150.00 WHERE id = 6;

/* Modificar o nome de um Atributo da Tabela*/
UPDATE tb_produtos SET flor = "girassois" WHERE id = 5;