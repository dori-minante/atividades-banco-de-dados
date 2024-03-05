CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
sala INT NOT NULL,
curso VARCHAR(50) NOT NULL,
nota_media FLOAT NOT NULL,
PRIMARY KEY(id)
)

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos (nome, idade, sala, curso, nota_media)
VALUES ("André João da Silva", 12, 2, "Ensino Fundamental II", 9),
("Sabrina Figueiredo", 15, 5, "Ensino Médio", 9.5),
("Bruno Lima Alves", 8, 1, "Ensino Fundamental I", 6),
("André João da Silva", 12, 2, "Ensino Fundamental II", 9),
("Bianca Ribeiro dos Santos", 17, 7, "Ensino Médio", 3),
("Vanessa Queiroz", 12, 2, "Ensino Fundamental II", 4),
("Gabriel Villa", 16, 6, "Ensino Médio", 5),
("Camilla Albuquerque", 14, 3, "Ensino Fundamental II", 10),
("Larissa da Silva", 16, 6, "Ensino Médio", 7);

SELECT * FROM tb_alunos WHERE nota_media > 7.0;

SELECT * FROM tb_alunos WHERE nota_media < 7.0;

UPDATE tb_alunos SET nota_media = 3 WHERE id = 9;

SELECT * FROM tb_alunos ORDER BY nome ASC;
