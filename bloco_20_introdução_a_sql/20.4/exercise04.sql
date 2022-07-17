-- Active: 1656725077704@@localhost@3306@Pixar
-- O título do filme "Ratatouille" está incorreto na tabela Movies. Além disso, o filme foi lançado em 2007 e não em 2010. Corrija esses dados utilizando o comando UPDATE.

UPDATE `Movies`
SET title = 'Ratatouille', year = 2007
WHERE id = 3;