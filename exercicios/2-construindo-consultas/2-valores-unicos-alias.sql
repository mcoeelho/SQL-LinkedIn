-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country


-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas entre empresas e países


-- Nesta mesma consulta, atribua um alias com título em português para cada coluna

SELECT DISTINCT Country
FROM customers;

SELECT DISTINCT
Country,
Company
FROM customers;

SELECT DISTINCT
Country AS País,
Company AS Empresas
FROM customers;