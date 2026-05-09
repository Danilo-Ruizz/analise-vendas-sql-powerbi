SELECT V.id_venda,
       V.data_venda,
       C.nome_cliente,
       C.cidade,
	   P.nome_produto,
       CASE WHEN P.categoria = 'Móveis' THEN 'Casa e Escritório' 
			ELSE 'Alta Tecnologia' 
	        END as categoria,
       P.preco,
       V.quantidade,
       SUM(P.preco * V.quantidade) as faturamento
FROM loja_analise.clientes as C,
	 loja_analise.produtos as P, 
     loja_analise.vendas as V
WHERE V.Id_cliente = C.id_cliente AND V.id_produto = P.id_produto
GROUP BY V.id_venda,
         V.data_venda,
         C.nome_cliente,
         C.cidade,
	     P.nome_produto,
         P.categoria,
         P.preco,
         V.quantidade;
         
# faturamento total por categoria
SELECT SUM(CASE WHEN P.categoria = 'Móveis' THEN P.preco * V.quantidade ELSE 0 END) as faturamento_moveis,
       SUM(CASE WHEN P.categoria = 'Tecnologia' THEN P.preco * V.quantidade ELSE 0 END) as faturamento_tec
FROM loja_analise.clientes as C,
	 loja_analise.produtos as P, 
     loja_analise.vendas as V
WHERE V.Id_cliente = C.id_cliente AND V.id_produto = P.id_produto

# cliente que mais gastou
SELECT C.nome_cliente,
	   SUM(P.preco * V.quantidade) as faturamento
FROM loja_analise.clientes as C,
	 loja_analise.produtos as P, 
     loja_analise.vendas as V
WHERE V.Id_cliente = C.id_cliente AND V.id_produto = P.id_produto
GROUP BY C.nome_cliente
ORDER BY faturamento desc
LIMIT 1;

