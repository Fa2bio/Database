-- Bloco 04.6 - Funções de Agregação

-- Max
SELECT MAX(preco_venda) FROM produtos;

-- Min
SELECT MIN(preco_venda) FROM produtos;

-- avg
SELECT AVG(preco_venda) FROM produtos;

-- round
SELECT ROUND(AVG(preco_venda), 2) FROM produtos;

-- count 
SELECT COUNT(preco_venda) AS quantidade FROM produtos WHERE id_categoria = 1;

-- group by
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria;

-- having
SELECT id_categoria, MAX(preco_venda) FROM produtos GROUP BY id_categoria HAVING MAX(preco_venda) > 10;