SELECT * From film

-- Usando BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 2 AND 5;

-- Usando LIKE
SELECT first_name From customer
WHERE first_name LIKE 'J%';

SELECT first_name From customer
WHERE first_name LIKE '%es';

SELECT first_name, last_name FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE '%S';

SELECT email From customer
WHERE first_name LIKE '%h';

SELECT title, description From film
WHERE description LIKE 'From%';

SELECT title, description FROM film
WHERE title LIKE 'Airport%';

SELECT title, description FROM film
WHERE title LIKE 'Airport%';

-- Usando funciones
SELECT * FROM payment
WHERE amount BETWEEN 1 AND 7;

SELECT store_id From customer
GROUP BY store_id;

SELECT customer_id, SUM(amount) From payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, SUM(amount) From payment
GROUP BY SUM(amount)
ORDER BY SUM(amount) DESC;

SELECT customer_id, AVG(amount) From payment
GROUP BY customer_id

--Selecionar el valor más alto de la columna 'amount'
SELECT MAX(amount), MIN(amount), AVG(amount) From payment;

SELECT customer_id, SUM(amount) From payment
GROUP BY customer_id
HAVING SUM(amount) > 200
ORDER BY SUM(amount) DESC;
