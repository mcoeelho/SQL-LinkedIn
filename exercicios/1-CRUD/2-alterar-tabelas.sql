-- Na tabela salario_classe altere o atributo "nivel" para que seu tipo de dado seja varchar, com tamanho máximo de 50 caracteres

-- Na tabela employees, adicione uma coluna para receber o id_salario

ALTER TABLE salario_classe
DROP nivel;

ALTER TABLE salario_classe
ADD nivel varchar(50);

ALTER TABLE employees
ADD id_salario INTEGER;