CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100),
    PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Ferragens', 'Itens de ferragem'),
('Elétrica', 'Produtos elétricos'),
('Hidráulica', 'Materiais hidráulicos'),
('Madeiras', 'Madeiras'),
('Acabamentos', 'Produtos de acabamento para construção');

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
('Parafuso', 'Parafuso para fixação', 1.20, 1),
('Fio Elétrico 2.5mm Maxfio', 'Fio para instalações elétricas', 72.80, 2),
('Vaso Sanitário Max', 'Vaso para banheiro', 150.00, 3),
('Tábua de Pinus', 'Tábua de madeira para construção', 33.00, 4),
('Tinta Acrílica Branca', 'Tinta para acabamento', 89.00, 5),
('Chave de fenda', 'Chave para parafuso', 15.00, 1),
('Interruptor Simples', 'Interruptor para instalações elétricas', 8.50, 2),
('Cimento Max', 'Saco de cimento para construção', 40.00, 3);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Hidráulica';

