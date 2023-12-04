CREATE DATABASE recursos_humanos;

USE recursos_humanos;

CREATE TABLE recursos_humanos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
turno varchar(255),
nascimento date,
salario decimal(6,2) NOT NULL,
PRIMARY KEY (id)	
);

INSERT INTO recursos_humanos(nome, turno, nascimento, salario)
VALUES ("elon musk", "integral", "1989-05-20", 1100.00),
("beyonce silva", "manha", "1990-08-05", 5100.00),
("shakira souza", "noite", "2000-07-22", 4100.00),
("edith piaf", "noite", "1979-12-10", 8100.00),
("bjork oswald", "manha", "1997-03-27", 9100.00);


SELECT * FROM recursos_humanos WHERE salario > 2000.00;
SELECT * FROM recursos_humanos WHERE salario < 2000.00;

 UPDATE recursos_humanos SET salario = 1900.90 WHERE id = 1;
