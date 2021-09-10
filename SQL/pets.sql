CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city	VARCHAR(30),
	state CHAR(2),
	email VARCHAR(50)
)

select * from testing

DROP TABLE testing

CREATE TABLE testing (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30)
)

ALTER TABLE testing
ADD COLUMN email VARCHAR(30) UNIQUE

ALTER TABLE testing
Alter COLUMN email SET NOT NULL

-- update
UPDATE testing
SET email='ciridal@yahoo.com'
where id=1

-- pick all the ones that match this
SELECT id, first_name FROM testing
where email='something'
-- OR where email='%ese' (underscore is for if you know the exact num of letters before it)




CREATE TABLE pets (
	id SERIAL PRIMARY KEY,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT,
	owner_id INT
)

INSERT INTO pets (species, full_name, age, owner_id) VALUES
(species, full_name, age, owner_id),
("Speciess", "Mr Fluffy Pants", "4", "7")

select * from pets