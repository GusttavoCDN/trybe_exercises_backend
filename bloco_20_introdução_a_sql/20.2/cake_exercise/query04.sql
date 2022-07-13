-- Active: 1656725077704@@localhost@3306@sakila

SELECT
    title,
    release_year,
    rental_duration,
    rental_rate,
    replacement_cost
FROM `film`
ORDER BY rental_duration, replacement_cost
LIMIT 20;