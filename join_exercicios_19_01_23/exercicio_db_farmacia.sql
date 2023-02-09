CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
descricao VARCHAR(120),

PRIMARY KEY (id));

INSERT INTO tb_categorias(descricao) VALUES("medicamentos");
INSERT INTO tb_categorias(descricao) VALUES("dermocosméticos");
INSERT INTO tb_categorias(descricao) VALUES("higiene_e_beleza");
INSERT INTO tb_categorias(descricao) VALUES("conveniência");
INSERT INTO tb_categorias(descricao) VALUES("fitness_e_nutricao");

SELECT * FROM tb_categorias;

ALTER TABLE tb_categorias CHANGE descricao nome VARCHAR(50);

ALTER TABLE tb_categorias ADD descricao VARCHAR (150);

UPDATE tb_categorias SET descricao = "medicamentos de uso geral" WHERE id=1;
UPDATE tb_categorias SET descricao = "produtos que agem no tratamento docabelo" WHERE id=2;
UPDATE tb_categorias SET descricao = "produtos que promovem bem-estar e conforto" WHERE id=3;
UPDATE tb_categorias SET descricao = "produtos diversos" WHERE id=4;
UPDATE tb_categorias SET descricao = "suplementos e vitaminas" WHERE id=5;


CREATE TABLE tb_produtos( 
id bigint AUTO_INCREMENT,
fabricante VARCHAR(150),
validade DATE,
descricao_produto VARCHAR(200),
valor_produto DECIMAL (6,2) NOT NULL,
categorias_id INT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Nutmix", "2024-02-20", "barra de cereal", 5.59, 5);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Valda", "2023-12-13", "pastilha valda", 22.49, 4);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Isdin", "2025-07-09", "protetor solar", 105.29, 2);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Sanofi Aventis", "2025-07-09", "anti-histamínico", 113.13, 1);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Tio Nacho", "2024-06-30", "shampoo fortalecedor", 29.49, 3);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Duracell", "2025-03-26", "bateria com 2 unidades", 29.99, 4);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Integral Médica", "2024-11-05", "suplemento creatina", 115.90, 5);

INSERT INTO tb_produtos(fabricante, validade, descricao_produto, valor_produto, categorias_id) 
VALUES ("Sanofi Aventis", "2023-11-17", "analgésico", 34.99, 1);

ALTER TABLE tb_produtos ADD COLUMN nome_produto VARCHAR(200);

UPDATE tb_produtos SET nome_produto = "Nutmix"  WHERE id=1;
UPDATE tb_produtos SET nome_produto = "Pastilhas Valda"  WHERE id=2;
UPDATE tb_produtos SET nome_produto = " Protetor Fusion Water"  WHERE id=3;
UPDATE tb_produtos SET nome_produto = " Allegra"  WHERE id=4;
UPDATE tb_produtos SET nome_produto = " Shampoo Fortalecedor Ervas Milenares"  WHERE id=5;
UPDATE tb_produtos SET nome_produto = " Bateria Duracell Cr2032"  WHERE id=6;
UPDATE tb_produtos SET nome_produto = " Creatina Hardcore"  WHERE id=7;

SELECT * FROM tb_produtos WHERE valor_produto > 50.00;

SELECT * FROM tb_produtos WHERE valor_produto BETWEEN 5.00 AND 60.00 ORDER BY valor_produto ASC;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.descricao = "medicamentos";




