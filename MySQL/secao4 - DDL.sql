-- Bloco 04.5 - Consultas em Multiplas Tabelas
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

-- Bloco 04.5 - Consultas em Multiplas Tabelas (Joins)
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

-- Bloco 04.6 - Funções de Agregação
CREATE DATABASE agregacao;

USE agregacao;

CREATE TABLE categorias(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(60) NOT NULL,
    preco_venda DECIMAL(8,2) NOT NULL,
    preco_custo DECIMAL(8,2) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

-- Bloco 04.7 - Agrupagamento e Ordenação
CREATE DATABASE agrupamento;

USE agrupamento;

CREATE TABLE tipos(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE fabricantes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
    quantidade INT NOT NULL,
    id_fabricante INT NOT NULL,
    id_tipo INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id),
    FOREIGN KEY (id_tipo) REFERENCES tipos(id)
);

-- Bloco 04.9 - Sub Consultas
CREATE DATABASE subconsulta;

USE subconsulta;

CREATE TABLE escritorios(
	id INT NOT NULL AUTO_INCREMENT,
	pais VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE funcionarios(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(20) NOT NULL,
    sobrenome VARCHAR(20) NOT NULL,
    id_escritorio INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_escritorio) REFERENCES escritorios(id)
);

CREATE TABLE pagamentos(
	id INT NOT NULL AUTO_INCREMENT,
	salario DECIMAL(8,2) NOT NULL,
    data DATE NOT NULL,
	id_funcionario INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);


