CREATE DATABASE PixarDB;
USE PixarDB;
CREATE TABLE Movies
(
	movieID int auto_increment primary key not null,
    movieTitle varchar(20),
    movieDirector varchar(20),
    movieYear int not null,
    movieLength_minute int not null
);
INSERT INTO movies (movieID, movieTitle, movieDirector, movieYear, movieLength_minute) VALUES
(1, "Toy Story", "John Lasseter", 1995, 81),
(2, "A Bug's Life", "John Lasseter", 1998, 95),
(3, "Toy Story 2", "John Lasseter", 1999, 93),
(4, "Monsters, Inc.", "Pete Docter", 2001, 92),
(5, "Finding Nemo", "Andrew Stanton", 2003, 107),
(6, "The Incredibles", "Brad Bird", 2004, 116),
(7, "Cars", "John Lasseter", 2006, 117),
(8, "Ratatouille", "Brad Bird", 2007, 115),
(10, "Up", "Pete Docter", 2009, 101),
(9, "WALL-E", "Andrew Stanton", 2008, 104),
(11, "Toy Story 3", "Lee Unkrich", 2010, 103),
(12, "Cars 2", "John Lasseter", 2011, 120),
(13, "Brave", "Brenda Chapman", 2012, 102),
(14, "Monsters University", "Dan Scanlon", 2013, 110);

SELECT * FROM movies;
SELECT movieDirector FROM movies;
SELECT movieTitle, movieDirector From movies;
SELECT * FROM movies WHERE movieID = 6;
SELECT * FROM movies WHERE movieYear BETWEEN 2000 AND 2010;
SELECT * FROM movies WHERE movieYear NOT BETWEEN 2000 AND 2010;
SELECT movieTitle, movieYear FROM movies WHERE movieYear <= 2003;
SELECT * FROM movies WHERE movieTitle LIKE "Toy Story%";
SELECT * FROM movies WHERE movieDirector = "John Lasseter";
SELECT movieTitle, movieDirector FROM movies WHERE movieDirector != "John Lasseter";

SELECT COUNT(movieTitle) FROM movies;
SELECT COUNT(movieTitle) FROM movies WHERE movieTitle LIKE "C%";
SELECT MIN(movieYear) FROM movies;
SELECT MIN(movieTitle) FROM movies;
SELECT MAX(movieYear) FROM movies;
SELECT MAX(movieLength_minute) FROM movies;
SELECT AVG(movieLength_minute) FROM movies;
SELECT SUM(movieLength_minute) FROM movies;

CREATE TABLE Boxoffice
(
	movieID int, foreign key (movieID) references Movies (movieID),
    movieRating float not null,
    domesticSales int not null,
    internationalSales int not null
);
INSERT INTO Boxoffice (movieID, movieRating, domesticSales, internationalSales) VALUES
(5, 8.2, 380843261, 555900000),
(14, 7.4, 268492764, 475066843),
(8, 8, 	206445654, 417277164),
(12, 6.4, 191452396, 368400000),
(3, 7.9, 245852179, 239163000),
(6, 8, 	261441092, 370001000),
(9, 8.5, 223808164, 297503696),
(11, 8.4, 415004880, 648167031),
(1, 8.3, 191796233, 170162503),
(7, 7.2, 244082982, 217900167),
(10, 8.3, 293004164, 438338580),
(4, 8.1, 289916256, 272900000),
(2, 7.2, 162798565, 200600000),
(13, 7.2, 237283207, 301700000);

SELECT * FROM Boxoffice;
SELECT movieDirector, COUNT(movieTitle) as NumberOfMovie FROM movies GROUP BY movieDirector;
SELECT movieTitle, domesticSales, internationalSales FROM movies INNER JOIN boxoffice ON movies.movieID = boxoffice.movieID;
SELECT * FROM movies JOIN boxoffice ON movies.movieID = boxoffice.movieID;



