-- Criar o banco de dados
CREATE DATABASE db_construindo_vidas;

-- Usar o banco de dados criado
USE db_construindo_vidas;

-- Criar a tabela de produtos
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Criar a tabela de categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Inserir algumas categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Ferragens', 'Produtos de ferragem para construção'),
    ('Material Elétrico', 'Itens elétricos para construção'),
    ('Tintas', 'Diversos tipos de tintas para pintura'),
    ('Ferramentas', 'Ferramentas diversas para construção');

-- Inserir alguns produtos relacionados às categorias
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id) VALUES
    ('Martelo', 50, 90.99, 1),
    ('Fio Elétrico', 100, 100.99, 2),
    ('Tinta Acrílica', 20, 29.99, 3),
    ('Chave de Fenda', 30, 8.99, 4),
    ('Parafuso', 500, 7.10, 1);
    
SELECT * FROM tb_produtos WHERE preco > 100;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (por exemplo, Ferragens).
SELECT 
    tb_produtos.nome, 
    tb_produtos.quantidade, 
    CONCAT('R$ ', FORMAT(tb_produtos.preco, 2, 'pt-BR')) AS preco, 
    tb_categorias.descricao AS categoria
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Ferragens';
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT 
    tb_produtos.nome, 
    tb_produtos.quantidade, 
    CONCAT('R$ ', FORMAT(tb_produtos.preco, 2, 'pt-BR')) AS preco, 
    tb_categorias.descricao AS categoria
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

