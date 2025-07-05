-- Step 1: Create a New Database
CREATE DATABASE Movie_Ratings;
USE Movie_Ratings;

-- then look over the dataset
SELECT * 
FROM movies;

-- Top 10 Highest Rated Movies
SELECT name, score
FROM movies
ORDER BY score DESC
LIMIT 10;

-- Most Popular Genres
SELECT genre, COUNT(*) AS genre_count
FROM movies
GROUP BY genre
ORDER BY genre_count DESC;

-- Average IMDb Score by Rating
SELECT rating, AVG(imdb_score) AS avg_score
FROM movies
GROUP BY rating
ORDER BY avg_score DESC;

-- Most Active Directors
SELECT director, COUNT(*) AS movie_count
FROM movies
GROUP BY director
ORDER BY movie_count DESC
LIMIT 10;

-- Yearly Trend of Movie Releases
SELECT released, COUNT(*) AS movies_released
FROM movies
GROUP BY released
ORDER BY released;

-- Top 10 Most Voted Movies

SELECT name, votes
FROM movies
ORDER BY votes DESC
LIMIT 10;

-- Average IMDb Score by Genre
SELECT genre, AVG(score) AS avg_score
FROM movies
GROUP BY genre
ORDER BY avg_score DESC;

