CREATE DATABASE db_generation_game;

USE db_generation_game;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT,
nome VARCHAR(120),

PRIMARY KEY (id));

INSERT INTO tb_classes(nome) VALUES("Arqueiro");

INSERT INTO tb_classes(nome) VALUES("Feiticeiro");

INSERT INTO tb_classes(nome) VALUES("Guerreiro");

INSERT INTO tb_classes(nome) VALUES("Mago");

INSERT INTO tb_classes(nome) VALUES("Assassino");


ALTER TABLE tb_classes ADD descricao VARCHAR (200);

SELECT * FROM tb_classes;

UPDATE tb_classes SET descricao = "classe com baixa resistência e alto dano" WHERE id=1;
UPDATE tb_classes SET descricao = "classe com alta resistência" WHERE id=5;
UPDATE tb_classes SET descricao = "classe com baixa resistência e altíssimo dano" WHERE id=3;
UPDATE tb_classes SET descricao = "classe com baixa resistência, furtividade" WHERE id=4;
UPDATE tb_classes SET descricao = "classe com alta resistência, baixo dano, uso de magia" WHERE id=2;


CREATE TABLE tb_personagens( 
id bigint AUTO_INCREMENT,
nome VARCHAR(150),
poder_ataque INT,
poder_defesa INT,
agilidade INT,
classes_id INT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Elfiew", 1600, 1560, 850);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Downer", 2500, 3000, 950);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Yelow", 1100, 2000, 300);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Hatly", 4000, 3800, 800);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Dastro", 1000, 8000, 1000);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Klastro", 4100, 4100, 950);

SELECT * FROM tb_personagens;

UPDATE tb_personagens SET classes_id = 5  WHERE id=1;
UPDATE tb_personagens SET classes_id = 5  WHERE id=2;
UPDATE tb_personagens SET classes_id = 3  WHERE id=3;
UPDATE tb_personagens SET classes_id = 1  WHERE id=4;
UPDATE tb_personagens SET classes_id = 2  WHERE id=5;
UPDATE tb_personagens SET classes_id = 3  WHERE id=6;
UPDATE tb_personagens SET classes_id = 3  WHERE id=7;
UPDATE tb_personagens SET classes_id = 1  WHERE id=8;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000 ORDER BY agilidade DESC;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

UPDATE tb_personagens SET classes_id = 4  WHERE id=4;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.nome = "Mago";











