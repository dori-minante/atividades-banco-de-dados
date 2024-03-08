CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    habilidade_especial VARCHAR(100),
    nivel_personagem INT NOT NULL,
    PRIMARY KEY(id_classe)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (nome, habilidade_especial, nivel_personagem) VALUES
("Midas", "Trasnforma tudo que toca em ouro", 55),
("Mago", "Magia", 20),
("Valentin", "Super força", 25),
("Vamp", "Se transforma em tudo que toca", 30),
("Verdana", "Domina a natureza", 60),
("Run", "Alta velocidade", 35);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe BIGINT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES
("Golias", 2500, 1100, 1),
("Mestre", 1500, 800, 2),
("Valentino", 2600, 1600, 3),
("Vampire", 1900, 1200, 4),
("Verde", 2500, 1500, 5),
("Runner", 2100, 900, 6),
("Zeus", 2400, 1300, 1),
("Morgana", 2300, 1000, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome = "Mago";




