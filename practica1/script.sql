SELECT * FROM film;
SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM city;

-- Selecionar
SELECT first_name, last_name FROM actor;

-- Usando SELECT DISTINCT
SELECT DISTINCT (rental_rate) FROM film;
SELECT DISTINCT * FROM rental;
SELECT DISTINCT first_name, last_name FROM actor;

--Usando COUNT
SELECT COUNT(*) FROM city;
SELECT DISTINCT COUNT(first_name) FROM actor;