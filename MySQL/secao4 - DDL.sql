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

DROP TABLE produtos;
DROP TABLE tipos_produtos;
DROP SCHEMA secao04;

CREATE DATABASE juncao;

USE juncao;

CREATE TABLE profissoes(
	id INT NOT NULL AUTO_INCREMENT,
    cargo VARCHAR(60) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(10) NOT NULL,
	id_profissao INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_profissao) REFERENCES profissoes(id)
);

CREATE TABLE consumidor(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    contato VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
    cep VARCHAR(20) NOT NULL,
    pais VARCHAR(30) NOT NULL
);

DROP TABLE profissoes;
DROP TABLE clientes;
DROP TABLE consumidores;
DROP DATABASE juncao;