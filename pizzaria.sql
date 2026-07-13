-- Criar o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionar o banco
USE db_pizzaria_legal;

-- Criar a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

-- Criar a tabela de pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50),
    preco DECIMAL(6,2),
    borda VARCHAR(50),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES ("Tradicional", "Pizzas clássicas salgadas");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Doce", "Pizzas doces e sobremesas");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Premium", "Sabores especiais e gourmet");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Vegetariana", "Pizzas sem carne");
INSERT INTO tb_categorias (nome, descricao) VALUES ("Especial", "Combinações exclusivas da casa");

-- Inserir registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Calabresa", "Grande", 45.00, "Tradicional", 1);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Mussarela", "Média", 40.00, "Catupiry", 1);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Chocolate", "Grande", 55.00, "Doce", 2);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Romeu e Julieta", "Média", 60.00, "Doce", 2);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Quatro Queijos", "Grande", 70.00, "Catupiry", 3);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Vegetariana", "Grande", 50.00, "Tradicional", 4);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Frango com Catupiry", "Grande", 65.00, "Catupiry", 5);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Marguerita", "Média", 48.00, "Tradicional", 1);

-- Consultas pedidas no exercício

SELECT * FROM tb_pizzas;

-- Pizzas com valor > 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Pizzas com valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Pizzas cujo nome contém a letra M
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- INNER JOIN: unir pizzas com categorias
SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- INNER JOIN: pizzas de uma categoria específica (exemplo: Doce)
SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Doce";
