CREATE DATABASE secao04;

USE secao04;

CREATE TABLE tipos_produtos(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo int NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_tipo) REFERENCES tipos_produtos(codigo)
);

ALTER TABLE tipos_produtos ADD peso DECIMAL(8,2);
ALTER TABLE tipos_produtos DROP peso;

DROP TABLE tipos_produtos;
DROP TABLE produtos;
DROP SCHEMA secao04;