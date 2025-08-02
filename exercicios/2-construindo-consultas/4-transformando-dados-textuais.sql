-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras


-- Na consulta anterior, converta o sobrenome para letras maiúsculas


-- Na consulta anterior, converta o nome para letras minúsculas


-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome


-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço


-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais

SELECT
CustomerId,
FirstName,
LastName,
Address
FROM customers
WHERE Country LIKE 'Brazil'

SELECT
CustomerId,
LOWER (FirstName),
UPPER (LastName),
Address
FROM customers
WHERE Country LIKE 'Brazil'

SELECT
CustomerId,
LOWER (FirstName) as Nome,
UPPER (LastName)as Sobrenome,
FirstName || ' ' || LastName as Nome_completo,
Address as Endereço
FROM customers
WHERE Country LIKE 'Brazil'

SELECT
CustomerId,
LOWER (FirstName) as Nome,
UPPER (LastName)as Sobrenome,
FirstName || ' ' || LastName as Nome_completo,
REPLACE (Address,'Av.', 'Avenida') as Endereço
FROM customers
WHERE Country LIKE 'Brazil'

SELECT
CustomerId,
LOWER (FirstName) as Nome,
UPPER (LastName)as Sobrenome,
FirstName || ' ' || LastName as Nome_completo,
REPLACE (Address,'Av.', 'Avenida') as Endereço
FROM customers
WHERE Country LIKE '%zil'