-- Active: 1656725077704@@localhost@3306@sakila

SELECT distinct last_name FROM `actor`;
SELECT count(distinct last_name) FROM `actor`;

SELECT first_name, last_name FROM `actor`
ORDER BY last_name, first_name DESC;
