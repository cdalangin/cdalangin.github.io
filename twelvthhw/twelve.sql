-- 1 number of actors born after Jan 1 1970 (56)
SELECT COUNT(*) FROM actors
WHERE date_of_birth > '1970-01-01'

-- 2 highest and lowest domestic takings for a movie 
-- MIN: 0.30 | MAX: 659.20
SELECT MIN(domestic_takings) FROM movie_revenues
SELECT MAX(domestic_takings) FROM movie_revenues

-- 3 sum total movie length for movies rated 15 (2184)
SELECT * FROM movie_revenues

SELECT SUM(movie_length) from movies
WHERE age_certificate='15'


-- 4 japanese directors in dir table (3)
SELECT COUNT(*) FROM directors
WHERE nationality='Japanese'


-- 5 avg movie length of chinese movies (121.800)
SELECT AVG(movie_length) FROM movies
WHERE movie_lang = 'Chinese'


-- 1 How many directors per nationality
SELECT nationality, COUNT(nationality) FROM directors
GROUP BY nationality


-- 2 sum total movie len for each age cert and movie lang combo
SELECT SUM(movie_length), age_certificate, movie_lang FROM movies
GROUP BY age_certificate, movie_lang

-- 3 movie lang with sum total movie len over 500 min
-- CHINESE: 609, ENGLISH: 4824
SELECT movie_lang, SUM(movie_length) FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 500

-- 1
SELECT d.first_name, d.last_name, m.movie_name, m.release_date
FROM directors d
JOIN movies m
ON d.director_id = m.director_id
WHERE m.movie_lang IN ('Chinese', 'Korean', 'Japanese')

-- 2
SELECT m.movie_name, m.release_date, r.international_takings
FROM movies m
JOIN movie_revenues r
ON m.movie_id= r.movie_id
WHERE m.movie_lang ='English'

-- 3
SELECT m.movie_name, r.domestic_takings, r.international_takings
FROM movies m
JOIN movie_revenues r
ON m.movie_id = r.movie_id
WHERE r.domestic_takings is NULL or r.international_takings is NULL
ORDER BY m.movie_name