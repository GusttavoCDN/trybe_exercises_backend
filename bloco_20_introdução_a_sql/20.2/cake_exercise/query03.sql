-- Active: 1656725077704@@localhost@3306@sakila
SELECT * FROM `language`
WHERE name != 'English';

SELECT * FROM `language` LIMIT 5 OFFSET 1;