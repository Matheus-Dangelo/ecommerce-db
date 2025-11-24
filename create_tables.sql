CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- 1. CLIENTE
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(120) UNIQUE,
    senha_hash VARCHAR(255),
    telefone VARCHAR(20),
    data_cadastro DATE
);

-- 2. ENDERECO
CREATE TABLE endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    logradouro VARCHAR(120),
    numero VARCHAR(10),
    cidade VARCHAR(60),
    estado VARCHAR(2),
    cep VARCHAR(10),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- 3. PRODUTO
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    categoria VARCHAR(60)
);

-- 4. CARRINHO
CREATE TABLE carrinho (
    id_carrinho INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_atualizacao DATETIME,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- 5. ITEM_CARRINHO
CREATE TABLE item_carrinho (
    id_item_carrinho INT AUTO_INCREMENT PRIMARY KEY,
    id_carrinho INT,
    id_produto INT,
    preco_unitario DECIMAL(10,2),
    quantidade INT,
    FOREIGN KEY (id_carrinho) REFERENCES carrinho(id_carrinho),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- 6. PEDIDO
CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_endereco INT,
    data_pedido DATETIME,
    status VARCHAR(30),
    valor_total DECIMAL(10,2),
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY(id_endereco) REFERENCES endereco(id_endereco)
);

-- 7. ITEM_PEDIDO
CREATE TABLE item_pedido (
    id_item_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario_no_momento DECIMAL(10,2),
    FOREIGN KEY(id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY(id_produto) REFERENCES produto(id_produto)
);

-- 8. PAGAMENTO
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    metodo VARCHAR(40),
    valor_pago DECIMAL(10,2),
    data_pagamento DATETIME,
    status_pagamento VARCHAR(40),
    FOREIGN KEY(id_pedido) REFERENCES pedido(id_pedido)
);

-- 9. AVALIACAO
CREATE TABLE avaliacao (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    nota INT,
    comentario TEXT,
    data_avaliacao DATETIME,
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY(id_produto) REFERENCES produto(id_produto)
);