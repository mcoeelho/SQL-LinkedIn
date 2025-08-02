-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas


-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente


-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas

SELECT
CustomerId as Id,
FirstName as Nome,
Country as País
FROM customers
LIMIT 10;


SELECT
CustomerId as Id,
FirstName as Nome,
Country as País
FROM customers
ORDER BY
País ASC,
Nome DESC
LIMIT 10;


SELECT
CustomerId as Id,
FirstName as Nome,
Country as País
FROM customers
ORDER BY
País ASC,
Nome DESC
LIMIT 10 OFFSET 3;