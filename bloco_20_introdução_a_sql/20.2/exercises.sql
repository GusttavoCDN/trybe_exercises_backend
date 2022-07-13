-- Active: 1656725077704@@localhost@3306@Scientists

-- Escreva uma query para exibir a string "This is SQL Exercise, Practice and Solution".

SELECT 'This is SQL Exercise, Practice and Solution';

-- Escreva uma query para exibir três números em três colunas.

SELECT 10 + 15;

-- Escreva uma query para exibir três números em três colunas.

SELECT 1,2,3;

-- Escreva uma query para exibir o resultado de uma expressão aritmética qualquer.

SELECT 10 + 20 * 30 / 80 + (40 * 15);

-- Escreva uma query para exibir todas as informações de todos os cientistas.

SELECT * FROM `Scientists`;

-- Escreva uma query para exibir o nome como "nome_do_projeto" e as horas como "tempo_de_trabalho" de cada projeto.

SELECT name AS project_name, hours AS work_hours FROM `Projects`;

-- Escreva uma query para exibir o nome dos cientistas em ordem alfabética.

SELECT name FROM `Scientists` ORDER BY name ASC;

-- Escreva uma query para exibir o nome dos projetos em ordem alfabética descendente.

SELECT name FROM `Projects` ORDER BY name DESC;

-- Escreva uma query que exiba a string "O projeto name precisou de hours horas para ser concluído." para cada projeto.

SELECT
    CONCAT(
        'O projeto ',
        name,
        ' precisou de ',
        hours,
        ' para ser concluido!'
    ) AS info
FROM `Projects`;

-- Escreva uma query para exibir o nome e as horas dos três projetos com a maior quantidade de horas.

SELECT name, hours FROM `Projects` ORDER BY hours DESC LIMIT 3;

-- Escreva uma query para exibir o código de todos os projetos da tabela AssignedTo sem que haja repetições.

SELECT DISTINCT * FROM `AssignedTo`;

-- Escreva uma query para exibir o nome do projeto com maior quantidade de horas.

SELECT name FROM `Projects` ORDER BY hours DESC LIMIT 1;

-- Escreva uma query para exibir o nome do segundo projeto com menor quantidade de horas.

SELECT name FROM `Projects` ORDER BY hours DESC LIMIT 1 OFFSET 1;

-- Escreva uma query para exibir todas as informações dos cinco projetos com a menor quantidade de horas.

SELECT * FROM `Projects` ORDER BY hours LIMIT 5;

-- Escreva uma query que exiba a string "Existem Number cientistas na tabela Scientists.", em que Number se refira a quantidade de cientistas.

SELECT
    CONCAT(
        'Existem ',
        COUNT(name),
        ' cientistas na tabela de Scientsts'
    ) AS result
FROM `Scientists`;