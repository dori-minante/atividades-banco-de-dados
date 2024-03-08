CREATE DATABASE db_\;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100),
    PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Carnes Bovinas', 'Produtos bovinos'),
('Carnes Suínas', 'Produtos suínos'),
('Aves', 'Frangos e outras aves'),
('Peixes e Frutos do Mar', 'Produtos marinhos'),
('Acompanhamentos', 'Itens diversos para acompanhar as carnes');

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto VARCHAR(100),
    valor DECIMAL(8, 2) NOT NULL,
    id_categoria INT,
    PRIMARY KEY(id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, descricao_produto, valor, id_categoria) VALUES
('Picanha', 'Corte nobre de carne bovina', 75.00, 1),
('Costela Suína', 'Costela suína temperada', 50.00, 2),
('Frango Assado', 'Frango preparado no forno', 48.00, 3),
('Salmão', 'Peixe salmão fresco', 105.00, 4),
('Batata Rústica', 'Batatas assadas e temperadas', 25.00, 5),
('Bisteca Suína', 'Corte suíno', 29.00, 2),
('Patinho', 'Carne bovina', 33.00, 4),
('Farofa', 'Farofa de acompanhamento', 15.00, 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Carnes Bovinas';