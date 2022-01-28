-- Creates a new database
CREATE DATABASE favoritecolors;

-- Switch to favoritecolors database in psql mode;
\c favoritecolors;

CREATE TABLE colors (ColorId int, ColorName char(20));

-- Inserts three new rows into the colors table
INSERT INTO colors ("colorid", "colorname") VALUES (1, 'red'), (2, 'blue'), (3, 'green');

-- Retries all rows in colors table
SELECT * FROM colors;
