-- Bloco 03 - DQL

SELECT * FROM tipos_produtos;
SELECT codigo, descricao FROM tipos_produtos;

SELECT * FROM produtos;
SELECT codigo, descricao, codigo_tipo FROM produtos;

SELECT * FROM produtos WHERE codigo_tipo = 2;
SELECT * FROM produtos WHERE codigo_tipo = 2 AND preco < 700;
SELECT p.codigo AS cod, p.descricao AS descr, p.preco AS pre, p.codigo_tipo AS ctp FROM produtos AS p;