SELECT * from movies
where movie_lang LIKE '%e%'

SELECT * from movies
where movie_lang = 'English' and movie_name LIKE '%e'

-- AND and OR to add multiple conditions
-- LIKE for similar conditions and = for exact conditions
-- IN or NOT IN 
-- BETWEEN AND
-- SELECT DISTINCT shows unique stuff


-- 1
SELECT movie_name, release_date from movies

-- 2
SELECT first_name, last_name from directors
where nationality = 'American'

--3
SELECT * from actors
where date_of_birth > '1970-01-01'

-- 4 
SELECT * from movies
where movie_length > '90' and movie_lang = 'English'


-- 1
SELECT movie_name, movie_lang from movies
where movie_lang IN ('English', 'Spanish', 'Korean')

-- 2
SELECT first_name, last_name from actors
where last_name LIKE 'M%' AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31'

-- 3
SELECT first_name, last_name from directors
where nationality IN ('British', 'French', 'German') AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31' 


-- 1 (American Directors ordered from oldest to youngest)
SELECT * from directors
where nationality = 'American'
ORDER BY date_of_birth ASC

--2 (distinct nationalities from directors)
SELECT DISTINCT nationality from directors

--3 first, last, dob of 10 youngest female actors
SELECT first_name, last_name, date_of_birth from actors
WHERE gender='F' 
ORDER BY date_of_birth DESC
FETCH FIRST 10 ROW ONLY

--C
--1
SELECT * FROM movie_revenues
WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3

--2
SELECT CONCAT(first_name, ' ', last_name) as full_name from actors

--3
SELECT * FROM actors
WHERE first_name IS NULL OR date_of_birth IS NULL


-- AUG 6

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



-- PRACTICE:
SELECT * FROM actors
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC
LIMIT 3

SELECT first_name firstname, last_name lastname from actors
where first_name='Tim'

SELECT first_name firstname, last_name lastname from actors
where first_name LIKE 'A%'
ORDER BY lastname

SELECT first_name || ' ' || last_name AS full_name FROM actors
ORDER BY full_name desc

SELECT CONCAT(first_name, ' ', last_name) as full_name from actors
order by full_name desc


SELECT COUNT(*) FROM movies

SELECT COUNT(age_certificate) FROM movies

select * from actors
select count(*) from actors

SELECT COUNT(first_name) from actors

SELECT COUNT(*) from movies
WHERE movie_lang='English'

SELECT SUM(movie_length) FROM movies
where movie_name like '%Mood%' or movie_name like 'City%'

SELECT * FROM movies
where movie_name like '%Mood%' or movie_name like 'City%'

-- MIN OR MAX
SELECT MIN(release_date) FROM movies

-- Shows distinct values since it combines all the same ones
SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang

-- Same thing as above but takes the avg
SELECT movie_lang, avg(movie_length) FROM movies
GROUP BY movie_lang


-- SELECT 
SELECT movie_lang, MIN(movie_length), MAX(movie_length) FROM movies
GROUP BY movie_lang
HAVING MIN(movie_length) > 120

SELECT movie_lang, COUNT(movie_lang) FROM movies
WHERE movie_lang IN ('English', 'Japanese', 'Chinese')
GROUP BY movie_lang
HAVING COUNT(movie_lang) > 2


-- MATH!!
SELECT 10+2 AS addition
SELECT 10-2 AS subtraction

SELECT 32/13 AS division
SELECT 1*3 AS multiplication


(domestic_takings + international_takings)
AS total_takings FROM movie_revenues


-- Joining Tables

INSERT INTO directors (first_name, last_name, date_of_birth, nationality)
VALUES ('Christopher', 'Nolan', '1970-07-30', 'British')

SELECT * from directors
where first_name  = 'Christopher'

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name
FROM directors
INNER JOIN movies
ON directors.director_id = movies.director_id


SELECT directors.director_id, directors.first_name || directors.last_name as director_name, movies.movie_name, movies.movie_length
FROM directors
INNER JOIN movies
on directors.director_id = movies.director_id
WHERE movies.movie_lang='Japanese'
ORDER BY movies.movie_length

select * from movie_revenues

select m.movie_name, r.domestic_takings, r.international_takings
FROM movies m
JOIN movie_revenues r
ON m.movie_id=r.movie_id
ORDER BY r.domestic_taking


SELECT d.first_name, d.last_name, m.movie_name
FROM directors d LEFT JOIN movies m
ON m.director_id=d.director_id
WHERE d.first_name LIKE 'R%'

SELECT * from movie_revenues
SELECT * from directors
SELECT * from movies
SELECT * from movie_actors
SELECT * from actors
-- 1 first last names of actors starred in movies by wes anderson
-- 20 rows selected
SELECT a.first_name || ' ' || a.last_name AS actor_name, m.movie_name, d.first_name || ' ' || d.last_name as director_name
FROM movies m
JOIN directors d ON d.director_id=m.director_id 
JOIN movie_actors c ON m.movie_id=c.movie_id
JOIN actors a ON a.actor_id = c.actor_id
WHERE d.first_name || ' ' || d.last_name = 'Wes Anderson'


-- Director with highest domestic takings
-- Sam Raimi 1115.20
SELECT d.first_name, d.last_name, SUM(r.domestic_takings) AS total_d_takings
FROM directors d
JOIN movies m ON d.director_id=m.director_id
JOIN movie_revenues r ON m.movie_id = r.movie_id
GROUP BY d.first_name, d.last_name
HAVING SUM(r.domestic_takings) IS NOT NULL
ORDER BY total_d_takings DESC


SELECT COUNT(*) from directors
UNION
SELECT COUNT(*) from directors

SELECT 38+ 148 AS total

-- People that are both directors and actors
-- Terry Jones and Bruce Lee
SELECT a.first_name, a.last_name from actors a
JOIN directors d ON a.first_name = d.first_name and a.last_name = d.last_name


-- First last names dob from directors and actors
SELECT first_name, last_name, date_of_birth FROM actors
UNION ALL
SELECT first_name, last_name, date_of_birth FROM directors
ORDER BY date_of_birth ASC


-- First and last name of actors and directors born in the 60's sorted by last name
-- 6th row: Tom Cruise
SELECT first_name, last_name, date_of_birth FROM actors
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
UNION ALL
SELECT first_name, last_name, date_of_birth FROM directors
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY last_name ASC


SELECT first_name from actors
EXCEPT
SELECT first_name from directors

--intersect first, last name, dob in directors and actors
SELECT first_name, last_name, date_of_birth FROM actors
INTERSECT
SELECT first_name, last_name, date_of_birth FROM directors


-- first, last, dob of directors and actors
SELECT first_name from actors
WHERE gender = 'M'
EXCEPT
SELECT first_name from directors
WHERE nationality = 'British'

SELECT movie_name, movie_length from movies
WHERE movie_length > 
	(select AVG(movie_length) from movies)
ORDER BY movie_length

SELECT first_name, last_name, date_of_birth FROM directors
WHERE date_of_birth >
	(SELECT date_of_birth from directors WHERE first_name = 'Sam')
ORDER BY date_of_birth

-- first last names of actors older than marlon brando
-- 1924-04-03
SELECT first_name, last_name, date_of_birth FROM actors
WHERE date_of_birth <
	(SELECT date_of_birth FROM actors WHERE first_name='Marlon' and last_name='Brando')

-- movie names of all movies with domestic takings above 300m
SELECT movie_name from movies
WHERE movie_id IN(
	SELECT movie_id FROM movie_revenues WHERE domestic_takings < 300000000)

-- Shortest and longest movie length for movies with above average domestic takings
-- min 91, max 165
SELECT MIN(movie_length), MAX(movie_length) FROM movies
WHERE movie_id IN(
	SELECT movie_id FROM movie_revenues
	WHERE domestic_takings >
		(SELECT AVG(domestic_takings) FROM movie_revenues))

SELECT d.first_name, d.last_name, d.date_of_birth, d.nationality
FROM directors d
WHERE d.date_of_birth = 
	( SELECT MIN(date_of_birth) FROM directors d2
	 WHERE d2.nationality = d.nationality
	)
ORDER BY nationality


-- Movies with movie length as the max movie_length for each movie lang
SELECT m.movie_length, m.movie_lang FROM movies m
WHERE m.movie_length = (
	SELECT MAX(movie_length) FROM movies m2
	WHERE m.movie_lang = m2.movie_lang
)

-- first, last, dob for oldest actor of each gender
-- HOW TO COMBINE???

SELECT MIN(date_of_birth), first_name, last_name FROM actors 
WHERE gender = 'M' 


SELECT MIN(date_of_birth), first_name, last_name FROM actors
WHERE gender = 'F' 

-- movie name, mov len, age cert for movies with above avg length of age cert
-- WATCHMAN
SELECT m.movie_name, m.movie_length, m.age_certificate FROM movies m
WHERE m.movie_length > (
	SELECT AVG(movie_length) FROM movies m2
	WHERE m2.age_certificate = m.age_certificate
	
)
ORDER BY m.age_certificate









