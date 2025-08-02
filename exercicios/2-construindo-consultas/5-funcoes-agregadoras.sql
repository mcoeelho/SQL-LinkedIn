-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.

SELECT
BillingCountry as País,
SUM(Total) as Soma_Total_País,
COUNT(Total) as Quantidade_Compras,
MIN(Total) as Menor_compra,
MAX(Total) as Maior_compra,
ROUND(AVG(Total), 2) as Ticket_medio
FROM invoices
GROUP BY BillingCountry;