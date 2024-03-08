CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100),	
    PRIMARY KEY(id_categoria)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
("Salgada", "Pizzas salgadas"),
("Doce", "Pizzas doces"),
("Vegetariana", "Pizzas sem carne, com ingredientes vegetarianos"),
("Especial", "Pizzas especiais com ingredientes exclusivos"),
("Mini-pizza", "Pizzas pequenas");

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    descricao_pizza VARCHAR(100),
    valor DECIMAL(8, 2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, valor, id_categoria) VALUES
("Margarita", "Molho de tomate, muçarela e manjericão", 35.00, 1),
("Quatro Queijos", "Muçarela, provolone, parmesão e gorgonzola", 40.00, 1),
("Brigadeiro", "Chocolate ao leite e granulado", 60.00, 2),
("Vegetariana Especial", "Abobrinha, berinjela, tomate e muçarela", 46.00, 3),
("Frango com Catupiry", "Frango desfiado, catupiry e milho", 50.00, 1),
("Calabresa", "Calabresa, cebola, molho de tomate e azeitona", 42.00, 1),
("Banana Caramelada", "Banana, creme de avelã e calda de caramelo", 55.00, 2),
("Mini-pizza de Presunto e Queijo", "Presunto, muçarela e molho de tomate", 23.00, 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';