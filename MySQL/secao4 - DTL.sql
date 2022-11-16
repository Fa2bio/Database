-- Bloco 04.4 - DTL

START TRANSACTION;
	INSERT INTO tipos_produtos (descricao) VALUES ('Acessorios');
    INSERT INTO tipos_produtos (descricao) VALUES ('Equipamentos');
COMMIT;

START TRANSACTION;
	INSERT INTO tipos_produtos (descricao) VALUES ('Veículos');
    INSERT INTO tipos_produtos (descricao) VALUES ('Aeronaves');
ROLLBACK;