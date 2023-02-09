CREATE DATABASE exercicio2;

USE exercicio2;

CREATE TABLE produtos(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
valor DECIMAL(8,2) NOT NULL, 
catergoria VARCHAR (50),
frete_gratis BOOLEAN NOT NULL,

PRIMARY KEY (id)

);

ALTER TABLE `produtos` CHANGE `catergoria` `categoria` VARCHAR (50);

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Sapato','549.90','esportes','0');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Abridor','24.90','utensilios','1');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Camisa','179.90','vestuario','0');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Iphone','3899.99','informatica','0');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Geladeira','3199.00','eletrodomesticos','0');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Rack','449.88','moveis','0');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Caderno','19.99','material escolar','1');

INSERT INTO produtos(nome, valor, categoria, frete_gratis) 
VALUES('Prancha de cabelo','249.90','beleza e perfumaria','0');

SELECT * FROM produtos;

SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET valor = 1299.99 WHERE id=1;










