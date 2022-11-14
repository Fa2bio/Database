SELECT * FROM tipos_produtos;
SELECT codigo, descricao FROM tipos_produtos;

SELECT * FROM produtos;
SELECT codigo, descricao, codigo_tipo FROM produtos;

SELECT p.codigo AS cod, p.descricao AS descr, p.preco AS pre, p.codigo_tipo AS ctp FROM produtos AS p;