# Inserindo dados teste

-- Clientes
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) VALUES ('Fabio Cordel', 'Rua Da Paz, 47', '(21) 3456-0789', '000123-000', 'RJ', '123.456.789-00');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) VALUES ('Eduardo Correa', 'Rua Vermelha, 547', '(11) 1256-1729', '123123-010', 'SP', '010.546.987-01');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) VALUES ('Paulo Souza', 'Rua Azul, 170', '(45) 2567-8900', '456456-002', 'MG', '100.789.123-02');

-- Fabricantes
INSERT INTO fabricantes (fabricante) VALUES ('Medley');
INSERT INTO fabricantes (fabricante) VALUES ('NeoQuimica');
INSERT INTO fabricantes (fabricante) VALUES ('Germed');

-- Medicos
INSERT INTO medicos (nome, crm) VALUES ('Carlos Martel', '1456-RJ');
INSERT INTO medicos (nome, crm) VALUES ('Fernanda Cardoso', '2361-SP');
INSERT INTO medicos (nome, crm) VALUES ('Julieta Souza', '0587-MG');

-- Tipos Produtos
INSERT INTO tipos_produtos (nome) VALUES ('Remedios');
INSERT INTO tipos_produtos (nome) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos (nome) VALUES ('Diversos');

-- Produtos
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) VALUES ('Dipirona', 'Dores Em Geral', 'Metilpropileno','5.9', 1, 1);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) VALUES ('Sabonete', 'Limpeza da Pelo', ' ', '2.99', 2, 2);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) VALUES ('Protetor Solar', 'Protetor Solar', 'Soro de Abacate','29.99', 3, 3);

-- Vendas
INSERT INTO vendas (id_cliente, data) VALUES (1, '2022-11-10');
INSERT INTO vendas (id_cliente, data) VALUES (2, '2022-10-09');
INSERT INTO vendas (id_cliente, data) VALUES (3, '2022-04-01');

-- Produtos Vendas
INSERT INTO produtos_venda (id_produto, id_venda, quantidade) VALUES (1, 1, 2);
INSERT INTO produtos_venda (id_produto, id_venda, quantidade) VALUES (1, 2, 3);
INSERT INTO produtos_venda (id_produto, id_venda, quantidade) VALUES (2, 3, 1);

-- Receita Medicas
INSERT INTO receitas_medica (id_produto_venda, id_medico, receita) VALUES (1,1, 'receita1.pdf');
INSERT INTO receitas_medica (id_produto_venda, id_medico, receita) VALUES (3,2, 'receita2.pdf');

# Atualizando Dados

UPDATE tipos_produtos SET nome = 'Bijuterias' WHERE id = 3;
UPDATE produtos SET preco_venda = '4.16', id_tipo_produto = 1, id_fabricante = 1 WHERE id = 2;

# Excluindo Dados
DELETE FROM receitas_medica WHERE id_produto_venda = 3;
DELETE FROM produtos_venda WHERE id = 3;