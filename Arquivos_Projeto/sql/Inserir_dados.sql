INSERT INTO loja_analise.clientes VALUES
	(1, 'João Silva', 'São Paulo'),
	(2, 'Maria Souza', 'Rio de Janeiro'),
	(3, 'Ana Lima', 'Belo Horizonte'),
	(4, 'Carlos Mendes', 'Curitiba');

INSERT INTO loja_analise.produtos VALUES
	(101, 'Notebook', 'Tecnologia', 3500.00),
	(102, 'Mouse Gamer', 'Tecnologia', 150.00),
	(103, 'Cadeira Escritório', 'Móveis', 900.00),
	(104, 'Monitor', 'Tecnologia', 1200.00),
	(105, 'Mesa Escritório', 'Móveis', 700.00);

INSERT INTO loja_analise.vendas VALUES
	(1, 1, 101, '2025-01-10', 1),
	(2, 2, 102, '2025-01-11', 2),
	(3, 3, 103, '2025-01-12', 1),
	(4, 1, 104, '2025-01-13', 2),
	(5, 4, 105, '2025-01-14', 1),
	(6, 2, 101, '2025-01-15', 1),
	(7, 3, 102, '2025-01-16', 3),
	(8, 4, 104, '2025-01-17', 1);