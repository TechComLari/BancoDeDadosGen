CREATE DATABASE exercicio1;

USE exercicio1;

CREATE TABLE colaboradores (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
salário DECIMAL(8,2) NOT NULL,   /*são 8 números no total, destes 2 são após a vírgula */
cargo VARCHAR(50) NOT NULL,
setor VARCHAR(30),

PRIMARY KEY (id)

);

SELECT * FROM colaboradores;

INSERT INTO colaboradores(nome, salário, cargo, setor) 
VALUES('Larissa','1234.56','analista','Dados');

INSERT INTO colaboradores(nome, salário, cargo, setor) 
VALUES('Wagner','1234.56','instrutor','Aulas');

INSERT INTO colaboradores(nome, salário, cargo, setor) 
VALUES('Silceyde','12345.56','instrutora','Aulas');

INSERT INTO colaboradores(nome, salário, cargo, setor) 
VALUES('Renata','12340.56','aluna','Aulas');

INSERT INTO colaboradores(nome, salário, cargo, setor) 
VALUES('Katie','12534.56','aluna','Aulas');

DELETE FROM colaboradores WHERE id=1;

/*filtrar por salário maior que 2.000 e trazer todos os campos*/
SELECT * FROM colaboradores WHERE salário > 2000;

/*filtrar salário menor que 2000 e trazer apenas o campo nome*/
SELECT nome FROM colaboradores WHERE salário < 2000;

/*atualizar um registro desta tabela através de uma query de atualização*/
UPDATE colaboradores SET salário = 3000 WHERE id=2;