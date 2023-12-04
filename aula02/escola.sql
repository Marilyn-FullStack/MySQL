CREATE DATABASE escola;

USE escola;

CREATE TABLE escola(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    curso VARCHAR(50),
    nota FLOAT,
    data_matricula DATE
);

INSERT INTO escola (nome, idade, curso, nota, data_matricula) VALUES
    ("João Silva", 18, "Matemática", 8.5, '2023-01-15'),
    ("Maria Oliveira", 20, "História", 6.3, '2023-02-20'),
    ("Pedro Santos", 19, "Biologia", 7.8, '2023-03-10'),
    ("Ana Souza", 21, "Química", 9.2, '2023-04-05'),
    ("Carlos Lima", 22, "Física", 6.7, '2023-05-12'),
    ("Laura Pereira", 18, "Geografia", 8.9, '2023-06-18'),
    ("Miguel Costa", 20, "Português", 5.5, '2023-07-25'),
    ("Beatriz Rocha", 19, "Inglês", 7.2, '2023-08-30');
   
SELECT * FROM escola WHERE nota > 7.0;
SELECT * FROM escola WHERE nota < 7.0;

UPDATE escola SET curso = "Português" WHERE id = 3;
