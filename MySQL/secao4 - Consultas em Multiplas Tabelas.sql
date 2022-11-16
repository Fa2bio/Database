-- Bloco 04.5 - Consultas em Multiplas Tabelas

SELECT * FROM tipos_produtos;
SELECT * FROM produtos;

SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', tp.descricao AS 'Tipo de Produto'
FROM produtos AS p, tipos_produtos AS tp
WHERE p.codigo_tipo = tp.codigo;

# Joins
SELECT * FROM clientes;
SELECT * FROM consumidor;
SELECT * FROM profissoes;

-- Junção de produto cartesiano
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes AS c, profissoes AS p
WHERE c.id_profissao = p.id;

-- Inner Join
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes AS c INNER JOIN profissoes AS p
ON c.id_profissao = p.id;

-- Left Outer Join
SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

-- Right Outer Join
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

-- Full Outer Join
SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id
UNION
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

-- Cross Join
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes AS c
CROSS JOIN profissoes AS p;

-- Self Join
SELECT a.nome AS Consumidor1, b.nome AS Consumidor2, a.cidade
FROM consumidor AS a
INNER JOIN consumidor AS b
ON a.id <> b.id
AND a.cidade = b.cidade
ORDER BY a.cidade;