-- PART A
-- 1
SELECT movie_name, movie_lang from movies
where movie_lang IN ('English', 'Spanish', 'Korean')

-- 2
SELECT first_name, last_name from actors
where last_name LIKE 'M%' AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31'

-- 3
SELECT first_name, last_name from directors
where nationality IN ('British', 'French', 'German') AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31' 

--PART B
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

-- PART C
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