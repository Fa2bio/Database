-- Bloco 04.6 - Funções de Agregação

-- Group BY
SELECT t.nome AS Tipo, f.nome AS Fabricante, SUM(p.quantidade) AS 'Quantidade em Estoque'
FROM tipos AS t, fabricantes AS f, produtos AS p
WHERE t.id = p.id_tipo AND f.id = p.id_fabricante
GROUP BY t.nome, f.nome;

-- Having 
SELECT t.nome AS Tipo, f.nome AS Fabricante, SUM(p.quantidade) AS 'Quantidade em Estoque'
FROM tipos AS t, fabricantes AS f, produtos AS p
WHERE t.id = p.id_tipo AND f.id = p.id_fabricante
GROUP BY t.nome, f.nome
HAVING SUM(p.quantidade) > 200;

-- Order By ASC
SELECT * FROM produtos;
SELECT id, nome, id_tipo, id_fabricante, quantidade FROM produtos ORDER BY id ASC;

-- Order By DESC
SELECT id, nome, id_tipo, id_fabricante, quantidade FROM produtos ORDER BY id DESC; 