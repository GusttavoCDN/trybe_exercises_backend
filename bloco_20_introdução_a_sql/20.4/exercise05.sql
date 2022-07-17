-- Active: 1656725077704@@localhost@3306@Pixar

SELECT * FROM `Movies`;

SELECT * FROM `BoxOffice`;

INSERT INTO
    `BoxOffice` (
        movie_id,
        rating,
        domestic_sales,
        international_sales
    )
VALUES (8, 8.5, 300000000, 250000000), (10, 7.4, 460000000, 510000000), (11, 9.9, 290000000, 280000000);