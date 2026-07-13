-- Criar o banco de dados
CREATE DATABASE db_generation_game_online;

-- Selecionar o banco
USE db_generation_game_online;

-- Criar a tabela de classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

-- Criar a tabela de personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserir registros na tabela tb_classes (5 vocações estilo Tibia)
INSERT INTO tb_classes (nome, descricao) VALUES ("Knight", "Especialista em combate corpo a corpo");
INSERT INTO tb_classes (nome, descricao) VALUES ("Paladin", "Combina ataques à distância com boa defesa");
INSERT INTO tb_classes (nome, descricao) VALUES ("Sorcerer", "Usuário de magias ofensivas poderosas");
INSERT INTO tb_classes (nome, descricao) VALUES ("Druid", "Usuário de magias de suporte e cura");
INSERT INTO tb_classes (nome, descricao) VALUES ("Summoner", "Invocador de criaturas mágicas");

-- Inserir registros na tabela tb_personagens (nicks famosos de Empera)
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Nottinghster", 2500, 1800, 100, 1);   -- Knight
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Jah Widelux", 2400, 1700, 95, 1);   -- Knight
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Pato Malo", 3200, 900, 110, 3);    -- Sorcerer
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Tete Lindinha", 2100, 1000, 90, 5);-- Summoner
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Distorcedor de Mente", 3000, 950, 105, 3); -- Sorcerer
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Light Leader", 2200, 1300, 92, 2); -- Paladin
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Ian Spyked", 2100, 1400, 88, 2);   -- Paladin
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES ("Zena Daro", 2000, 1200, 85, 4);    -- Druid

-- Consultas

-- Personagens com poder de ataque > 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2150;

-- Personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Personagens cujo nome contém a letra "C"
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- INNER JOIN: unir personagens com classes
SELECT tb_personagens.nome, tb_classes.nome AS classe, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- INNER JOIN: personagens de uma classe específica (exemplo: Sorcerer)
SELECT tb_personagens.nome, tb_classes.nome AS classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Sorcerer";
