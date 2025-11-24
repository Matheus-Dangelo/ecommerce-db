Banco de Dados — Sistema de E-commerce

Projeto acadêmico desenvolvido por Matheus Dangelo.

Sobre o Projeto

Este repositório contém o modelo lógico e scripts SQL completos para um sistema de e-commerce, incluindo:

Criação das tabelas

Inserção de dados

Consultas SQL

Comandos UPDATE e DELETE

Conformidade com 1FN, 2FN e 3FN

Estrutura do Repositório

📁 ecommerce-db/
│── README.md
│── create_tables.sql
│── insert_data.sql
│── select_queries.sql
│── update_commands.sql
│── delete_commands.sql
└── diagram.png

Como Executar

Instale o MySQL Server

Abra o MySQL Workbench

Execute os scripts na seguinte ordem:

1. create_tables.sql
2. insert_data.sql
3. select_queries.sql

Exemplo de Consultas

SELECT nome, preco FROM produto ORDER BY preco DESC;

Autor

Matheus Dangelo
Projeto para disciplina de Modelagem de Banco de Dados