CREATE TABLE loja_analise.clientes 
	(id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    cidade VARCHAR(50))

CREATE TABLE loja_analise.produtos
	(id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2))

CREATE TABLE loja_analise.vendas 
	(id_venda INT PRIMARY KEY,
	Id_cliente INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT)
