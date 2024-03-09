CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100),
    PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Desenvolvimento Web', 'Cursos relacionados ao desenvolvimento web'),
('Administração', 'Cursos de administração'),
('Design Gráfico', 'Cursos de design gráfico e ferramentas'),
('Marketing Digital', 'Cursos sobre marketing digital e estratégias online'),
('Idiomas', 'Cursos de idiomas e linguagens estrangeiras');

CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT,
    nome_curso VARCHAR(50) NOT NULL,
    descricao_curso VARCHAR(100),
    valor DECIMAL(8, 2) NOT NULL,
    id_categoria INT,
    PRIMARY KEY(id_curso),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_cursos (nome_curso, descricao_curso, valor, id_categoria) VALUES
('Curso de Desenvolvimento Web com Java', 'Aprenda a desenvolver aplicações web com Java', 1800.00, 1),
('Administração básica', 'Administração básica', 950.00, 2),
('Curso de Design Gráfico', 'Domine o Design gráfico', 550.00, 3),
('Curso de Marketing Digital para Iniciantes', 'Introdução ao marketing digital e suas estratégias', 350.00, 4),
('Inglês', 'Curso completo de inglês para iniciantes', 1200.00, 5),
('Curso de PHP para Desenvolvedores', 'Aprenda PHP do básico ao avançado', 730.00, 1),
('Administração avançada', 'Administração avançada', 650.00, 2),
('Curso de Photoshop', 'Edição de imagens com Adobe Photoshop', 200.00, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Programação';