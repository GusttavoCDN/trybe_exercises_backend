-- Active: 1656725077704@@localhost@3306@Pixar
-- Exclua da tabela Movies o filme "WALL-E".
DELETE FROM `Movies`
WHERE title = 'WALL-E';

SELECT * FROM `BoxOffice`;
SELECT * FROM `Movies`;

DELETE FROM `BoxOffice`
WHERE movie_id IN (2, 9);

DELETE FROM `Movies`
WHERE director = 'Andrew Staton';