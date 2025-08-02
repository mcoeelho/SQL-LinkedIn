-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente


-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30


-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente

SELECT
c.CustomerId as Id_cliente,
c.FirstName as Nome,
SUM(i.Total) as Total_gasto
FROM
invoices as i
INNER JOIN customers as c ON i.CustomerId = c.CustomerId
GROUP BY Id_cliente;


SELECT
c.CustomerId as Id_cliente,
c.FirstName as Nome,
SUM(i.Total) as Total_gasto
FROM
invoices as i
INNER JOIN customers as c ON i.CustomerId = c.CustomerId
GROUP BY Id_cliente
HAVING Total_gasto > 30;


SELECT
c.CustomerId as Id_cliente,
c.FirstName as Nome,
SUM(i.Total) as Total_gasto,
MAX(i.Total) as Maior_compra,
COUNT(i.Total) as Quantidade_compras
FROM
invoices as i
INNER JOIN customers as c ON i.CustomerId = c.CustomerId
GROUP BY Id_cliente
HAVING Total_gasto > 40;
