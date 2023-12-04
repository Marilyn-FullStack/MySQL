CREATE DATABASE e_comerce;

USE e_comerce;

CREATE TABLE e_comerce(
id bigint AUTO_INCREMENT,
nome varchar(255),
flor varchar(255) NOT NULL,
colheita date,
preco decimal(5,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO e_comerce(nome, flor, colheita, preco)
VALUES ("buque", "rosas", "2023-12-03", 500.00),
("aranjo", "petuneas", "2023-11-03", 900.00),
("vaso grande", "orquideas", "2023-11-02", 880.00),
("buque noiva", "flores mistas", "2023-12-02", 100.00),
("vaso", "girasois", "2023-11-02", 250.00),
("vaso", "margaridas", "2023-11-02", 370.00),
("vaso", "rosa solitaria", "2023-11-02", 115.00);


SELECT * FROM e_comerce WHERE preco > 500.00;
SELECT * FROM e_comerce WHERE preco < 500.00;

 UPDATE e_comerce SET preco = 550.90 WHERE id = 2;