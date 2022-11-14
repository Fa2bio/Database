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