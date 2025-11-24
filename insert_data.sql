USE ecommerce;

INSERT INTO cliente (nome, email, senha_hash, telefone, data_cadastro) VALUES
('João da Silva', 'joao@email.com', 'hash123', '11999998888', CURDATE()),
('Maria Souza', 'maria@email.com', 'hash999', '11911112222', CURDATE());

INSERT INTO endereco (id_cliente, logradouro, numero, cidade, estado, cep) VALUES
(1, 'Rua A', '100', 'São Paulo', 'SP', '01000-000'),
(2, 'Av Central', '200', 'Rio de Janeiro', 'RJ', '20000-000');

INSERT INTO produto (nome, descricao, preco, estoque, categoria) VALUES
('Mouse Gamer', 'Mouse RGB 7200 DPI', 79.90, 120, 'Periféricos'),
('Teclado Mecânico', 'Teclado Switch Blue', 199.90, 50, 'Periféricos'),
('Monitor 24"', 'Monitor FullHD 75Hz', 899.90, 30, 'Monitores');

INSERT INTO carrinho (id_cliente, data_atualizacao) VALUES
(1, NOW()),
(2, NOW());

INSERT INTO item_carrinho (id_carrinho, id_produto, preco_unitario, quantidade) VALUES
(1, 1, 79.90, 2),
(1, 2, 199.90, 1);

INSERT INTO pedido (id_cliente, id_endereco, data_pedido, status, valor_total) VALUES
(1, 1, NOW(), 'Pendente', 359.70);

INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario_no_momento) VALUES
(1, 1, 2, 79.90),
(1, 2, 1, 199.90);

INSERT INTO pagamento (id_pedido, metodo, valor_pago, data_pagamento, status_pagamento) VALUES
(1, 'Cartão de Crédito', 359.70, NOW(), 'Aprovado');

INSERT INTO avaliacao (id_cliente, id_produto, nota, comentario, data_avaliacao) VALUES
(1, 1, 5, 'Excelente mouse!', NOW());
