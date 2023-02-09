CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
nome_categoria VARCHAR(50),
contem_gluten BOOLEAN,

PRIMARY KEY (id));

INSERT INTO tb_categorias(nome_categoria) VALUES("doces");
INSERT INTO tb_categorias(nome_categoria) VALUES("tradicionais");
INSERT INTO tb_categorias(nome_categoria) VALUES("exclusivas");
INSERT INTO tb_categorias(nome_categoria) VALUES("premium");
INSERT INTO tb_categorias(nome_categoria) VALUES("veganas");

ALTER TABLE tb_categorias ADD contem_gluten BOOLEAN;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(contem_gluten) VALUES(0);
DELETE FROM `db_pizzaria`.`tb_categorias` WHERE (`id` = '6');

UPDATE tb_categorias SET contem_gluten = "0"  WHERE id=1;
UPDATE tb_categorias SET contem_gluten = "1"  WHERE id=2;
UPDATE tb_categorias SET contem_gluten = "0"  WHERE id=3;
UPDATE tb_categorias SET contem_gluten = "0"  WHERE id=4;
UPDATE tb_categorias SET contem_gluten = "1"  WHERE id=5;

CREATE TABLE tb_pizzas( 
id bigint AUTO_INCREMENT,
nome VARCHAR(150),
tipo_massa VARCHAR (50),
tamanho VARCHAR(200),
valor DECIMAL (6,2),
proteina VARCHAR (50),
queijo VARCHAR (50),
categorias_id INT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

DROP TABLE tb_pizzas;

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Rúcula com tomate cereja","grossa","pequena", 30.90, " ", "mussarela", 1);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Souza Santana", "pan","média", 59.90, "bacalhau", "mussarela", 5);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Nutella com morango", "fina", "grande", 60.90," ", "cream cheese",3);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Queijo com brocólis", "fina","gigante", 49.90," ", "mussarela de búfala", 4);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Bacon com queijo", "fina", "grande", 55.90, "bacoon", "mussarela e gruyere",2);

UPDATE tb_pizzas SET tipo_massa = "pan"  WHERE id=4;

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Bacon com Gorgonola","tradicional","gigante",101.90,"bacon", "gorgonzola",5);

UPDATE tb_pizzas SET nome = "Bacon com Gorgonzola"  WHERE id=6;

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Pepperoni","tradicional","grande",89.90," ", "parmesão", 1);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Caprese com tofu","tradicional","grande",67.90," ", "tofu", 4);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Caprese com tofu","tradicional","grande",67.90," ", "tofu", 4);

INSERT INTO tb_pizzas(nome, tipo_massa, tamanho, valor, proteina, queijo, categorias_id) 
VALUES ("Brigadeiro com M&M's","pan","grande",81.90," ", "muçarela", 3);

UPDATE tb_pizzas SET queijo = "muçarela"  WHERE id=1;
UPDATE tb_pizzas SET queijo = "muçarela"  WHERE id=2;
UPDATE tb_pizzas SET queijo = "muçarela de búfala"  WHERE id=4;
UPDATE tb_pizzas SET queijo = "muçarela e gruyere"  WHERE id=5;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00 ORDER BY valor ASC;
SELECT * FROM tb_pizzas WHERE valor BETWEEN  50.00 AND 100.00 ORDER BY valor ASC;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "veganas" ORDER BY nome;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "doces" ORDER BY nome;
