CREATE DATABASE exercicio3;

USE exercicio3;

CREATE TABLE estudantes(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
nota DECIMAL(4,2) NOT NULL,
data_nascimento DATE NOT NULL,
email VARCHAR(100),

PRIMARY KEY (id)	

);

ALTER TABLE estudantes DROP COLUMN cpf;

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('Larissa','9.75','1985-03-26','larissa.soares@gmail.com');

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('Zuma','10.00','1998-12-27','zumal@gmail.com');

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('Roberto','9.50','1997-03-17','roberto@gmail.com');

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('William','9.25','1997-09-27','william@gmail.com');

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('Rael','6.25','1995-09-15','rael@gmail.com');

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('Rogério','8.75','1995-02-06','rogerio@gmail.com');

INSERT INTO estudantes(nome, nota, data_nascimento, email) 
VALUES('Maya','9.00','1984-07-26','maya@gmail.com');

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE nota > 7.00;

SELECT * FROM estudantes WHERE nota < 7.00;

UPDATE estudantes SET nota = 6.75 WHERE id=5;