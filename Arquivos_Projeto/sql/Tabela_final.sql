CREATE TABLE loja_analise.fato_vendas as
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