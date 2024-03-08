CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100),
    PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
("Medicamentos", "Medicamentos diversos para tratamento de saúde"),
("Cosméticos", "Produtos de beleza e cuidados com a pele"),
("Higiene Pessoal", "Itens para higiene pessoal e cuidados diários"),
("Vitaminas e Suplementos", "Suplementos nutricionais e vitaminas para bem-estar"),
("Cuidados Capilares", "Produtos para cuidados com os cabelos");

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
("Paracetamol", "Analgésico e antitérmico", 10.00, 1),
("Shampoo Anti-Caspa", "Tratamento para couro cabeludo com caspa", 15.00, 5),
("Creme Hidratante Facial", "Hidratação intensiva para o rosto", 25.00, 2),
("Escova de Dentes Elétrica", "Para uma escovação mais eficaz", 50.00, 3),
("Multivitamínico", "Suplemento vitamínico completo", 30.00, 4),
("Sabonete Líquido Antibacteriano", "Limpeza eficaz contra bactérias", 8.00, 3),
("Máscara Capilar Nutritiva", "Para cabelos secos e danificados", 35.00, 5),
("Protetor Solar FPS 50", "Proteção solar para a pele", 40.00, 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Cosméticos";
