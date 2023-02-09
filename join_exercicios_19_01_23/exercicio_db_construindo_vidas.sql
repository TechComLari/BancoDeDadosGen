CREATE SCHEMA db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
nome_categoria VARCHAR(50),

PRIMARY KEY (id));

ALTER TABLE tb_categorias ADD tipo VARCHAR (150);
ALTER TABLE tb_categorias CHANGE nome descricao VARCHAR(100);
ALTER TABLE tb_categorias CHANGE tipo ambiente VARCHAR(50);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao) VALUES("pisos");
INSERT INTO tb_categorias(descricao) VALUES("tintas");
INSERT INTO tb_categorias(descricao) VALUES("ferramentas");
INSERT INTO tb_categorias(descricao) VALUES("elétrica");
INSERT INTO tb_categorias(descricao) VALUES("hidráulica");

UPDATE tb_categorias SET ambiente = "interno" WHERE id=1;
UPDATE tb_categorias SET ambiente = "interno e externo" WHERE id=2;
UPDATE tb_categorias SET ambiente = "interno e externo" WHERE id=3;
UPDATE tb_categorias SET ambiente = "externo" WHERE id=4;
UPDATE tb_categorias SET ambiente = "interno e externo" WHERE id=5;


CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome VARCHAR(150),
desc_produto VARCHAR (200),
valor DECIMAL (8,2),
fabricante VARCHAR (50),
categorias_id INT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Cerâmica", "tipo A, acetinada, 58x58", 41.90, "INCENOR",1);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Porcelanato", "tipo A, 71.6x71.6", 89.90, "VILLAGRES",1);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Canaleta", "110x20x200mm com divisória adesivada", 104.00, "LEGRAND",4);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Corante", "base água, laranja, 50ml",7.00,"CORAL",2);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Arco de serra", "12 polegadas com lâmina K140",44.90,"STARRET",3);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Caixa d'água", "tampa, polietileno, 500L", 257.00,"FORTLEV",5);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Motoserra", "bateria LXT 5.0AH, 18V 100-240V",2822.00,"MAKITA",3);
INSERT INTO tb_produtos (nome, desc_produto, valor, fabricante, categorias_id) VALUES ("Chuveiro", "braço e crivo redondo, jato articulado", 379.00, "FABRIMAR",5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 100.00 ORDER BY valor ASC;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00 ORDER BY valor ASC;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.descricao = "hidráulica" ORDER BY valor ASC;

