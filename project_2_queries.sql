
-- Create Tables
-- Create Table for netflix dataframe
Create Table netflix_movies_shows(
id Text Primary key,
type Text,
title text,
rating text,
date_added_netflix date,
duration text);

-- Create Table for omdb dataframe
Create Table omdb_results(
id int Primary key,
title text,
release_date text,
imdb_rating text,
box_office text,
meta_score text);

-- use this code to ensure tables are created and/or data has been added
select * from netflix_movies_shows;
select * from omdb_results;

--perform inner join on netflix and omdb 
select n.id, n.title, n.type, n.rating, n.date_added_netflix, n.duration, o.release_date, o.imdb_rating, o.box_office, o.meta_score
From netflix_movies_shows n
inner join omdb_results o
on n.title = o.title;

select netflix_movies