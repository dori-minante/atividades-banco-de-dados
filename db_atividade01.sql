CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(50),
salario DECIMAL(10,2),
data_admissao DATE,
departamento VARCHAR(50),
PRIMARY KEY(id)
)

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao, departamento)
VALUES ("Lucas da Silva", "Auxiliar de Recursos Humanos", 2300.00, "2021-05-21", "RH"),
("Vanessa Albuquerque", "Assistente Administrativo", 3300.00, "2020-08-29", "Administração"),
("Bruna Ribeiro", "Desenvolvedora", 6300.00, "2022-08-02", "TI"),
("João dos Santos", "Gerente de vendas", 6500.00, "2019-04-07", "Vendas"),
("Maria dos Santos", "Analista Financeiro", 3500.00, "2018-04-06", "Finanças"),
("Aline Vieira", "Vendedora", 1800.00, "2022-03-09", "Vendas"),
("Bianca Martins", "Estagiária", 1200.00, "2022-03-09", "TI"),
("Anderson Silva", "Estagiário", 1200.00, "2022-03-09", "TI");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 7;
