-- 1. Listar produtos ordenados por preço
SELECT nome, preco FROM produto ORDER BY preco DESC;

-- 2. Buscar avaliações de um produto
SELECT c.nome, a.nota, a.comentario
FROM avaliacao a
JOIN cliente c ON c.id_cliente = a.id_cliente
WHERE id_produto = 1;

-- 3. Ver pedidos de um cliente
SELECT p.id_pedido, p.status, p.valor_total
FROM pedido p
WHERE p.id_cliente = 1;

-- 4. Itens de um pedido
SELECT ip.quantidade, pr.nome, ip.preco_unitario_no_momento
FROM item_pedido ip
JOIN produto pr ON pr.id_produto = ip.id_produto
WHERE ip.id_pedido = 1;

-- 5. Carrinho completo de um cliente
SELECT pr.nome, ic.quantidade, ic.preco_unitario
FROM item_carrinho ic
JOIN produto pr ON pr.id_produto = ic.id_produto
WHERE ic.id_carrinho = 1;
