# Realizando consultas simples

-- Clientes
SELECT * FROM clientes;
SELECT * FROM clientes  ORDER BY nome ASC;

-- Fabricantes
SELECT * FROM fabricantes;

-- Médicos
SELECT * FROM medicos;

-- Produtos
SELECT * FROM produtos;

-- Produtos Vendas
SELECT * FROM produtos_venda;

-- Receitas Medica
SELECT * FROM receitas_medica;

-- Tipos Produtos
SELECT * FROM tipos_produtos;

-- Vendas
SELECT * FROM vendas;

# Realizando Consultas Complexas

-- Vendas
-- 1 - Trazer as compras
SELECT * FROM vendas;

-- 2 - Colocar o nome dos clientes nas compras
SELECT ven.id AS 'Id Venda', cli.nome AS 'Cliente', ven.data AS 'Data Venda' FROM vendas AS ven, clientes AS cli WHERE ven.id_cliente = cli.id;

-- 3 - Produtos Vendas
SELECT * FROM produtos_venda;

-- 4 - Valor Total
SELECT ven.id AS 'Venda', cli.nome AS 'Cliente', SUM(prod.preco_venda * prov.quantidade) AS 'Total', ven.data AS 'Data da Compra'
FROM produtos_venda AS prov, vendas AS ven, produtos AS prod, clientes AS cli
WHERE ven.id = prov.id_venda AND prod.id = prov.id_venda AND cli.id = ven.id_cliente
GROUP BY ven.id;
