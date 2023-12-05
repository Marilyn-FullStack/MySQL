-- CRIANDO BANCO DE DADOS 
CREATE DATABASE  db_pizzaria_legal;

-- COLOCANDO O BANCO DE DADOS EM USO
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
tamanhos varchar(255),
PRIMARY KEY (id)
);
-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (tipo, tamanhos)
VALUES ("Gourmet", "Pequena"),
("Gourmet", "Média"),
("Gourmet", "Grande"),
("Tradicional", "Pequena"),
("Tradicional", "Média"),
("Tradicional", "Grande"),
("Doces", "Pequena"),
("Doces", "Média"),
("Doces", "Grande");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    sabor varchar(255) NOT NULL,
    borda varchar(255),
    ingredientes varchar(255),
    preco decimal(4,2),
    categorias_id bigint,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_pizzas
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, categorias_id)
VALUES ("Calabresa", "Recheada", "Calabresa fatiada e Cebola", 39.99, 1),
("Calabresa", "Recheada", "Calabresa fatiada e Cebola", 49.99, 2),
("Calabresa", "Recheada", "Calabresa fatiada e Cebola", 59.99, 3),
("4Queijos", "Recheada", "Mussarela, Parmesão, Philadelphia e Provolone", 59.99, 4),
("4Queijos", "Sem Recheio", "Mussarela, Parmesão, Philadelphia e Provolone", 69.99, 5),
("4Quejos", "Recheada", "Mussarela, Parmesão, Philadelphia e Provolone", 85.99, 6),
("Sensação", "Recheada", "Chocolate ao leite, Morango e Granulado", 55.99, 7),
("Sensação", "Sem Recheio", "Chocolate ao leite, Morango e Granulado", 49.99, 8),
("Sensação", "Sem Recheio", "Chocolate ao leite, Morango e Granulado", 59.99, 9);
SELECT * FROM tb_pizzas;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja menor do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco < 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100 ORDER BY preco;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT sabor, borda, ingredientes, preco, tb_categorias.tipo 
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id;

-- SELECT utilizando e cláusula INNER JOIN.
SELECT sabor, borda, ingredientes, preco, tb_categorias.tipo 
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doces";
