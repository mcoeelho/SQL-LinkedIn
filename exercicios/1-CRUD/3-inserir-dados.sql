-- Insira 3 classes salariais na tabela salario_classe


-- Insira 1 nova classe salarial, sem declarar o atributo id_salario

INSERT INTO salario_classe (id_salario, salario, nivel)
VALUES
(1, 1500, 'Estagiario'),
(2, 2500, 'Analista Junior'),
(3, 3500, 'Analista');

INSERT INTO salario_classe (salario, nivel)
VALUES
(9500, 'Gerente');