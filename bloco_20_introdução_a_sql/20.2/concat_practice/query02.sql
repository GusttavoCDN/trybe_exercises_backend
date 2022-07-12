-- Active: 1656725077704@@localhost@3306@sakila

SELECT
    CONCAT(
        'Titulo: ',
        title,
        ' ano: ',
        release_year
    ) AS lançamento_do_filme
FROM film;