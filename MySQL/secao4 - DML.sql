INSERT INTO tipos_produtos (descricao) VALUES ('Computador');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressora');
INSERT INTO tipos_produtos (descricao) VALUES ('Estabilizador');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', '500', 2);

UPDATE tipos_produtos SET descricao = 'Nobreak' WHERE codigo = 3; 
UPDATE produtos SET descricao = 'Impressora Laser', preco = 700 WHERE codigo = 4;

DELETE FROM tipos_produtos WHERE codigo = 3;

INSERT INTO profissoes (cargo) VALUES ('Programador');
INSERT INTO profissoes (cargo) VALUES ('Analista de Sistemas');
INSERT INTO profissoes (cargo) VALUES ('Suporte');
INSERT INTO profissoes (cargo) VALUES ('Gerente');

INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Joao Pereira', '1981-06-15', '1234-5678', 1);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Ricardo Da Silva', '1973-05-10', '2222-5188', 2);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Felipe Oliveira', '1988-05-01', '4234-5258', 3);
INSERT INTO clientes (nome, data_nascimento, telefone, id_profissao) VALUES ('Mário Pirez', '1968-01-12', '5234-5017', 1);

INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Alfredo Nunes', 'Maria Nunes', 'Rua da Paz, 47', 'São Paulo', '123.456-78', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Ana Trujillo', 'Guilherme Souza', 'Rua Dourada, 450', 'Goiânia', '232.984-23', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Leandro Veloz', 'Pedro Siqueira', 'Rua Vazia, 72', 'São Paulo', '936.738-23', 'Brasil');