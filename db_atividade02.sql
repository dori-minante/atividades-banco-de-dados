CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(50),
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
categoria VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
)

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ("Bola", "Bola Penalty", 100.00, 20, "Brinquedo"),
("Boneca", "Boneca Barbie", 550.00, 50, "Brinquedo"),
("Caderno", "Caderno Primavera - 10 matérias", 29.90, 35, "Papelaria"),
("Camiseta", "Camiseta Nike", 69.90, 13, "Roupa"),
("Tênis", "Tênis Adidas", 299.90, 10, "Calçados"),
("Caneta BIC", "Caneca BIC Azul", 1.50, 100, "Papelaria"),
("Garrafa", "Garrafa térmica", 28.90, 25, "Garrafas e Recipientes"),
("Fone de ouvido", "Fone de ouvido Sony", 78.90, 65, "Eletrônicos"),
("Teclado", "Teclado Redragon", 659.90, 18, "Eletrônicos");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;
