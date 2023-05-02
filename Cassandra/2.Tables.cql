//See table list
describe tables;

//Create table
CREATE TABLE movies(
movie_id int PRIMARY KEY,
movie_name text,
year_of_release int
);

//Add collumns
ALTER TABLE movies
ADD genre text;

//Rename collumns
ALTER TABLE movies
RENAME genre to genre_new;

//Set default time to live
ALTER TABLE movies WITH
default_time_to_live=10;

//Drop collumns
ALTER TABLE movies
DROP genre ;

//Truncate table
TRUNCATE table movies;

//Drop table
DROP table movies;
