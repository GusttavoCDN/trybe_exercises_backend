-- Active: 1656725077704@@localhost@3306@Pixar

SELECT * FROM `Movies`;

UPDATE `BoxOffice` SET rating = 9 WHERE domestic_sales > 400000000;

UPDATE `BoxOffice`
SET rating = 6
WHERE
    international_sales < 200000000;

DELETE FROM BoxOffice WHERE movie_id IN (1, 6, 7, 8);

DELETE from `Movies` WHERE length_minutes < 100;