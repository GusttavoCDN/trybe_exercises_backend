-- Active: 1656725077704@@localhost@3306@sakila

-- Monte uma query que exiba o id do ator, nome do ator e id do filme em que ele já atuou, usando as tabelas actor e film_actor.

SELECT
    A.actor_id,
    A.first_name,
    film_id
FROM `actor` AS A
    INNER JOIN `film_actor` AS F ON A.actor_id = F.actor_id;

-- Use o JOIN para exibir o nome, sobrenome e endereço de cada um dos funcionários do banco. Use as tabelas staff e address.

SELECT
    S.first_name,
    S.last_name,
    A.address
FROM `address` AS A
    INNER JOIN `staff` AS S ON A.address_id = S.address_id;

-- Exiba o id do cliente, nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente, juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas informações podem ser encontradas nas tabelas customer e address.

SELECT
    C.customer_id,
    C.first_name,
    C.email,
    A.address_id,
    A.address
FROM `address` AS A
    INNER JOIN `customer` AS C on A.address_id = C.address_id
ORDER BY C.first_name DESC
LIMIT 100;

-- Exiba o nome, email, id do endereço, endereço e distrito dos clientes que moram no distrito da California e que contêm "rene" em seus nomes. As informações podem ser encontradas nas tabelas address e customer.

SELECT
    C.first_name,
    C.email,
    A.address_id,
    A.address,
    A.district
FROM `address` AS A
    INNER JOIN `customer` AS C on A.address_id = C.address_id
WHERE
    A.district = 'California'
    AND C.first_name LIKE '%rene%'
ORDER BY C.first_name DESC
LIMIT 100;

-- Exiba o nome e a quantidade de endereços dos clientes cadastrados. Ordene seus resultados por nomes de forma decrescente. Exiba somente os clientes ativos. As informações podem ser encontradas na tabela address e customer.

SELECT
    C.first_name,
    COUNT(A.address) AS address_quantity
FROM `address` AS A
    INNER JOIN `customer` AS C ON A.address_id = C.address_id
WHERE C.active IS NOT NULL
GROUP BY C.customer_id
ORDER BY first_name DESC;

-- Monte uma query que exiba o nome, sobrenome e a média de valor (amount) paga aos funcionários no ano de 2006. Use as tabelas payment e staff. Os resultados devem estar agrupados pelo nome e sobrenome do funcionário.

SELECT
    S.first_name,
    S.last_name,
    AVG(P.amount) AS average_payment
FROM `payment` AS P
    INNER JOIN `staff` AS S ON P.staff_id = S.staff_id
WHERE
    YEAR(P.payment_date) = 2006
GROUP BY
    S.first_name,
    S.last_name;

-- Monte uma query que exiba o id do ator, nome, id do filme e título do filme, usando as tabelas actor, film_actor e film. Dica: você precisará fazer mais de um JOIN na mesma query.

SELECT A.actor_id, A.first_name, F.film_id, F.title
FROM `actor` AS A
    INNER JOIN `film_actor` AS FM ON A.actor_id = FM.actor_id
    INNER JOIN `film` AS F ON F.film_id = FM.film_id;